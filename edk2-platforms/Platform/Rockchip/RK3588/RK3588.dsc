#
#  Copyright (c) 2014-2018, Linaro Limited. All rights reserved.
#  Copyright (c) 2021-2022, Rockchip Limited. All rights reserved.
#
#  SPDX-License-Identifier: BSD-2-Clause-Patent
#

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  PLATFORM_NAME                  = RK3588
  PLATFORM_GUID                  = d080df36-45e7-11ec-9726-f42a7dcb925d
  PLATFORM_VERSION               = 0.2
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Rockchip/$(PLATFORM_NAME)/$(PLATFORM_NAME).fdf

  DEFINE CONFIG_NO_DEBUGLIB      = TRUE

  #
  # Network definition
  #
  DEFINE NETWORK_SNP_ENABLE             = FALSE
  DEFINE NETWORK_IP6_ENABLE             = FALSE
  DEFINE NETWORK_TLS_ENABLE             = FALSE
  DEFINE NETWORK_HTTP_BOOT_ENABLE       = FALSE
  DEFINE NETWORK_ISCSI_ENABLE           = FALSE
  DEFINE NETWORK_VLAN_ENABLE            = FALSE
!include Silicon/Rockchip/Rockchip.dsc.inc
!include MdePkg/MdeLibs.dsc.inc

[LibraryClasses.common]
  ArmLib|ArmPkg/Library/ArmLib/ArmBaseLib.inf
  AcpiLib|EmbeddedPkg/Library/AcpiLib/AcpiLib.inf
  ArmPlatformLib|Platform/Rockchip/RK3588/Library/RK3588Lib/RK3588Lib.inf
  RockchipPlatfromLib|Platform/Rockchip/RK3588/Library/RockchipPlatfromLib/RockchipPlatfromLib.inf
# CruLib|Silicon/Rockchip/Library/CruLib/CruLib.inf

  DmaLib|EmbeddedPkg/Library/NonCoherentDmaLib/NonCoherentDmaLib.inf

  CapsuleLib|MdeModulePkg/Library/DxeCapsuleLibNull/DxeCapsuleLibNull.inf
  UefiBootManagerLib|MdeModulePkg/Library/UefiBootManagerLib/UefiBootManagerLib.inf

  PlatformBootManagerLib|ArmPkg/Library/PlatformBootManagerLib/PlatformBootManagerLib.inf
  CustomizedDisplayLib|MdeModulePkg/Library/CustomizedDisplayLib/CustomizedDisplayLib.inf

  # UiApp dependencies
  ReportStatusCodeLib|MdeModulePkg/Library/DxeReportStatusCodeLib/DxeReportStatusCodeLib.inf
  FileExplorerLib|MdeModulePkg/Library/FileExplorerLib/FileExplorerLib.inf
  DxeServicesLib|MdePkg/Library/DxeServicesLib/DxeServicesLib.inf
  BootLogoLib|MdeModulePkg/Library/BootLogoLib/BootLogoLib.inf

  #SerialPortLib|ArmPlatformPkg/Library/PL011SerialPortLib/PL011SerialPortLib.inf
  #RealTimeClockLib|ArmPlatformPkg/Library/PL031RealTimeClockLib/PL031RealTimeClockLib.inf
  TimeBaseLib|EmbeddedPkg/Library/TimeBaseLib/TimeBaseLib.inf

  # USB Requirements
  UefiUsbLib|MdePkg/Library/UefiUsbLib/UefiUsbLib.inf

  # VariableRuntimeDxe Requirements
  SynchronizationLib|MdePkg/Library/BaseSynchronizationLib/BaseSynchronizationLib.inf
  AuthVariableLib|MdeModulePkg/Library/AuthVariableLibNull/AuthVariableLibNull.inf
  TpmMeasurementLib|MdeModulePkg/Library/TpmMeasurementLibNull/TpmMeasurementLibNull.inf
  VarCheckLib|MdeModulePkg/Library/VarCheckLib/VarCheckLib.inf

  AndroidBootImgLib|edk2/EmbeddedPkg/Library/AndroidBootImgLib/AndroidBootImgLib.inf
