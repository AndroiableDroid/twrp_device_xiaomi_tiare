#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/xiaomi/tiare

# Architecture

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm64
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := arm64-v8a
TARGET_2ND_CPU_ABI2 :=
TARGET_2ND_CPU_VARIANT := generic

# Platform
TARGET_BOARD_PLATFORM := msm8917
TARGET_BOARD_PLATFORM_GPU := qcom-adreno308

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8917

# Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/stock/kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom androidboot.memcg=true user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 19877888
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 
BOARD_CACHEIMAGE_PARTITION_SIZE := 
BOARD_PERSISTIMAGE_PARTITION_SIZE := 
BOARD_FLASH_BLOCK_SIZE := 
BOARD_VENDORIMAGE_PARTITION_SIZE := 
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := 
TARGET_COPY_OUT_VENDOR := 

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# TWRP Configuration
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXTRA_LANGUAGES := true
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# Disable Mouse Cursor
TW_INPUT_BLACKLIST := "hbtp_vm"

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true
