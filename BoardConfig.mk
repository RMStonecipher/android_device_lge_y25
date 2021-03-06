#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/lge/y25

BOARD_VENDOR := motorola-qcom

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno302
TARGET_BOARD_PLATFORM := msm8610

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_MEMCPY_BASE_OPT_DISABLE := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8610
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_KERNEL_SOURCE := kernel/lge/y25
TARGET_KERNEL_CONFIG := y25_trf_us_defconfig
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 utags.blkdev=/dev/block/platform/msm_sdcc.1/by-name/utags vmalloc=400M

TARGET_KERNEL_MODULES += WLAN_MODULES

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# GPS
TARGET_NO_RPC := true

# Use qcom power hal
TARGET_POWERHAL_VARIANT := qcom

# Global flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_USES_MOTOROLA_LOG := true
TARGET_NR_SVC_SUPP_GIDS := 32

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true

# Build
TARGET_SYSTEMIMAGE_USE_SQUISHER := true

# Storage & partiiton
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x4C800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x75380000
#BOARD_CACHEIMAGE_PARTITION_SIZE :=
#BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE :=
BOARD_FLASH_BLOCK_SIZE := 0x20000

# Vold
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 40
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Asserts
TARGET_OTA_ASSERT_DEVICE := y25,L15G

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/fstab.qcom
BOARD_HAS_NO_SELECT_BUTTON := true