[LibraryClasses.common.SEC]
  PrePiLib|EmbeddedPkg/Library/PrePiLib/PrePiLib.inf
  ExtractGuidedSectionLib|EmbeddedPkg/Library/PrePiExtractGuidedSectionLib/PrePiExtractGuidedSectionLib.inf
  HobLib|EmbeddedPkg/Library/PrePiHobLib/PrePiHobLib.inf
  MemoryAllocationLib|EmbeddedPkg/Library/PrePiMemoryAllocationLib/PrePiMemoryAllocationLib.inf
  MemoryInitPeiLib|ArmPlatformPkg/MemoryInitPei/MemoryInitPeiLib.inf
  PlatformPeiLib|ArmPlatformPkg/PlatformPei/PlatformPeiLib.inf
  PrePiHobListPointerLib|ArmPlatformPkg/Library/PrePiHobListPointerLib/PrePiHobListPointerLib.inf
[BuildOptions]
  GCC:*_*_*_PLATFORM_FLAGS = -I$(WORKSPACE)/Silicon/Rockchip/RK3588/Include -I$(WORKSPACE)/Platform/Rockchip/RK3588/Include -I$(WORKSPACE)/Silicon/Rockchip/Include

################################################################################
#
# Pcd Section - list of all EDK II PCD Entries defined by this Platform
#
################################################################################

[PcdsFeatureFlag.common]
  #  If TRUE, Graphics Output Protocol will be installed on virtual handle created by ConsplitterDxe.
  #  It could be set FALSE to save size.
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutGopSupport|FALSE

[PcdsFixedAtBuild.common]
  gEfiMdePkgTokenSpaceGuid.PcdDefaultTerminalType|4

  gEfiMdeModulePkgTokenSpaceGuid.PcdFirmwareVersionString|L"Alpha"

  # System Memory (1GB)
  gArmTokenSpaceGuid.PcdSystemMemoryBase|0x00000000
  gArmTokenSpaceGuid.PcdSystemMemorySize|0x40000000

  # RK3588 CPU profile
  gArmPlatformTokenSpaceGuid.PcdCoreCount|4
  gArmPlatformTokenSpaceGuid.PcdClusterCount|1

  #
  # ARM PrimeCell
  #

  # I2C
  gRockchipTokenSpaceGuid.PcdI2cSlaveAddresses|{ 0x51 }
  gRockchipTokenSpaceGuid.PcdI2cSlaveBuses|{ 0x2 }
  gRockchipTokenSpaceGuid.PcdI2cControllersEnabled|{ 0x2 }
  gRockchipTokenSpaceGuid.PcdI2cClockFrequency|198000000
  gRockchipTokenSpaceGuid.PcdI2cBaudRate|100000
  gRockchipTokenSpaceGuid.PcdI2cBusCount|1
  gRockchipTokenSpaceGuid.PcdI2cDemoAddresses|{ 0x51 } #/* RTCYM8563TS 0x51@bus2 */
  gRockchipTokenSpaceGuid.PcdI2cDemoBuses|{ 0x2 }

  ## UART2 - Serial Terminal
  DEFINE SERIAL_BASE = 0xFEB50000 # UART2
  gEfiMdeModulePkgTokenSpaceGuid.PcdSerialRegisterBase|$(SERIAL_BASE)
  gEfiMdePkgTokenSpaceGuid.PcdUartDefaultBaudRate|1500000
  gEfiMdePkgTokenSpaceGuid.PcdUartDefaultDataBits|8
  gEfiMdePkgTokenSpaceGuid.PcdUartDefaultParity|1
  gEfiMdePkgTokenSpaceGuid.PcdUartDefaultStopBits|1

  ## SPI - SPI2 for test
  gRockchipTokenSpaceGuid.SpiTestBaseAddr|0xFEB20000
  gRockchipTokenSpaceGuid.SpiRK806BaseAddr|0xFEB20000
  ## PL031 RealTimeClock
  #gArmPlatformTokenSpaceGuid.PcdPL031RtcBase|0xF8003000

  ## NOR FLASH
  gRockchipTokenSpaceGuid.FspiBaseAddr|0xFE2B0000
  gRockchipTokenSpaceGuid.PcdSpiVariableOffset|0x3C0000
  #
  # ARM General Interrupt Controller
  #
  gArmTokenSpaceGuid.PcdGicDistributorBase|0xfe600000
  gArmTokenSpaceGuid.PcdGicInterruptInterfaceBase|0xfe600000
  gArmTokenSpaceGuid.PcdGicRedistributorsBase|0xfe680000

  gEfiMdePkgTokenSpaceGuid.PcdPlatformBootTimeOut|10

  # GUID of the UI app
  gEfiMdeModulePkgTokenSpaceGuid.PcdBootManagerMenuFile|{ 0x21, 0xaa, 0x2c, 0x46, 0x14, 0x76, 0x03, 0x45, 0x83, 0x6e, 0x8a, 0xb6, 0xf4, 0x66, 0x23, 0x31 }

  gEfiMdeModulePkgTokenSpaceGuid.PcdResetOnMemoryTypeInformationChange|FALSE

  gEmbeddedTokenSpaceGuid.PcdMetronomeTickPeriod|1000

  #
  # DW SD card controller
  #
  gDesignWareTokenSpaceGuid.PcdDwEmmcDxeBaseAddress|0xfe2c0000
  gDesignWareTokenSpaceGuid.PcdDwEmmcDxeClockFrequencyInHz|100000000
  gDesignWareTokenSpaceGuid.PcdDwPermitObsoleteDrivers|TRUE
  gDesignWareTokenSpaceGuid.PcdDwEmmcDxeFifoDepth|256
  #
  # SDHCI controller
  #
  gRockchipTokenSpaceGuid.PcdSdhciDxeBaseAddress|0xfe2e0000
  #
  #
  # Fastboot
  #
  gEmbeddedTokenSpaceGuid.PcdAndroidFastbootUsbVendorId|0x2207
  gEmbeddedTokenSpaceGuid.PcdAndroidFastbootUsbProductId|0x0001

  #
  # USB OHCI controller
  #
  gRockchipTokenSpaceGuid.PcdOhciBaseAddress|0xfc840000
  gRockchipTokenSpaceGuid.PcdNumOhciController|2
  gRockchipTokenSpaceGuid.PcdOhciSize|0x80000

  #
  # USB2 EHCI controller
  #
  gRockchipTokenSpaceGuid.PcdEhciBaseAddress|0xfc800000
  gRockchipTokenSpaceGuid.PcdNumEhciController|2
  gRockchipTokenSpaceGuid.PcdEhciSize|0x80000

  #
  # Android Loader
  #
  gRK3588TokenSpaceGuid.PcdAndroidBootDevicePath|L"\\EFI\\BOOT\\GRUBAA64.EFI"
  gRK3588TokenSpaceGuid.PcdSdBootDevicePath|L"VenHw(0D51905B-B77E-452A-A2C0-ECA0CC8D514A,00E023F70000000000)/SD(0x0)"
  gEmbeddedTokenSpaceGuid.PcdAndroidBootDevicePath|L"VenHw(100C2CFA-B586-4198-9B4C-1683D195B1DA)/HD(3,GPT,7A3F0000-0000-446A-8000-702F00006273,0x8000,0x20000)"

  #
  # Make VariableRuntimeDxe work at emulated non-volatile variable mode.
  #
  gEfiMdeModulePkgTokenSpaceGuid.PcdEmuVariableNvModeEnable|TRUE

