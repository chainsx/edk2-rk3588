#
# DO NOT EDIT
# This file is auto-generated by build utility
#
# Module Name:
#
#   GNUmakefile
#
# Abstract:
#
#   Auto-generated makefile for building modules, libraries or platform
#
    

#
# Platform Macro Definition
#
PLATFORM_NAME = RK3588
PLATFORM_GUID = d080df36-45e7-11ec-9726-f42a7dcb925d
PLATFORM_VERSION = 0.2
PLATFORM_RELATIVE_DIR = edk2-platforms/Platform/Rockchip/RK3588
PLATFORM_DIR = /home/daijh/sdk/rk3588/uefi/edk2-platforms/Platform/Rockchip/RK3588
PLATFORM_OUTPUT_DIR = Build/RK3588

#
# Module Macro Definition
#
MODULE_NAME = ArmPlatformPrePiUniCore
MODULE_GUID = 3e401783-cc94-4fcd-97bc-bd35ac369d2f
MODULE_NAME_GUID = ArmPlatformPrePiUniCore
MODULE_VERSION = 1.0
MODULE_TYPE = SEC
MODULE_FILE = PeiUniCore.inf
MODULE_FILE_BASE_NAME = PeiUniCore
BASE_NAME = $(MODULE_NAME)
MODULE_RELATIVE_DIR = ArmPlatformPkg/PrePi
PACKAGE_RELATIVE_DIR = PrePi
MODULE_DIR = /home/daijh/sdk/rk3588/uefi/edk2/ArmPlatformPkg/PrePi
FFS_OUTPUT_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/FV/Ffs/3e401783-cc94-4fcd-97bc-bd35ac369d2fArmPlatformPrePiUniCore

MODULE_ENTRY_POINT = _ModuleEntryPoint
ARCH_ENTRY_POINT = _ModuleEntryPoint
IMAGE_ENTRY_POINT = _ModuleEntryPoint

INF_VERSION = 0x00010005
BASE_NAME = ArmPlatformPrePiUniCore
FILE_GUID = 3e401783-cc94-4fcd-97bc-bd35ac369d2f
MODULE_TYPE = SEC
VERSION_STRING = 1.0

#
# Build Configuration Macro Definition
#
ARCH = AARCH64
TOOLCHAIN = GCC5
TOOLCHAIN_TAG = GCC5
TARGET = DEBUG

#
# Build Directory Macro Definition
#
# PLATFORM_BUILD_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5
BUILD_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5
BIN_DIR = $(BUILD_DIR)/AARCH64
LIB_DIR = $(BIN_DIR)
MODULE_BUILD_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore
OUTPUT_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT
DEBUG_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/DEBUG
DEST_DIR_OUTPUT = $(OUTPUT_DIR)
DEST_DIR_DEBUG = $(DEBUG_DIR)

#
# Shell Command Macro
#
CP = cp -f
MV = mv -f
RM = rm -f
MD = mkdir -p
RD = rm -r -f


#
# Tools definitions specific to this module
#
APP_FLAGS = 

ASL_FLAGS = 
ASL_OUTFLAGS =  -p
ASL = iasl

ASLCC_FLAGS = -x c -fno-lto
ASLCC = /home/daijh/sdk/rk3588/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc

ASLDLINK_FLAGS = -Wl,--emit-relocs -nostdlib -Wl,--gc-sections -u $(IMAGE_ENTRY_POINT) -Wl,-e,$(IMAGE_ENTRY_POINT),-Map,$(DEST_DIR_DEBUG)/$(BASE_NAME).map -z common-page-size=0x20 -Wl,--entry,ReferenceAcpiTable -u $(IMAGE_ENTRY_POINT) -Wl,--defsym=PECOFF_HEADER_SIZE=0 -Wl,--script=$(EDK_TOOLS_PATH)/Scripts/GccBase.lds -z common-page-size=0x20
ASLDLINK = /home/daijh/sdk/rk3588/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc

ASLPP_FLAGS = -x c -E -include AutoGen.h
ASLPP = /home/daijh/sdk/rk3588/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc

ASM_FLAGS = $(ARCHASM_FLAGS) $(PLATFORM_FLAGS) -c -x assembler -imacros AutoGen.h -mlittle-endian
ASM = /home/daijh/sdk/rk3588/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc

