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
MODULE_NAME = PeiCore
MODULE_GUID = 52C05B14-0B98-496c-BC3B-04B50211D680
MODULE_NAME_GUID = PeiCore
MODULE_VERSION = 1.0
MODULE_TYPE = PEI_CORE
MODULE_FILE = PeiMain.inf
MODULE_FILE_BASE_NAME = PeiMain
BASE_NAME = $(MODULE_NAME)
MODULE_RELATIVE_DIR = MdeModulePkg/Core/Pei
PACKAGE_RELATIVE_DIR = Core/Pei
MODULE_DIR = /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei
FFS_OUTPUT_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/FV/Ffs/52C05B14-0B98-496c-BC3B-04B50211D680PeiCore

MODULE_ENTRY_POINT = PeiCore
ARCH_ENTRY_POINT = PeiCore
IMAGE_ENTRY_POINT = _ModuleEntryPoint

INF_VERSION = 0x00010005
BASE_NAME = PeiCore
MODULE_UNI_FILE = PeiCore.uni
FILE_GUID = 52C05B14-0B98-496c-BC3B-04B50211D680
MODULE_TYPE = PEI_CORE
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
MODULE_BUILD_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain
OUTPUT_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT
DEBUG_DIR = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/DEBUG
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
    $(OUTPUT_DIR)/AutoGen.obj \
    $(OUTPUT_DIR)/BootMode/BootMode.obj \
    $(OUTPUT_DIR)/CpuIo/CpuIo.obj \
    $(OUTPUT_DIR)/Dependency/Dependency.obj \
    $(OUTPUT_DIR)/Dispatcher/Dispatcher.obj \
    $(OUTPUT_DIR)/FwVol/FwVol.obj \
    $(OUTPUT_DIR)/Hob/Hob.obj \
    $(OUTPUT_DIR)/Image/Image.obj \
    $(OUTPUT_DIR)/Memory/MemoryServices.obj \
    $(OUTPUT_DIR)/PciCfg2/PciCfg2.obj \
    $(OUTPUT_DIR)/PeiMain/PeiMain.obj \
    $(OUTPUT_DIR)/Ppi/Ppi.obj \
    $(OUTPUT_DIR)/Reset/Reset.obj \
    $(OUTPUT_DIR)/Security/Security.obj \
    $(OUTPUT_DIR)/StatusCode/StatusCode.obj

