/** @file
 *
 *  Copyright (c) 2024-2025, Mario Bălănică <mariobalanica02@gmail.com>
 *
 *  SPDX-License-Identifier: BSD-2-Clause-Patent
 *
 **/

#include <IndustryStandard/PeImage.h>
#include <Library/PeCoffGetEntryPointLib.h>

#include "ExitBootServicesHook.h"

STATIC CHAR8  *mOsTypeStrings[] = {
  [ExitBootServicesOsUnknown] = "Unknown",
  [ExitBootServicesOsWindows] = "Windows",
  [ExitBootServicesOsLinux]   = "Linux",
};
STATIC_ASSERT (ARRAY_SIZE (mOsTypeStrings) == ExitBootServicesOsMax);

#define LINUX_ARM64_MAGIC  0x644d5241
#define LINUX_PE_MAGIC     0x818223cd
#define LINUX_PE_MAGIC_OFFSET  0x38

STATIC
BOOLEAN
IsPeImageVmlinuz (
  IN VOID  *PeImage,
  IN UINTN  PeImageSize
  )
{
  UINT8  *Buf;

  if ((PeImage == NULL) || (PeImageSize < (LINUX_PE_MAGIC_OFFSET + sizeof (UINT32)))) {
    return FALSE;
  }

  Buf = PeImage;

  switch (*(UINT32 *)(Buf + 0x38)) {
    case LINUX_ARM64_MAGIC:
    case LINUX_PE_MAGIC:
      return TRUE;
  }

  return FALSE;
}

STATIC CHAR8  mWinLoadNameStr[] = "winload";
#define PDB_NAME_MAX_LENGTH  256

STATIC
BOOLEAN
IsValidPeImage (
  IN VOID  *PeImage,
  IN UINTN  PeImageSize
  )
{
  EFI_IMAGE_DOS_HEADER  *DosHdr;
  UINTN                 PeHeaderOffset;
  UINT8                 *PeHeader;

  if ((PeImage == NULL) || (PeImageSize < sizeof (EFI_IMAGE_DOS_HEADER))) {
    return FALSE;
  }

  DosHdr = PeImage;
  if (DosHdr->e_magic != EFI_IMAGE_DOS_SIGNATURE) {
    return FALSE;
  }

  PeHeaderOffset = (UINTN)DosHdr->e_lfanew;
  if (((PeHeaderOffset & (sizeof (UINT32) - 1)) != 0) ||
      (PeHeaderOffset > (PeImageSize - sizeof (UINT32))))
  {
    return FALSE;
  }

  PeHeader = (UINT8 *)PeImage + PeHeaderOffset;
  return (*(UINT32 *)PeHeader == EFI_IMAGE_NT_SIGNATURE);
}

STATIC
BOOLEAN
IsPeImageWinLoader (
  IN VOID  *PeImage,
  IN UINTN  PeImageSize
  )
{
  CHAR8  *PdbStr;
  UINTN  WinLoadNameStrLen;
  UINTN  Index;

  if (!IsValidPeImage (PeImage, PeImageSize)) {
    return FALSE;
  }

  PdbStr = (CHAR8 *)PeCoffLoaderGetPdbPointer (PeImage);
  if (PdbStr == NULL) {
    return FALSE;
  }

  WinLoadNameStrLen = sizeof (mWinLoadNameStr) - sizeof (CHAR8);

  for (Index = 0; Index < PDB_NAME_MAX_LENGTH && PdbStr[Index] != '\0'; Index++) {
    if (AsciiStrnCmp (PdbStr + Index, mWinLoadNameStr, WinLoadNameStrLen) == 0) {
      return TRUE;
    }
  }

  return FALSE;
}

EXIT_BOOT_SERVICES_OS_TYPE
IdentifyOsType (
  IN VOID  *OsLoaderImage,
  IN UINTN  OsLoaderImageSize
  )
{
  if (OsLoaderImage == NULL) {
    return ExitBootServicesOsUnknown;
  }

  if (IsPeImageVmlinuz (OsLoaderImage, OsLoaderImageSize)) {
    return ExitBootServicesOsLinux;
  }

  if (IsPeImageWinLoader (OsLoaderImage, OsLoaderImageSize)) {
    return ExitBootServicesOsWindows;
  }

  return ExitBootServicesOsUnknown;
}

CHAR8 *
OsTypeToString (
  IN EXIT_BOOT_SERVICES_OS_TYPE  OsType
  )
{
  if ((OsType < ExitBootServicesOsUnknown) || (OsType >= ExitBootServicesOsMax)) {
    ASSERT (FALSE);
    return mOsTypeStrings[ExitBootServicesOsUnknown];
  }

  return mOsTypeStrings[OsType];
}