[PcdsDynamicDefault.common]
  gEfiMdeModulePkgTokenSpaceGuid.PcdFlashNvStorageVariableBase64|0x803C0000
  gEfiMdeModulePkgTokenSpaceGuid.PcdFlashNvStorageFtwSpareBase64|0x803E0000
  gEfiMdeModulePkgTokenSpaceGuid.PcdFlashNvStorageFtwWorkingBase64|0x803D0000

# ACPI Enable
!ifdef $(ROCKCHIP_ACPIEN)
  gRK3588TokenSpaceGuid.AcpiEnable|TRUE
!endif
################################################################################
#
# Components Section - list of all EDK II Modules needed by this Platform
#
################################################################################
[Components.common]
  #
  # PEI Phase modules
  #
  ArmPlatformPkg/PrePi/PeiUniCore.inf
  MdeModulePkg/Core/Pei/PeiMain.inf
  MdeModulePkg/Universal/PCD/Pei/Pcd.inf

  #
  # DXE
  #
  MdeModulePkg/Core/Dxe/DxeMain.inf {
    <LibraryClasses>
      NULL|MdeModulePkg/Library/DxeCrc32GuidedSectionExtractLib/DxeCrc32GuidedSectionExtractLib.inf
  }

  #
  # Architectural Protocols
  #
  ArmPkg/Drivers/CpuDxe/CpuDxe.inf
  MdeModulePkg/Core/RuntimeDxe/RuntimeDxe.inf
  MdeModulePkg/Universal/SecurityStubDxe/SecurityStubDxe.inf
  MdeModulePkg/Universal/CapsuleRuntimeDxe/CapsuleRuntimeDxe.inf
  EmbeddedPkg/EmbeddedMonotonicCounter/EmbeddedMonotonicCounter.inf
  MdeModulePkg/Universal/ResetSystemRuntimeDxe/ResetSystemRuntimeDxe.inf
  #EmbeddedPkg/RealTimeClockRuntimeDxe/RealTimeClockRuntimeDxe.inf
  EmbeddedPkg/RealTimeClockRuntimeDxe/RealTimeClockRuntimeDxe.inf {
  <LibraryClasses>
    RealTimeClockLib|EmbeddedPkg/Library/VirtualRealTimeClockLib/VirtualRealTimeClockLib.inf
  }
  EmbeddedPkg/MetronomeDxe/MetronomeDxe.inf

  MdeModulePkg/Universal/Console/ConPlatformDxe/ConPlatformDxe.inf
  MdeModulePkg/Universal/Console/ConSplitterDxe/ConSplitterDxe.inf
  MdeModulePkg/Universal/Console/TerminalDxe/TerminalDxe.inf
  MdeModulePkg/Universal/SerialDxe/SerialDxe.inf

  MdeModulePkg/Universal/Variable/RuntimeDxe/VariableRuntimeDxe.inf
  MdeModulePkg/Universal/FaultTolerantWriteDxe/FaultTolerantWriteDxe.inf

  ArmPkg/Drivers/ArmGic/ArmGicDxe.inf
  ArmPkg/Drivers/TimerDxe/TimerDxe.inf

  MdeModulePkg/Universal/WatchdogTimerDxe/WatchdogTimer.inf

  MdeModulePkg/Universal/PCD/Dxe/Pcd.inf

  #
  # ACPI Support
  #