STATIC_LIBRARY_FILES =  \
    $(BIN_DIR)/ArmPkg/Library/ArmArchTimerLib/ArmArchTimerLib/OUTPUT/ArmArchTimerLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib/OUTPUT/ArmCacheMaintenanceLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmGenericTimerPhyCounterLib/ArmGenericTimerPhyCounterLib/OUTPUT/ArmGenericTimerPhyCounterLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/OUTPUT/ArmBaseLib.lib \
    $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/OUTPUT/CompilerIntrinsicsLib.lib \
    $(BIN_DIR)/ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib/OUTPUT/DebugUnixPeCoffExtraActionLib.lib \
    $(BIN_DIR)/ArmPkg/Library/PeiServicesTablePointerLib/PeiServicesTablePointerLib/OUTPUT/PeiServicesTablePointerLib.lib \
    $(BIN_DIR)/MdeModulePkg/Library/OemHookStatusCodeLibNull/OemHookStatusCodeLibNull/OUTPUT/OemHookStatusCodeLibNull.lib \
    $(BIN_DIR)/MdeModulePkg/Library/PeiPerformanceLib/PeiPerformanceLib/OUTPUT/PeiPerformanceLib.lib \
    $(BIN_DIR)/MdeModulePkg/Library/PeiReportStatusCodeLib/PeiReportStatusCodeLib/OUTPUT/PeiReportStatusCodeLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/OUTPUT/BaseDebugLibSerialPort.lib \
    $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/OUTPUT/BaseDebugPrintErrorLevelLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic/OUTPUT/BaseIoLibIntrinsic.lib \
    $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/OUTPUT/BaseLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseMemoryLib/BaseMemoryLib/OUTPUT/BaseMemoryLib.lib \
    $(BIN_DIR)/MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib/OUTPUT/BasePeCoffGetEntryPointLib.lib \
    $(BIN_DIR)/MdePkg/Library/BasePeCoffLib/BasePeCoffLib/OUTPUT/BasePeCoffLib.lib \
    $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/OUTPUT/BasePrintLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/OUTPUT/BaseStackCheckLib.lib \
    $(BIN_DIR)/MdePkg/Library/PeiCoreEntryPoint/PeiCoreEntryPoint/OUTPUT/PeiCoreEntryPoint.lib \
    $(BIN_DIR)/MdePkg/Library/PeiHobLib/PeiHobLib/OUTPUT/PeiHobLib.lib \
    $(BIN_DIR)/MdePkg/Library/PeiMemoryAllocationLib/PeiMemoryAllocationLib/OUTPUT/PeiMemoryAllocationLib.lib \
    $(BIN_DIR)/MdePkg/Library/PeiPcdLib/PeiPcdLib/OUTPUT/PeiPcdLib.lib \
    $(BIN_DIR)/MdePkg/Library/PeiServicesLib/PeiServicesLib/OUTPUT/PeiServicesLib.lib \
    $(BIN_DIR)/MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull/OUTPUT/FilterLibNull.lib \
    $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/SerialPortLib/OUTPUT/SerialPortLib.lib \
    $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/UartLib/OUTPUT/UartLib.lib \
    $(OUTPUT_DIR)/PeiCore.lib

INC =  \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/PciCfg2 \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/CpuIo \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/BootMode \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Dependency \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Dispatcher \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/FwVol \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Hob \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Image \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Memory \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/PeiMain \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Ppi \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Reset \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Security \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/StatusCode \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Core/Pei \
    -I$(DEBUG_DIR) \
    -I$(WORKSPACE)/edk2/MdePkg \
    -I$(WORKSPACE)/edk2/MdePkg/Include \
    -I$(WORKSPACE)/edk2/MdePkg/Test/UnitTest/Include \
    -I$(WORKSPACE)/edk2/MdePkg/Include/AArch64 \
    -I$(WORKSPACE)/edk2/MdeModulePkg \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Include \
    -I$(WORKSPACE)/edk2/MdeModulePkg/Library/BrotliCustomDecompressLib/brotli/c/include \
    -I$(WORKSPACE)/edk2-platforms/Silicon/Rockchip/RK3588/Include \
    -I$(WORKSPACE)/edk2-platforms/Platform/Rockchip/RK3588/Include \
    -I$(WORKSPACE)/edk2-platforms/Silicon/Rockchip/Include

OBJECT_FILES_LIST = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/object_files.lst
STATIC_LIBRARY_FILES_LIST = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/static_library_files.lst


#
# Overridable Target Macro Definitions
#
FORCE_REBUILD = force_build
INIT_TARGET = init
PCH_TARGET =
BC_TARGET = 
CODA_TARGET = /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/PeiCore.efi \
              

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
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/PeiPcdLib/PeiPcdLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/PeiServicesTablePointerLib/PeiServicesTablePointerLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/PeiMemoryAllocationLib/PeiMemoryAllocationLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/PeiHobLib/PeiHobLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/PeiServicesLib/PeiServicesLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseMemoryLib/BaseMemoryLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/UartLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/SerialPortLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmGenericTimerPhyCounterLib/ArmGenericTimerPhyCounterLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdeModulePkg/Library/OemHookStatusCodeLibNull/OemHookStatusCodeLibNull/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmArchTimerLib/ArmArchTimerLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdeModulePkg/Library/PeiReportStatusCodeLib/PeiReportStatusCodeLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdeModulePkg/Library/PeiPerformanceLib/PeiPerformanceLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/PeiCoreEntryPoint/PeiCoreEntryPoint/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePeCoffLib/BasePeCoffLib/GNUmakefile
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
$(OUTPUT_DIR)/Dependency/Dependency.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/Dependency/Dependency.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/Dependency/Dependency.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Dependency/Dependency.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/Dependency/Dependency.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/Dependency/Dependency.c

