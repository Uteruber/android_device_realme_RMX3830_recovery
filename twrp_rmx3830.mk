#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
#$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from RMX3830 device
$(call inherit-product, device/realme/rmx3830/device.mk)

PRODUCT_DEVICE := RMX3830
PRODUCT_NAME := twrp_RMX3830
PRODUCT_BRAND := realme
PRODUCT_MODEL := ussi_arm64_full
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ussi_arm64_full-user 15 AP3A.240905.015.A2 1926 release-keys"

BUILD_FINGERPRINT := realme/RMX3830/RE58BC:15/AP3A.240905.015.A2/T.R4T2.1768790453:user/release-keys
