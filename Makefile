# MDIS for Linux project makefile
# Generated by mdiswiz 2.04.00-linux-12.2
# 2017-08-07

ifndef MEN_LIN_DIR
MEN_LIN_DIR = /opt/menlinux

endif

# You need to select the development environment so that MDIS
# modules are compiled with the correct tool chain

WIZ_CDK = Other

# All binaries (modules, programs and libraries) will be
# installed under this directory.
# ts: left empty for on-target build

TARGET_TREE = 

# The directory of the kernel tree used for your target's
# kernel. If you're doing selfhosted development, it's
# typically /usr/src/linux. This directory is used when
# building the kernel modules.

LIN_KERNEL_DIR = /usr/src/linux-4.9.0/

# Defines whether to build MDIS to support RTAI. If enabled,
# MDIS modules support RTAI in addition to the standard Linux
# mode. Set it to "yes" if you want to access MDIS devices from
# RTAI applications

MDIS_SUPPORT_RTAI = no

# The directory where you have installed the RTAI distribution
# via "make install"

# RTAI_DIR

# The include directory used when building user mode libraries
# and applications. If you're doing selfhosted development,
# it's typically /usr/include. If you're doing cross
# development, select the include directory of your cross
# compiler. Leave it blank if your compiler doesn't need this
# setting.

LIN_USR_INC_DIR = /usr/include/

# Define whether to build/use static or shared user state
# libraries. In "static" mode, libraries are statically linked
# to programs. In "shared" mode, programs dynamically link to
# the libraries. "shared" mode makes programs smaller but
# requires installation of shared libraries on the target

LIB_MODE = shared

# Defines whether to build and install the release (nodbg) or
# debug (dbg) versions of the kernel modules. The debug version
# of the modules issue many debug messages using printk's for
# trouble shooting

ALL_DBGS = dbg

# The directory in which the kernel modules are to be
# installed. Usually this is the target's
# /lib/modules/$(LINUX_VERSION)/misc directory.

MODS_INSTALL_DIR = $(TARGET_TREE)/lib/modules/$(LINUX_VERSION)/misc

# The directory in which the user state programs are to be
# installed. Often something like /usr/local/bin. (relative to
# the target's root tree)

BIN_INSTALL_DIR = $(TARGET_TREE)/usr/bin

# The directory in which the shared (.so) user mode libraries
# are to be installed. Often something like /usr/local/lib.
# (relative to the target's root tree)

LIB_INSTALL_DIR = $(TARGET_TREE)/usr/lib

# The directory in which the static user mode libraries are to
# be installed. Often something like /usr/local/lib on
# development host. For cross compilation select a path
# relative to your cross compilers lib directory.

STATIC_LIB_INSTALL_DIR = /usr/local/lib/

# The directory in which the MDIS descriptors are to be
# installed. Often something like /etc/mdis. (Relative to the
# targets root tree)

DESC_INSTALL_DIR = $(TARGET_TREE)/etc/mdis

# The directory in which the MDIS device nodes are to be
# installed. Often something like /dev. (Relative to the
# targets root tree)

DEVNODE_INSTALL_DIR = $(TARGET_TREE)/dev

MDIS_EXTRA_DEFS = -DCONFIG_MEN_VME_KERNELIF -L/lib -I/usr/src/linux-4.9.0/arch/arm/include

ALL_LL_DRIVERS = M099/DRIVER/COM/driver.mak

ALL_BB_DRIVERS = \
	CHAMELEON/DRIVER/COM/driver_pcitbl.mak \
	A203N/DRIVER/COM/driver.mak

ALL_USR_LIBS = \
	USR_OSS/library.mak \
	USR_UTL/COM/library.mak \
	VME4L_API/library.mak \
	UTI/library.mak

ALL_CORE_LIBS = \
	DBG/library.mak \
	OSS/library.mak \
	CHAMELEON/COM/library.mak

ALL_LL_TOOLS = M099/TOOLS/M99_LATENCY/COM/program.mak

ALL_COM_TOOLS = \
	MDIS_API/M_ERRSTR/COM/program.mak \
	MDIS_API/M_MOD_ID/COM/program.mak \
	MDIS_API/M_OPEN/COM/program.mak \
	MDIS_API/M_READ/COM/program.mak \
	MDIS_API/M_WRITE/COM/program.mak \
	VME4L_API/VME4L_RWEX/program.mak \
	VME4L_API/VME4L_PLDZ002_LOCMON/program.mak \
	VME4L_API/VME4L_TSI148_LOCMON/program.mak \
	VME4L_API/VME4L_M99IRQ/program.mak \
	VME4L_API/VME4L_M99IRQ/program_tsi148.mak \
	VME4L_API/VME4L_MMAP/program.mak \
	VME4L_API/VME4L_MBOX/program.mak \
	VME4L_API/VME4L_MTEST/program.mak \
	VME4L_API/VME4L_RWSPEED/program.mak \
	VME4L_API/VME4L_SLVWIN/program.mak \
	VME4L_API/VME4L_SPCYCLE/program.mak \
	VME4L_API/VME4L_CTRL/program.mak \
	VME4L_API/VME4L_IRQGEN/program.mak

ALL_NATIVE_DRIVERS = \
	DRIVERS/VME4LX/DRIVER_K24/driver.mak \
	DRIVERS/VME4LX/DRIVER_K24/driver_pldz002_cham.mak \
	DRIVERS/M077/DRIVER/driver.mak

ALL_NATIVE_LIBS = 

ALL_NATIVE_TOOLS = TOOLS/HWBUG/program.mak

ALL_DESC = system

include $(MEN_LIN_DIR)/BUILD/MDIS/TPL/rules.mak

