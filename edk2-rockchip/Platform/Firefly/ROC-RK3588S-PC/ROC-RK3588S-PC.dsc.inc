## @file
#
#  Copyright (c) 2014-2018, Linaro Limited. All rights reserved.
#  Copyright (c) 2023-2024, Mario Bălănică <mariobalanica02@gmail.com>
#
#  SPDX-License-Identifier: BSD-2-Clause-Patent
#
##

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  FLASH_DEFINITION               = Silicon/Rockchip/RK3588/RK3588.fdf
  RK_PLATFORM_FVMAIN_MODULES     = Platform/Firefly/ROC-RK3588S-PC/ROC-RK3588S-PC.Modules.fdf.inc

  #
  # HYM8563 RTC support
  # I2C location configured by PCDs below.
  #
  DEFINE RK_RTC8563_ENABLE = TRUE

  # This is an AArch64 platform. Do not emulate x64 EFI applications: Linux
  # and Windows images supported by this board must use their AA64 boot files.
  DEFINE RK_X86_EMULATOR_ENABLE = FALSE

  #
  # RK3588S-based platform
  #
!include Silicon/Rockchip/RK3588/RK3588SPlatform.dsc.inc

################################################################################
#
# Library Class section - list of all Library Classes needed by this Platform.
#
################################################################################

[LibraryClasses.common]
  RockchipPlatformLib|Platform/Firefly/ROC-RK3588S-PC/Library/RockchipPlatformLib/RockchipPlatformLib.inf

################################################################################
#
# Pcd Section - list of all EDK II PCD Entries defined by this Platform.
#
################################################################################

[PcdsFixedAtBuild.common]
  # SMBIOS platform config
  gRockchipTokenSpaceGuid.PcdBoardName|"ROC-RK3588S-PC"
  gRockchipTokenSpaceGuid.PcdBoardVendorName|"Firefly"

  # I2C
  gRockchipTokenSpaceGuid.PcdI2cSlaveAddresses|{ 0x42, 0x43, 0x51, 0x11 }
  gRockchipTokenSpaceGuid.PcdI2cSlaveBuses|{ 0x0, 0x0, 0x2, 0x3 }
  gRockchipTokenSpaceGuid.PcdI2cSlaveBusesRuntimeSupport|{ FALSE, FALSE, TRUE, FALSE }
  gRockchipTokenSpaceGuid.PcdRk860xRegulatorAddresses|{ 0x42, 0x43 }
  gRockchipTokenSpaceGuid.PcdRk860xRegulatorBuses|{ 0x0, 0x0 }
  gRockchipTokenSpaceGuid.PcdRk860xRegulatorTags|{ $(SCMI_CLK_CPUB01), $(SCMI_CLK_CPUB23) }
  gPcf8563RealTimeClockLibTokenSpaceGuid.PcdI2cSlaveAddress|0x51
  gRockchipTokenSpaceGuid.PcdRtc8563Bus|0x2

  #
  # PCIe/SATA/USB Combo PIPE PHY support flags and default values
  #
  gRK3588TokenSpaceGuid.PcdComboPhy0Switchable|TRUE
  # Combo PHY2 is wired to the USB3 host on this board, so keep it fixed to
  # USB3 and ignore stale setup variables that could enable unused PCI domain 3.
  gRK3588TokenSpaceGuid.PcdComboPhy2Switchable|FALSE
  gRK3588TokenSpaceGuid.PcdComboPhy0ModeDefault|$(COMBO_PHY_MODE_PCIE)
  # The board routes M.2 NVMe through PCIe2x1l2 / Combo PHY0.
  # Combo PHY2 is used by the USB3 host, as in the Firefly BSP DTS.
  gRK3588TokenSpaceGuid.PcdComboPhy2ModeDefault|$(COMBO_PHY_MODE_USB3)

  #
  # Ubuntu 26.04 generic uses the upstream RK3588 Device Tree drivers for
  # thermal control. Keep ACPI available for Windows, but default to DT.
  #
  gRK3588TokenSpaceGuid.PcdConfigTableModeDefault|$(CONFIG_TABLE_MODE_FDT)
  gRK3588TokenSpaceGuid.PcdFdtCompatModeDefault|$(FDT_COMPAT_MODE_MAINLINE)

  #
  # USB/DP Combo PHY support flags and default values
  #
  gRK3588TokenSpaceGuid.PcdUsbDpPhy0Supported|TRUE
  gRK3588TokenSpaceGuid.PcdDp0LaneMux|{ 0x2, 0x3 }

  #
  # GMAC
  #
  gRK3588TokenSpaceGuid.PcdGmac1Supported|TRUE
  gRK3588TokenSpaceGuid.PcdGmac1TxDelay|0x43

  #
  # On-Board fan output
  #
  gRK3588TokenSpaceGuid.PcdHasOnBoardFanOutput|TRUE

  #
  # I2S
  #
  gRK3588TokenSpaceGuid.PcdI2S0Supported|TRUE

  #
  # Display support flags and default values
  #
  gRK3588TokenSpaceGuid.PcdDisplayConnectors|{CODE({
    VOP_OUTPUT_IF_HDMI0,
    VOP_OUTPUT_IF_DP0
  })}

################################################################################
#
# Components Section - list of all EDK II Modules needed by this Platform.
#
################################################################################
[Components.common]
  # ACPI Support
  Platform/Firefly/ROC-RK3588S-PC/AcpiTables/AcpiTables.inf

  # Device Tree Support
  Platform/Firefly/ROC-RK3588S-PC/DeviceTree/Mainline.inf

  # Splash screen logo
  $(VENDOR_DIRECTORY)/Drivers/LogoDxe/LogoDxe.inf

[PcdsDynamicHii.common.DEFAULT]
  # Full fan duty is the safe pre-OS default and remains fixed in ACPI mode.
  # Ubuntu takes over fan control through the Mainline DT thermal cooling map.
  gRK3588TokenSpaceGuid.PcdCoolingFanSpeed|L"CoolingFanSpeed"|gRK3588DxeFormSetGuid|0x0|100
