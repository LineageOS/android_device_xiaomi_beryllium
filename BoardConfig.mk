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

# Kernel
TARGET_KERNEL_CONFIG := beryllium_defconfig

# Inherit from the proprietary version
-include vendor/xiaomi/beryllium/BoardConfigVendor.mk