!ifdef $(ROCKCHIP_ACPIEN)
  MdeModulePkg/Universal/Acpi/AcpiTableDxe/AcpiTableDxe.inf
  Platform/Rockchip/RK3588/AcpiTables/AcpiTables.inf
!endif

  #
  # GPIO
  #
  Platform/Rockchip/RK3588/RK3588GpioDxe/RK3588GpioDxe.inf
  #ArmPlatformPkg/Drivers/PL061GpioDxe/PL061GpioDxe.inf

  #
  # Virtual Keyboard
  #
  EmbeddedPkg/Drivers/VirtualKeyboardDxe/VirtualKeyboardDxe.inf

  # Platform drivers
  Platform/Rockchip/RK3588/RK3588Dxe/RK3588Dxe.inf

  # I2C drivers
  Silicon/Rockchip/Drivers/I2c/I2cDxe/I2cDxe.inf
  MdeModulePkg/Bus/I2c/I2cDxe/I2cDxe.inf
  Silicon/Rockchip/Drivers/I2c/I2cDemoDxe/I2cDemoDxe.inf
  Silicon/Rockchip/Applications/I2cDemoTest/I2cDemoTest.inf

  #
  # MMC/SD
  #
  #EmbeddedPkg/Universal/MmcDxe/MmcDxe.inf
  #Silicon/Synopsys/DesignWare/Drivers/DwEmmcDxe/DwEmmcDxe.inf
  Silicon/Rockchip/Drivers/MmcDxe/MmcDxe.inf
  #Silicon/Rockchip/Drivers/DwEmmcDxe/DwEmmcDxe.inf
  Silicon/Rockchip/Drivers/SdhciHostDxe/SdhciHostDxe.inf

  #
  # NOR FLASH
  #
  Silicon/Rockchip/Drivers/NorFlashDxe/NorFlashDxe.inf
  Silicon/Rockchip/Drivers/NorFlashDxe/RkFvbDxe.inf
  Silicon/Rockchip/Applications/SpiTool/SpiFlashCmd.inf

  #
  # SPI TEST
  #
  # Silicon/Rockchip/Library/SpiLib/SpiTest.inf

  #
  # USB Ohci Controller
  #
  Silicon/Rockchip/Drivers/OhciDxe/OhciDxe.inf

  #
  # USB Ehci Controller
  #
  Silicon/Rockchip/Drivers/EhciDxe/EhciDxe.inf

  #
  # USB Host Support
  #
  MdeModulePkg/Bus/Usb/UsbBusDxe/UsbBusDxe.inf

  #
  # USB Mass Storage Support
  #
  MdeModulePkg/Bus/Usb/UsbMassStorageDxe/UsbMassStorageDxe.inf

  #
  # USB Kb Support
  #
  MdeModulePkg/Bus/Usb/UsbKbDxe/UsbKbDxe.inf

  #
  # USB Mouse Support
  #
  MdeModulePkg/Bus/Usb/UsbMouseDxe/UsbMouseDxe.inf

  #
  # USB MouseAbsolutePointer Support
  #
  MdeModulePkg/Bus/Usb/UsbMouseAbsolutePointerDxe/UsbMouseAbsolutePointerDxe.inf

  #
  # USB Peripheral Support
  #
  EmbeddedPkg/Drivers/AndroidFastbootTransportUsbDxe/FastbootTransportUsbDxe.inf

  #
  # Fastboot
  #
  EmbeddedPkg/Application/AndroidFastboot/AndroidFastbootApp.inf

  #
  # Android Boot applications
  #
  EmbeddedPkg/Application/AndroidBoot/AndroidBootApp.inf

  #
  # UEFI Network Stack
  #