ASMLINK_FLAGS = /nologo /tiny
ASMLINK = bin16\link16.exe

BROTLI_GUID =  3D532050-5CDA-4FD0-879E-0F7F630D5AFB
BROTLI = BrotliCompress

CC_FLAGS = $(ARCHCC_FLAGS) $(PLATFORM_FLAGS) -g -Os -fshort-wchar -fno-builtin -fno-strict-aliasing -Wall -Werror -Wno-array-bounds -include AutoGen.h -fno-common -ffunction-sections -fdata-sections -DSTRING_ARRAY_NAME=$(BASE_NAME)Strings -g -Os -fshort-wchar -fno-builtin -fno-strict-aliasing -Wall -Werror -Wno-array-bounds -include AutoGen.h -fno-common -mlittle-endian -fno-short-enums -fverbose-asm -funsigned-char -ffunction-sections -fdata-sections -Wno-address -fno-asynchronous-unwind-tables -fno-unwind-tables -fno-pic -fno-pie -ffixed-x18 -mcmodel=small -flto -Wno-unused-but-set-variable -Wno-unused-const-variable
CC = /home/daijh/sdk/rk3588/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc
CC_XIPFLAGS =  -mstrict-align -mgeneral-regs-only

CRC32_GUID =  FC1BCDB0-7D31-49AA-936A-A4600D9DD083
CRC32 = GenCrc32

DEPS_FLAGS = -MMD -MF $@.deps

DLINK_FLAGS = -Wl,--emit-relocs -nostdlib -Wl,--gc-sections -u $(IMAGE_ENTRY_POINT) -Wl,-e,$(IMAGE_ENTRY_POINT),-Map,$(DEST_DIR_DEBUG)/$(BASE_NAME).map -z common-page-size=0x20 -z common-page-size=0x1000 -flto -Os -L/home/daijh/sdk/rk3588/uefi/edk2/ArmPkg/Library/GccLto -llto-aarch64 -Wl,-plugin-opt=-pass-through=-llto-aarch64 -Wno-lto-type-mismatch
DLINK = /home/daijh/sdk/rk3588/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc
DLINK_XIPFLAGS =  -z common-page-size=0x20

DLINK2_FLAGS = -Wl,--script=$(EDK_TOOLS_PATH)/Scripts/GccBase.lds -Wl,--defsym=PECOFF_HEADER_SIZE=0x228 -Wno-error

DTC_FLAGS = -H epapr
DTC = dtc

DTCPP_FLAGS = -E -x assembler-with-cpp -imacros AutoGen.h -nostdinc -undef
DTCPP = cpp

GENFW_FLAGS = 
GENFW = GenFw

LZMA_GUID =  EE4E5898-3914-4259-9D6E-DC7BD79403CF
LZMA = LzmaCompress

LZMAF86_GUID =  D42AE6BD-1352-4bfb-909A-CA72A6EAE889
LZMAF86 = LzmaF86Compress

MAKE = make

NASM = nasm

NASMB_FLAGS = -f bin

OBJCOPY_ADDDEBUGFLAG =  --add-gnu-debuglink=$(DEBUG_DIR)/$(MODULE_NAME).debug
OBJCOPY_FLAGS = objcopy not needed for
OBJCOPY = echo

OPTROM_FLAGS = -e
OPTROM = EfiRom

PKCS7SIGN_GUID =  4AAFD29D-68DF-49EE-8AA9-347D375665A7
PKCS7SIGN = Pkcs7Sign

PLATFORM_FLAGS =   

PP_FLAGS = $(ARCHCC_FLAGS) $(PLATFORM_FLAGS) -E -x assembler-with-cpp -include AutoGen.h -DOPENSBI_EXTERNAL_SBI_TYPES=OpensbiTypes.h
PP = /home/daijh/sdk/rk3588/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc

RC_FLAGS = -I binary -O elf64-littleaarch64 -B aarch64 --rename-section .data=.hii
RC = /home/daijh/sdk/rk3588/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-objcopy

RSA2048SHA256SIGN_GUID =  A7717414-C616-4977-9420-844712A735BF
RSA2048SHA256SIGN = Rsa2048Sha256Sign

SLINK = /home/daijh/sdk/rk3588/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc-ar