$(OUTPUT_DIR)/BootMode/BootMode.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/BootMode/BootMode.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/BootMode/BootMode.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/BootMode/BootMode.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/BootMode/BootMode.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/BootMode/BootMode.c

$(OUTPUT_DIR)/StatusCode/StatusCode.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/StatusCode/StatusCode.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/StatusCode/StatusCode.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/StatusCode/StatusCode.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/StatusCode/StatusCode.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/StatusCode/StatusCode.c

$(OUTPUT_DIR)/FwVol/FwVol.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/FwVol/FwVol.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/FwVol/FwVol.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/FwVol/FwVol.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/FwVol/FwVol.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/FwVol/FwVol.c

$(OUTPUT_DIR)/PeiMain/PeiMain.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/PeiMain/PeiMain.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/PeiMain/PeiMain.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/PeiMain/PeiMain.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/PeiMain/PeiMain.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/PeiMain/PeiMain.c

$(OUTPUT_DIR)/Hob/Hob.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/Hob/Hob.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/Hob/Hob.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Hob/Hob.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/Hob/Hob.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/Hob/Hob.c

$(OUTPUT_DIR)/Security/Security.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/Security/Security.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/Security/Security.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Security/Security.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/Security/Security.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/Security/Security.c

$(OUTPUT_DIR)/Memory/MemoryServices.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/Memory/MemoryServices.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/Memory/MemoryServices.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Memory/MemoryServices.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/Memory/MemoryServices.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/Memory/MemoryServices.c

$(OUTPUT_DIR)/Reset/Reset.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/Reset/Reset.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/Reset/Reset.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Reset/Reset.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/Reset/Reset.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/Reset/Reset.c

$(OUTPUT_DIR)/Ppi/Ppi.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/Ppi/Ppi.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/Ppi/Ppi.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Ppi/Ppi.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/Ppi/Ppi.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/Ppi/Ppi.c

$(OUTPUT_DIR)/Image/Image.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/Image/Image.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/Image/Image.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Image/Image.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/Image/Image.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/Image/Image.c

$(OUTPUT_DIR)/PciCfg2/PciCfg2.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/PciCfg2/PciCfg2.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/PciCfg2/PciCfg2.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/PciCfg2/PciCfg2.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/PciCfg2/PciCfg2.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/PciCfg2/PciCfg2.c

$(OUTPUT_DIR)/AutoGen.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/AutoGen.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/AutoGen.obj : $(DEBUG_DIR)/AutoGen.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/./AutoGen.obj $(INC) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/DEBUG/AutoGen.c

$(OUTPUT_DIR)/Dispatcher/Dispatcher.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/Dispatcher/Dispatcher.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/Dispatcher/Dispatcher.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/Dispatcher/Dispatcher.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/Dispatcher/Dispatcher.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/Dispatcher/Dispatcher.c

$(OUTPUT_DIR)/CpuIo/CpuIo.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/CpuIo/CpuIo.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/CpuIo/CpuIo.obj : $(WORKSPACE)/edk2/MdeModulePkg/Core/Pei/CpuIo/CpuIo.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/CpuIo/CpuIo.obj $(INC) /home/daijh/sdk/rk3588/uefi/edk2/MdeModulePkg/Core/Pei/CpuIo/CpuIo.c

$(OUTPUT_DIR)/PeiCore.lib : $(OBJECT_FILES)
$(OUTPUT_DIR)/PeiCore.lib : $(OBJECT_FILES_LIST)
	$(RM) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/PeiCore.lib
	"$(SLINK)" cr /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/PeiCore.lib $(SLINK_FLAGS) @$(OBJECT_FILES_LIST)