!include NetworkPkg/Network.dsc.inc
  #
  # AX88772 Ethernet Driver
  #
  Drivers/ASIX/Bus/Usb/UsbNetworking/Ax88772c/Ax88772c.inf

  #
  # FAT filesystem + GPT/MBR partitioning
  #
  MdeModulePkg/Universal/Disk/DiskIoDxe/DiskIoDxe.inf
  MdeModulePkg/Universal/Disk/PartitionDxe/PartitionDxe.inf
  MdeModulePkg/Universal/Disk/UnicodeCollation/EnglishDxe/EnglishDxe.inf
  FatPkg/EnhancedFatDxe/Fat.inf

  #
  # Bds
  #
  MdeModulePkg/Universal/DevicePathDxe/DevicePathDxe.inf
  MdeModulePkg/Universal/HiiDatabaseDxe/HiiDatabaseDxe.inf {
    <LibraryClasses>
      PcdLib|MdePkg/Library/DxePcdLib/DxePcdLib.inf
  }
  MdeModulePkg/Universal/SetupBrowserDxe/SetupBrowserDxe.inf
  MdeModulePkg/Universal/DisplayEngineDxe/DisplayEngineDxe.inf
  MdeModulePkg/Universal/BdsDxe/BdsDxe.inf
  MdeModulePkg/Application/UiApp/UiApp.inf {
    <LibraryClasses>
      NULL|MdeModulePkg/Library/DeviceManagerUiLib/DeviceManagerUiLib.inf
      NULL|MdeModulePkg/Library/BootManagerUiLib/BootManagerUiLib.inf
      NULL|MdeModulePkg/Library/BootMaintenanceManagerUiLib/BootMaintenanceManagerUiLib.inf
      PcdLib|MdePkg/Library/DxePcdLib/DxePcdLib.inf
  }
  ShellPkg/Application/Shell/Shell.inf {
    <LibraryClasses>
      ShellCommandLib|ShellPkg/Library/UefiShellCommandLib/UefiShellCommandLib.inf
      NULL|ShellPkg/Library/UefiShellLevel2CommandsLib/UefiShellLevel2CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellLevel1CommandsLib/UefiShellLevel1CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellLevel3CommandsLib/UefiShellLevel3CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellDriver1CommandsLib/UefiShellDriver1CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellDebug1CommandsLib/UefiShellDebug1CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellInstall1CommandsLib/UefiShellInstall1CommandsLib.inf
      NULL|Silicon/Rockchip/Applications/I2cDemoTest/I2cDemoTest.inf
      NULL|Silicon/Rockchip/Applications/SpiTool/SpiFlashCmd.inf
      #NULL|ShellPkg/Library/UefiShellNetwork1CommandsLib/UefiShellNetwork1CommandsLib.inf
      HandleParsingLib|ShellPkg/Library/UefiHandleParsingLib/UefiHandleParsingLib.inf
      OrderedCollectionLib|MdePkg/Library/BaseOrderedCollectionRedBlackTreeLib/BaseOrderedCollectionRedBlackTreeLib.inf
      PrintLib|MdePkg/Library/BasePrintLib/BasePrintLib.inf
      BcfgCommandLib|ShellPkg/Library/UefiShellBcfgCommandLib/UefiShellBcfgCommandLib.inf
    <PcdsFixedAtBuild>
      gEfiMdePkgTokenSpaceGuid.PcdDebugPropertyMask|0xFF
      gEfiShellPkgTokenSpaceGuid.PcdShellLibAutoInitialize|FALSE
      gEfiMdePkgTokenSpaceGuid.PcdUefiLibMaxPrintBufferSize|8000
  }
!ifdef $(INCLUDE_TFTP_COMMAND)
  ShellPkg/DynamicCommand/TftpDynamicCommand/TftpDynamicCommand.inf
!endif #$(INCLUDE_TFTP_COMMAND)