SYMRENAME_FLAGS = Symbol renaming not needed for
SYMRENAME = echo

TIANO_GUID =  A31280AD-481E-41B6-95E8-127F4C984779
TIANO = TianoCompress

VFR_FLAGS = -l -n
VFR = VfrCompile

VFRPP_FLAGS = $(ARCHCC_FLAGS) $(PLATFORM_FLAGS) -x c -E -P -DVFRCOMPILE --include $(MODULE_NAME)StrDefs.h
VFRPP = /home/daijh/sdk/rk3588/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc

VPDTOOL_GUID =  8C3D856A-9BE6-468E-850A-24F7A8D38E08
VPDTOOL = BPDG


MAKE_FILE = $(MODULE_BUILD_DIR)/GNUmakefile

#
# Build Macro
#
OBJECT_FILES =  \
    $(OUTPUT_DIR)/AArch64/ArchPrePi.obj \
    $(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj \
    $(OUTPUT_DIR)/AutoGen.obj \
    $(OUTPUT_DIR)/MainUniCore.obj \
    $(OUTPUT_DIR)/PrePi.obj

STATIC_LIBRARY_FILES =  \
    $(BIN_DIR)/ArmPkg/Library/ArmArchTimerLib/ArmArchTimerLib/OUTPUT/ArmArchTimerLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib/OUTPUT/ArmCacheMaintenanceLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmGenericTimerPhyCounterLib/ArmGenericTimerPhyCounterLib/OUTPUT/ArmGenericTimerPhyCounterLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/OUTPUT/ArmBaseLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmMmuLib/ArmMmuBaseLib/OUTPUT/ArmMmuBaseLib.lib \
    $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/OUTPUT/CompilerIntrinsicsLib.lib \
    $(BIN_DIR)/ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib/OUTPUT/DebugUnixPeCoffExtraActionLib.lib \
    $(BIN_DIR)/ArmPlatformPkg/Library/ArmPlatformStackLib/ArmPlatformStackLib/OUTPUT/ArmPlatformStackLib.lib \
    $(BIN_DIR)/ArmPlatformPkg/Library/PrePiHobListPointerLib/PrePiHobListPointerLib/OUTPUT/PrePiHobListPointerLib.lib \
    $(BIN_DIR)/ArmPlatformPkg/MemoryInitPei/MemoryInitPeiLib/OUTPUT/ArmMemoryInitPeiLib.lib \
    $(BIN_DIR)/ArmPlatformPkg/PlatformPei/PlatformPeiLib/OUTPUT/ArmPlatformPeiLib.lib \
    $(BIN_DIR)/EmbeddedPkg/Library/PrePiExtractGuidedSectionLib/PrePiExtractGuidedSectionLib/OUTPUT/PrePiExtractGuidedSectionLib.lib \
    $(BIN_DIR)/EmbeddedPkg/Library/PrePiHobLib/PrePiHobLib/OUTPUT/PrePiHobLib.lib \
    $(BIN_DIR)/EmbeddedPkg/Library/PrePiLib/PrePiLib/OUTPUT/PrePiLib.lib \
    $(BIN_DIR)/EmbeddedPkg/Library/PrePiMemoryAllocationLib/PrePiMemoryAllocationLib/OUTPUT/PrePiMemoryAllocationLib.lib \
    $(BIN_DIR)/MdeModulePkg/Library/DebugAgentLibNull/DebugAgentLibNull/OUTPUT/DebugAgentLibNull.lib \
    $(BIN_DIR)/MdeModulePkg/Library/LzmaCustomDecompressLib/LzmaCustomDecompressLib/OUTPUT/LzmaDecompressLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/OUTPUT/BaseDebugLibSerialPort.lib \
    $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/OUTPUT/BaseDebugPrintErrorLevelLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic/OUTPUT/BaseIoLibIntrinsic.lib \
    $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/OUTPUT/BaseLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseMemoryLib/BaseMemoryLib/OUTPUT/BaseMemoryLib.lib \
    $(BIN_DIR)/MdePkg/Library/BasePcdLibNull/BasePcdLibNull/OUTPUT/BasePcdLibNull.lib \
    $(BIN_DIR)/MdePkg/Library/BasePeCoffLib/BasePeCoffLib/OUTPUT/BasePeCoffLib.lib \
    $(BIN_DIR)/MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull/OUTPUT/BasePerformanceLibNull.lib \
    $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/OUTPUT/BasePrintLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/OUTPUT/BaseStackCheckLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib/OUTPUT/BaseUefiDecompressLib.lib \
    $(BIN_DIR)/MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull/OUTPUT/FilterLibNull.lib \
    $(BIN_DIR)/Platform/Rockchip/RK3588/Library/RK3588Lib/RK3588Lib/OUTPUT/RK3588Lib.lib \
    $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/SerialPortLib/OUTPUT/SerialPortLib.lib \
    $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/UartLib/OUTPUT/UartLib.lib \
    $(OUTPUT_DIR)/ArmPlatformPrePiUniCore.lib

INC =  \
    -I$(WORKSPACE)/edk2/ArmPlatformPkg/PrePi/AArch64 \
    -I$(WORKSPACE)/edk2/ArmPlatformPkg/PrePi \
    -I$(DEBUG_DIR) \
    -I$(WORKSPACE)/edk2/MdePkg \
    -I$(WORKSPACE)/edk2/MdePkg/Include \
    -I$(WORKSPACE)/edk2/MdePkg/Test/UnitTest/Include \
    -I$(WORKSPACE)/edk2/MdePkg/Include/AArch64 \
    -I$(WORKSPACE)/edk2/MdeModulePkg \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Include \
    -I$(WORKSPACE)/edk2/EmbeddedPkg \
    -I$(WORKSPACE)/edk2/EmbeddedPkg/Include \
    -I$(WORKSPACE)/edk2/ArmPkg \
    -I$(WORKSPACE)/edk2/ArmPkg/Include \
    -I$(WORKSPACE)/edk2/ArmPlatformPkg \
    -I$(WORKSPACE)/edk2/ArmPlatformPkg/Include \
    -I$(WORKSPACE)/edk2-platforms/Silicon/Rockchip/RK3588/Include \
    -I$(WORKSPACE)/edk2-platforms/Platform/Rockchip/RK3588/Include \
    -I$(WORKSPACE)/edk2-platforms/Silicon/Rockchip/Include

NASM_INC =  \
    -I$(WORKSPACE)/edk2/ArmPlatformPkg/PrePi/AArch64/ \
    -I$(WORKSPACE)/edk2/ArmPlatformPkg/PrePi/ \
    -I$(DEBUG_DIR)/ \
    -I$(WORKSPACE)/edk2/MdePkg/ \
    -I$(WORKSPACE)/edk2/MdePkg/Include/ \
    -I$(WORKSPACE)/edk2/MdePkg/Test/UnitTest/Include/ \
    -I$(WORKSPACE)/edk2/MdePkg/Include/AArch64/ \
    -I$(WORKSPACE)/edk2/MdeModulePkg/ \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Include/ \
    -I$(WORKSPACE)/edk2/EmbeddedPkg/ \
    -I$(WORKSPACE)/edk2/EmbeddedPkg/Include/ \
    -I$(WORKSPACE)/edk2/ArmPkg/ \
    -I$(WORKSPACE)/edk2/ArmPkg/Include/ \
    -I$(WORKSPACE)/edk2/ArmPlatformPkg/ \
    -I$(WORKSPACE)/edk2/ArmPlatformPkg/Include/ \
    -I$(WORKSPACE)/edk2-platforms/Silicon/Rockchip/RK3588/Include/ \
    -I$(WORKSPACE)/edk2-platforms/Platform/Rockchip/RK3588/Include/ \
    -I$(WORKSPACE)/edk2-platforms/Silicon/Rockchip/Include/

OBJECT_FILES_LIST = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/object_files.lst
STATIC_LIBRARY_FILES_LIST = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/static_library_files.lst
INC_LIST = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/inc.lst


#
# Overridable Target Macro Definitions
#
FORCE_REBUILD = force_build
INIT_TARGET = init
PCH_TARGET =
BC_TARGET = 
CODA_TARGET = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/ArmPlatformPrePiUniCore.efi \
              $(FFS_OUTPUT_DIR)/$(MODULE_GUID).map \
              $(FFS_OUTPUT_DIR)/$(MODULE_GUID).efi \
              $(FFS_OUTPUT_DIR)/$(MODULE_GUID).ffs \
              

#
# Default target, which will build dependent libraries in addition to source files
#

all: mbuild


#
# Target used when called from platform makefile, which will bypass the build of dependent libraries
#

pbuild: $(INIT_TARGET) $(BC_TARGET) $(PCH_TARGET) $(CODA_TARGET)

#
# ModuleTarget
#

mbuild: $(INIT_TARGET) $(BC_TARGET) gen_libs $(PCH_TARGET) $(CODA_TARGET)

#
# Build Target used in multi-thread build mode, which will bypass the init and gen_libs targets
#

tbuild: $(BC_TARGET) $(PCH_TARGET) $(CODA_TARGET)

#
# Phony target which is used to force executing commands for a target
#
force_build:
	-@

#
# Target to update the FD
#

fds: mbuild gen_fds

#
# Initialization target: print build information and create necessary directories
#
init: info dirs

info:
	-@echo Building ... $(MODULE_DIR)/$(MODULE_FILE) [$(ARCH)]

dirs:
	-@$(MD) $(DEBUG_DIR)
	-@$(MD) $(OUTPUT_DIR)


strdefs:
	-@$(CP) $(DEBUG_DIR)/AutoGen.h $(DEBUG_DIR)/$(MODULE_NAME)StrDefs.h

#
# GenLibsTarget
#
gen_libs:
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePcdLibNull/BasePcdLibNull/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseMemoryLib/BaseMemoryLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/UartLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/SerialPortLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPlatformPkg/Library/PrePiHobListPointerLib/PrePiHobListPointerLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmGenericTimerPhyCounterLib/ArmGenericTimerPhyCounterLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePeCoffLib/BasePeCoffLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiHobLib/PrePiHobLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiExtractGuidedSectionLib/PrePiExtractGuidedSectionLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmArchTimerLib/ArmArchTimerLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiLib/PrePiLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiMemoryAllocationLib/PrePiMemoryAllocationLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Platform/Rockchip/RK3588/Library/RK3588Lib/RK3588Lib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmMmuLib/ArmMmuBaseLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdeModulePkg/Library/DebugAgentLibNull/DebugAgentLibNull/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdeModulePkg/Library/LzmaCustomDecompressLib/LzmaCustomDecompressLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPlatformPkg/Library/ArmPlatformStackLib/ArmPlatformStackLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPlatformPkg/PlatformPei/PlatformPeiLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPlatformPkg/MemoryInitPei/MemoryInitPeiLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/GNUmakefile
	@cd $(MODULE_BUILD_DIR)

#
# Build Flash Device Image
#
gen_fds:
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BUILD_DIR)/GNUmakefile fds
	@cd $(MODULE_BUILD_DIR)

