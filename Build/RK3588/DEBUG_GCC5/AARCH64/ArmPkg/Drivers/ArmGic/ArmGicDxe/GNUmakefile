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
MODULE_NAME = ArmGicDxe
MODULE_GUID = DE371F7C-DEC4-4D21-ADF1-593ABCC15882
MODULE_NAME_GUID = ArmGicDxe
MODULE_VERSION = 1.0
MODULE_TYPE = DXE_DRIVER
MODULE_FILE = ArmGicDxe.inf
MODULE_FILE_BASE_NAME = ArmGicDxe
BASE_NAME = $(MODULE_NAME)
MODULE_RELATIVE_DIR = ArmPkg/Drivers/ArmGic
PACKAGE_RELATIVE_DIR = Drivers/ArmGic
MODULE_DIR = /home/daijh/sdk/rk3588/uefi/edk2/ArmPkg/Drivers/ArmGic
FFS_OUTPUT_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/FV/Ffs/DE371F7C-DEC4-4D21-ADF1-593ABCC15882ArmGicDxe

MODULE_ENTRY_POINT = InterruptDxeInitialize
ARCH_ENTRY_POINT = InterruptDxeInitialize
IMAGE_ENTRY_POINT = _ModuleEntryPoint

INF_VERSION = 0x00010005
BASE_NAME = ArmGicDxe
FILE_GUID = DE371F7C-DEC4-4D21-ADF1-593ABCC15882
MODULE_TYPE = DXE_DRIVER
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
MODULE_BUILD_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe
OUTPUT_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT
DEBUG_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/DEBUG
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
    $(OUTPUT_DIR)/ArmGicCommonDxe.obj \
    $(OUTPUT_DIR)/ArmGicDxe.obj \
    $(OUTPUT_DIR)/AutoGen.obj \
    $(OUTPUT_DIR)/GicV2/ArmGicV2Dxe.obj \
    $(OUTPUT_DIR)/GicV3/ArmGicV3Dxe.obj

STATIC_LIBRARY_FILES =  \
    $(BIN_DIR)/ArmPkg/Drivers/ArmGic/ArmGicLib/OUTPUT/ArmGicLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmGicArchLib/ArmGicArchLib/OUTPUT/ArmGicArchLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/OUTPUT/ArmBaseLib.lib \
    $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/OUTPUT/CompilerIntrinsicsLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/OUTPUT/BaseDebugLibSerialPort.lib \
    $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/OUTPUT/BaseDebugPrintErrorLevelLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic/OUTPUT/BaseIoLibIntrinsic.lib \
    $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/OUTPUT/BaseLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseMemoryLibOptDxe/BaseMemoryLibOptDxe/OUTPUT/BaseMemoryLibOptDxe.lib \
    $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/OUTPUT/BasePrintLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/OUTPUT/BaseStackCheckLib.lib \
    $(BIN_DIR)/MdePkg/Library/DxePcdLib/DxePcdLib/OUTPUT/DxePcdLib.lib \
    $(BIN_DIR)/MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull/OUTPUT/FilterLibNull.lib \
    $(BIN_DIR)/MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib/OUTPUT/UefiBootServicesTableLib.lib \
    $(BIN_DIR)/MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib/OUTPUT/UefiDevicePathLib.lib \
    $(BIN_DIR)/MdePkg/Library/UefiDriverEntryPoint/UefiDriverEntryPoint/OUTPUT/UefiDriverEntryPoint.lib \
    $(BIN_DIR)/MdePkg/Library/UefiLib/UefiLib/OUTPUT/UefiLib.lib \
    $(BIN_DIR)/MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib/OUTPUT/UefiMemoryAllocationLib.lib \
    $(BIN_DIR)/MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib/OUTPUT/UefiRuntimeServicesTableLib.lib \
    $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/SerialPortLib/OUTPUT/SerialPortLib.lib \
    $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/UartLib/OUTPUT/UartLib.lib \
    $(OUTPUT_DIR)/ArmGicDxe.lib