$(DEBUG_DIR)/PeiCore.dll : $(MAKE_FILE)
$(DEBUG_DIR)/PeiCore.dll : $(STATIC_LIBRARY_FILES)
$(DEBUG_DIR)/PeiCore.dll : $(STATIC_LIBRARY_FILES_LIST)
	"$(DLINK)" -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/DEBUG/PeiCore.dll $(DLINK_FLAGS) $(DLINK_XIPFLAGS) -Wl,--start-group,@$(STATIC_LIBRARY_FILES_LIST),--end-group $(CC_FLAGS) $(CC_XIPFLAGS) $(DLINK2_FLAGS)
	"$(OBJCOPY)" $(OBJCOPY_FLAGS) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/DEBUG/PeiCore.dll

$(OUTPUT_DIR)/PeiCore.efi : $(DEBUG_DIR)/PeiCore.dll
	$(CP) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/DEBUG/PeiCore.dll $(DEBUG_DIR)/$(MODULE_NAME).debug
	$(OBJCOPY) --strip-unneeded -R .eh_frame /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/DEBUG/PeiCore.dll
	-$(OBJCOPY) $(OBJCOPY_ADDDEBUGFLAG) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/DEBUG/PeiCore.dll
	-$(CP) $(DEBUG_DIR)/$(MODULE_NAME).debug $(BIN_DIR)/$(MODULE_NAME_GUID).debug
	"$(GENFW)" -e $(MODULE_TYPE) -o /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/PeiCore.efi /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/DEBUG/PeiCore.dll $(GENFW_FLAGS)
	$(CP) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/PeiCore.efi $(DEBUG_DIR)
	$(CP) /home/daijh/sdk/rk3588/uefi/Build/RK3588/DEBUG_GCC5/AARCH64/MdeModulePkg/Core/Pei/PeiMain/OUTPUT/PeiCore.efi $(BIN_DIR)/$(MODULE_NAME_GUID).efi
	-$(CP) $(DEBUG_DIR)/*.map $(OUTPUT_DIR)



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
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/PeiPcdLib/PeiPcdLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/PeiPcdLib/PeiPcdLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/PeiServicesTablePointerLib/PeiServicesTablePointerLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/PeiServicesTablePointerLib/PeiServicesTablePointerLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/PeiMemoryAllocationLib/PeiMemoryAllocationLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/PeiMemoryAllocationLib/PeiMemoryAllocationLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/PeiHobLib/PeiHobLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/PeiHobLib/PeiHobLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/PeiServicesLib/PeiServicesLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/PeiServicesLib/PeiServicesLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseMemoryLib/BaseMemoryLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseMemoryLib/BaseMemoryLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/UartLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/UartLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/SerialPortLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/Silicon/Rockchip/Library/SerialPortLib/SerialPortLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmGenericTimerPhyCounterLib/ArmGenericTimerPhyCounterLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmGenericTimerPhyCounterLib/ArmGenericTimerPhyCounterLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdeModulePkg/Library/OemHookStatusCodeLibNull/OemHookStatusCodeLibNull/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdeModulePkg/Library/OemHookStatusCodeLibNull/OemHookStatusCodeLibNull/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmArchTimerLib/ArmArchTimerLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmArchTimerLib/ArmArchTimerLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdeModulePkg/Library/PeiReportStatusCodeLib/PeiReportStatusCodeLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdeModulePkg/Library/PeiReportStatusCodeLib/PeiReportStatusCodeLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdeModulePkg/Library/PeiPerformanceLib/PeiPerformanceLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdeModulePkg/Library/PeiPerformanceLib/PeiPerformanceLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/PeiCoreEntryPoint/PeiCoreEntryPoint/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/PeiCoreEntryPoint/PeiCoreEntryPoint/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BasePeCoffLib/BasePeCoffLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePeCoffLib/BasePeCoffLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/GNUmakefile cleanall
	@cd $(MODULE_BUILD_DIR)