include $(MODULE_BUILD_DIR)/dependency
include $(MODULE_BUILD_DIR)/deps_target

#
# Individual Object Build Targets
#
$(OUTPUT_DIR)/MainUniCore.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/MainUniCore.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/MainUniCore.obj : $(WORKSPACE)/edk2/ArmPlatformPkg/PrePi/MainUniCore.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/./MainUniCore.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/ArmPlatformPkg/PrePi/MainUniCore.c

$(OUTPUT_DIR)/AutoGen.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/AutoGen.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/AutoGen.obj : $(DEBUG_DIR)/AutoGen.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/./AutoGen.obj $(INC) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/DEBUG/AutoGen.c

$(OUTPUT_DIR)/PrePi.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/PrePi.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/edk2/ArmPlatformPkg/PrePi/PrePi.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/./PrePi.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/ArmPlatformPkg/PrePi/PrePi.c

$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/edk2/ArmPlatformPkg/PrePi/AArch64/ArchPrePi.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/AArch64/ArchPrePi.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/ArmPlatformPkg/PrePi/AArch64/ArchPrePi.c

$(OUTPUT_DIR)/ArmPlatformPrePiUniCore.lib : $(OBJECT_FILES)
$(OUTPUT_DIR)/ArmPlatformPrePiUniCore.lib : $(OBJECT_FILES_LIST)
	$(RM) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/ArmPlatformPrePiUniCore.lib
	"$(SLINK)" cr /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/ArmPlatformPrePiUniCore.lib $(SLINK_FLAGS) @$(OBJECT_FILES_LIST)