INC =  \
    -I$(WORKSPACE)/edk2/ArmPkg/Drivers/ArmGic/GicV3 \
    -I$(WORKSPACE)/edk2/ArmPkg/Drivers/ArmGic/GicV2 \
    -I$(WORKSPACE)/edk2/ArmPkg/Drivers/ArmGic \
    -I$(DEBUG_DIR) \
    -I$(WORKSPACE)/edk2/MdePkg \
    -I$(WORKSPACE)/edk2/MdePkg/Include \
    -I$(WORKSPACE)/edk2/MdePkg/Test/UnitTest/Include \
    -I$(WORKSPACE)/edk2/MdePkg/Include/AArch64 \
    -I$(WORKSPACE)/edk2/EmbeddedPkg \
    -I$(WORKSPACE)/edk2/EmbeddedPkg/Include \
    -I$(WORKSPACE)/edk2/ArmPkg \
    -I$(WORKSPACE)/edk2/ArmPkg/Include \
    -I$(WORKSPACE)/edk2-platforms/Silicon/Rockchip/RK3588/Include \
    -I$(WORKSPACE)/edk2-platforms/Platform/Rockchip/RK3588/Include \
    -I$(WORKSPACE)/edk2-platforms/Silicon/Rockchip/Include

OBJECT_FILES_LIST = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/object_files.lst
STATIC_LIBRARY_FILES_LIST = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/static_library_files.lst


