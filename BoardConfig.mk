#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/beryllium

# Assert
TARGET_OTA_ASSERT_DEVICE := beryllium

# Audio
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# FM
BOARD_HAS_QCA_FM_SOC := "cherokee"
BOARD_HAVE_QCOM_FM := true

# Kernel
TARGET_KERNEL_CONFIG := beryllium_defconfig

# Inherit from the proprietary version
-include vendor/xiaomi/beryllium/BoardConfigVendor.mk