$(DEBUG_DIR)/ArmPlatformPrePiUniCore.dll : $(MAKE_FILE)
$(DEBUG_DIR)/ArmPlatformPrePiUniCore.dll : $(STATIC_LIBRARY_FILES)
$(DEBUG_DIR)/ArmPlatformPrePiUniCore.dll : $(STATIC_LIBRARY_FILES_LIST)
	"$(DLINK)" -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/DEBUG/ArmPlatformPrePiUniCore.dll $(DLINK_FLAGS) $(DLINK_XIPFLAGS) -Wl,--start-group,@$(STATIC_LIBRARY_FILES_LIST),--end-group $(CC_FLAGS) $(CC_XIPFLAGS) $(DLINK2_FLAGS)
	"$(OBJCOPY)" $(OBJCOPY_FLAGS) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/DEBUG/ArmPlatformPrePiUniCore.dll

$(OUTPUT_DIR)/ArmPlatformPrePiUniCore.efi : $(DEBUG_DIR)/ArmPlatformPrePiUniCore.dll
	$(CP) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/DEBUG/ArmPlatformPrePiUniCore.dll $(DEBUG_DIR)/$(MODULE_NAME).debug
	$(OBJCOPY) --strip-unneeded -R .eh_frame /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/DEBUG/ArmPlatformPrePiUniCore.dll
	-$(OBJCOPY) $(OBJCOPY_ADDDEBUGFLAG) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/DEBUG/ArmPlatformPrePiUniCore.dll
	-$(CP) $(DEBUG_DIR)/$(MODULE_NAME).debug $(BIN_DIR)/$(MODULE_NAME_GUID).debug
	"$(GENFW)" -e $(MODULE_TYPE) -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/ArmPlatformPrePiUniCore.efi /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/DEBUG/ArmPlatformPrePiUniCore.dll $(GENFW_FLAGS)
	$(CP) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/ArmPlatformPrePiUniCore.efi $(DEBUG_DIR)
	$(CP) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/ArmPlatformPrePiUniCore.efi $(BIN_DIR)/$(MODULE_NAME_GUID).efi
	-$(CP) $(DEBUG_DIR)/*.map $(OUTPUT_DIR)

$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/edk2/ArmPlatformPkg/PrePi/AArch64/ModuleEntryPoint.S
	Trim --asm-file -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/AArch64/ModuleEntryPoint.i -i $(INC_LIST) /home/daijh/sdk/rk3588/uefi/edk2/ArmPlatformPkg/PrePi/AArch64/ModuleEntryPoint.S
	"$(PP)" $(DEPS_FLAGS) $(PP_FLAGS) $(INC) /home/daijh/sdk/rk3588/uefi/edk2/ArmPlatformPkg/PrePi/AArch64/ModuleEntryPoint.S > /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/AArch64/ModuleEntryPoint.ii
	Trim --trim-long --source-code -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/AArch64/ModuleEntryPoint.iiii /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/AArch64/ModuleEntryPoint.ii
	"$(ASM)" $(ASM_FLAGS) -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/AArch64/ModuleEntryPoint.obj $(INC) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPlatformPkg/PrePi/PeiUniCore/OUTPUT/AArch64/ModuleEntryPoint.iiii

$(FFS_OUTPUT_DIR)/$(MODULE_GUID).map : $(OUTPUT_DIR)/ArmPlatformPrePiUniCore.map
	test -f $(OUTPUT_DIR)/ArmPlatformPrePiUniCore.map && $(CP) $(OUTPUT_DIR)/ArmPlatformPrePiUniCore.map $(FFS_OUTPUT_DIR)/$(MODULE_GUID).map
$(FFS_OUTPUT_DIR)/$(MODULE_GUID).efi : $(OUTPUT_DIR)/ArmPlatformPrePiUniCore.efi
	test -f $(OUTPUT_DIR)/ArmPlatformPrePiUniCore.efi && $(CP) $(OUTPUT_DIR)/ArmPlatformPrePiUniCore.efi $(FFS_OUTPUT_DIR)/$(MODULE_GUID).efi
$(FFS_OUTPUT_DIR)/$(MODULE_GUID).ffs : $(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC1.1.te
	GenFfs -t EFI_FV_FILETYPE_SECURITY_CORE -g $(MODULE_GUID) -o $(FFS_OUTPUT_DIR)/$(MODULE_GUID).ffs -oi $(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC1.1.te -n 4K
$(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC1.1.te : $(FFS_OUTPUT_DIR)/$(MODULE_GUID)Te.raw
	-test -e $(FFS_OUTPUT_DIR)/$(MODULE_GUID)Te.raw && GenSec -s EFI_SECTION_TE -o $(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC1.1.te $(FFS_OUTPUT_DIR)/$(MODULE_GUID)Te.raw
$(FFS_OUTPUT_DIR)/$(MODULE_GUID)Te.raw : $(FFS_OUTPUT_DIR)/$(MODULE_GUID).stripped
	GenFw -t -o $(FFS_OUTPUT_DIR)/$(MODULE_GUID)Te.raw $(FFS_OUTPUT_DIR)/$(MODULE_GUID).stripped
$(FFS_OUTPUT_DIR)/$(MODULE_GUID).stripped : $(OUTPUT_DIR)/ArmPlatformPrePiUniCore.efi
	GenFw -l -o $(FFS_OUTPUT_DIR)/$(MODULE_GUID).stripped $(OUTPUT_DIR)/ArmPlatformPrePiUniCore.efi


#
# clean all intermediate files
#
clean:
	$(RD) $(OUTPUT_DIR)
		$(RM) AutoGenTimeStamp

#
# clean all generated files
#
cleanall:
	$(RD) $(DEBUG_DIR)
	$(RD) $(OUTPUT_DIR)
	$(RM) *.pdb *.idb > NUL 2>&1
	$(RM) $(BIN_DIR)/$(MODULE_NAME).efi
	$(RM) AutoGenTimeStamp

#
# clean all dependent libraries built
#
cleanlib:
	-@test -e $(BIN_DIR)/MdePkg/Library/BasePcdLibNull/BasePcdLibNull/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePcdLibNull/BasePcdLibNull/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseMemoryLib/BaseMemoryLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseMemoryLib/BaseMemoryLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/UartLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/UartLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/SerialPortLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/SerialPortLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPlatformPkg/Library/PrePiHobListPointerLib/PrePiHobListPointerLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPlatformPkg/Library/PrePiHobListPointerLib/PrePiHobListPointerLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmGenericTimerPhyCounterLib/ArmGenericTimerPhyCounterLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmGenericTimerPhyCounterLib/ArmGenericTimerPhyCounterLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BasePeCoffLib/BasePeCoffLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePeCoffLib/BasePeCoffLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/EmbeddedPkg/Library/PrePiHobLib/PrePiHobLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiHobLib/PrePiHobLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/EmbeddedPkg/Library/PrePiExtractGuidedSectionLib/PrePiExtractGuidedSectionLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiExtractGuidedSectionLib/PrePiExtractGuidedSectionLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmArchTimerLib/ArmArchTimerLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmArchTimerLib/ArmArchTimerLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/EmbeddedPkg/Library/PrePiLib/PrePiLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiLib/PrePiLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/EmbeddedPkg/Library/PrePiMemoryAllocationLib/PrePiMemoryAllocationLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiMemoryAllocationLib/PrePiMemoryAllocationLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/Platform/Rockchip/RK3588/Library/RK3588Lib/RK3588Lib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Platform/Rockchip/RK3588/Library/RK3588Lib/RK3588Lib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmMmuLib/ArmMmuBaseLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmMmuLib/ArmMmuBaseLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdeModulePkg/Library/DebugAgentLibNull/DebugAgentLibNull/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdeModulePkg/Library/DebugAgentLibNull/DebugAgentLibNull/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdeModulePkg/Library/LzmaCustomDecompressLib/LzmaCustomDecompressLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdeModulePkg/Library/LzmaCustomDecompressLib/LzmaCustomDecompressLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPlatformPkg/Library/ArmPlatformStackLib/ArmPlatformStackLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPlatformPkg/Library/ArmPlatformStackLib/ArmPlatformStackLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPlatformPkg/PlatformPei/PlatformPeiLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPlatformPkg/PlatformPei/PlatformPeiLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPlatformPkg/MemoryInitPei/MemoryInitPeiLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPlatformPkg/MemoryInitPei/MemoryInitPeiLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/GNUmakefile cleanall
	@cd $(MODULE_BUILD_DIR)