#
# Overridable Target Macro Definitions
#
FORCE_REBUILD = force_build
INIT_TARGET = init
PCH_TARGET =
BC_TARGET = 
CODA_TARGET = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/ArmGicDxe.efi \
              $(FFS_OUTPUT_DIR)/$(MODULE_GUID).map \
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
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseMemoryLibOptDxe/BaseMemoryLibOptDxe/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/DxePcdLib/DxePcdLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/UartLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/SerialPortLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Drivers/ArmGic/ArmGicLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmGicArchLib/ArmGicArchLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/UefiLib/UefiLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/UefiDriverEntryPoint/UefiDriverEntryPoint/GNUmakefile
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
$(OUTPUT_DIR)/GicV3/ArmGicV3Dxe.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/GicV3/ArmGicV3Dxe.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/GicV3/ArmGicV3Dxe.obj : $(WORKSPACE)/edk2/ArmPkg/Drivers/ArmGic/GicV3/ArmGicV3Dxe.c
	"$(CC)" $(DEPS_FLAGS) $(CC_FLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/GicV3/ArmGicV3Dxe.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/ArmPkg/Drivers/ArmGic/GicV3/ArmGicV3Dxe.c

$(OUTPUT_DIR)/GicV2/ArmGicV2Dxe.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/GicV2/ArmGicV2Dxe.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/GicV2/ArmGicV2Dxe.obj : $(WORKSPACE)/edk2/ArmPkg/Drivers/ArmGic/GicV2/ArmGicV2Dxe.c
	"$(CC)" $(DEPS_FLAGS) $(CC_FLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/GicV2/ArmGicV2Dxe.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/ArmPkg/Drivers/ArmGic/GicV2/ArmGicV2Dxe.c

$(OUTPUT_DIR)/ArmGicDxe.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/ArmGicDxe.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/ArmGicDxe.obj : $(WORKSPACE)/edk2/ArmPkg/Drivers/ArmGic/ArmGicDxe.c
	"$(CC)" $(DEPS_FLAGS) $(CC_FLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/./ArmGicDxe.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/ArmPkg/Drivers/ArmGic/ArmGicDxe.c

$(OUTPUT_DIR)/AutoGen.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/AutoGen.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/AutoGen.obj : $(DEBUG_DIR)/AutoGen.c
	"$(CC)" $(DEPS_FLAGS) $(CC_FLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/./AutoGen.obj $(INC) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/DEBUG/AutoGen.c

$(OUTPUT_DIR)/ArmGicCommonDxe.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/ArmGicCommonDxe.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/ArmGicCommonDxe.obj : $(WORKSPACE)/edk2/ArmPkg/Drivers/ArmGic/ArmGicCommonDxe.c
	"$(CC)" $(DEPS_FLAGS) $(CC_FLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/./ArmGicCommonDxe.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/ArmPkg/Drivers/ArmGic/ArmGicCommonDxe.c

$(OUTPUT_DIR)/ArmGicDxe.lib : $(OBJECT_FILES)
$(OUTPUT_DIR)/ArmGicDxe.lib : $(OBJECT_FILES_LIST)
	$(RM) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/ArmGicDxe.lib
	"$(SLINK)" cr /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/ArmGicDxe.lib $(SLINK_FLAGS) @$(OBJECT_FILES_LIST)

$(DEBUG_DIR)/ArmGicDxe.dll : $(MAKE_FILE)
$(DEBUG_DIR)/ArmGicDxe.dll : $(STATIC_LIBRARY_FILES)
$(DEBUG_DIR)/ArmGicDxe.dll : $(STATIC_LIBRARY_FILES_LIST)
	"$(DLINK)" -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/DEBUG/ArmGicDxe.dll $(DLINK_FLAGS) -Wl,--start-group,@$(STATIC_LIBRARY_FILES_LIST),--end-group $(CC_FLAGS) $(DLINK2_FLAGS)
	"$(OBJCOPY)" $(OBJCOPY_FLAGS) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/DEBUG/ArmGicDxe.dll

$(OUTPUT_DIR)/ArmGicDxe.efi : $(DEBUG_DIR)/ArmGicDxe.dll
	$(CP) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/DEBUG/ArmGicDxe.dll $(DEBUG_DIR)/$(MODULE_NAME).debug
	$(OBJCOPY) --strip-unneeded -R .eh_frame /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/DEBUG/ArmGicDxe.dll
	-$(OBJCOPY) $(OBJCOPY_ADDDEBUGFLAG) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/DEBUG/ArmGicDxe.dll
	-$(CP) $(DEBUG_DIR)/$(MODULE_NAME).debug $(BIN_DIR)/$(MODULE_NAME_GUID).debug
	"$(GENFW)" -e $(MODULE_TYPE) -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/ArmGicDxe.efi /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/DEBUG/ArmGicDxe.dll $(GENFW_FLAGS)
	$(CP) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/ArmGicDxe.efi $(DEBUG_DIR)
	$(CP) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/ArmPkg/Drivers/ArmGic/ArmGicDxe/OUTPUT/ArmGicDxe.efi $(BIN_DIR)/$(MODULE_NAME_GUID).efi
	-$(CP) $(DEBUG_DIR)/*.map $(OUTPUT_DIR)

$(FFS_OUTPUT_DIR)/$(MODULE_GUID).map : $(OUTPUT_DIR)/ArmGicDxe.map
	test -f $(OUTPUT_DIR)/ArmGicDxe.map && $(CP) $(OUTPUT_DIR)/ArmGicDxe.map $(FFS_OUTPUT_DIR)/$(MODULE_GUID).map
$(FFS_OUTPUT_DIR)/$(MODULE_GUID).ffs : $(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC1.1.dpx $(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC2.1.pe32 $(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC3.ui
	GenFfs -t EFI_FV_FILETYPE_DRIVER -g $(MODULE_GUID) -o $(FFS_OUTPUT_DIR)/$(MODULE_GUID).ffs -oi $(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC1.1.dpx -oi $(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC2.1.pe32 -oi $(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC3.ui
$(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC1.1.dpx : $(OUTPUT_DIR)/ArmGicDxe.depex
	-test -e $(OUTPUT_DIR)/ArmGicDxe.depex && GenSec -s EFI_SECTION_DXE_DEPEX -o $(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC1.1.dpx $(OUTPUT_DIR)/ArmGicDxe.depex
$(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC2.1.pe32 : $(OUTPUT_DIR)/ArmGicDxe.efi
	-test -e $(OUTPUT_DIR)/ArmGicDxe.efi && GenSec -s EFI_SECTION_PE32 -o $(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC2.1.pe32 $(OUTPUT_DIR)/ArmGicDxe.efi
$(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC3.ui : $(MODULE_DIR)/$(MODULE_FILE)
	GenSec -s EFI_SECTION_USER_INTERFACE -n $(MODULE_NAME) -o $(FFS_OUTPUT_DIR)/$(MODULE_GUID)SEC3.ui


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
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseMemoryLibOptDxe/BaseMemoryLibOptDxe/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseMemoryLibOptDxe/BaseMemoryLibOptDxe/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/DxePcdLib/DxePcdLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/DxePcdLib/DxePcdLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/UartLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/UartLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/SerialPortLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/SerialPortLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Drivers/ArmGic/ArmGicLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Drivers/ArmGic/ArmGicLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmGicArchLib/ArmGicArchLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmGicArchLib/ArmGicArchLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/UefiLib/UefiLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/UefiLib/UefiLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/UefiDriverEntryPoint/UefiDriverEntryPoint/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/UefiDriverEntryPoint/UefiDriverEntryPoint/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/GNUmakefile cleanall
	@cd $(MODULE_BUILD_DIR)

