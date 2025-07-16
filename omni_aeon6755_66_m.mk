#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from aeon6755_66_m device
$(call inherit-product, device/vvetime/aeon6755_66_m/device.mk)

PRODUCT_DEVICE := aeon6755_66_m
PRODUCT_NAME := omni_aeon6755_66_m
PRODUCT_BRAND := VVETIME
PRODUCT_MODEL := ZYVM3
PRODUCT_MANUFACTURER := vvetime

PRODUCT_GMS_CLIENTID_BASE := android-vvetime

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_aeon6755_66_m-user 6.0 MRA58K 1510123453 dev-keys"

BUILD_FINGERPRINT := VVETIME/full_aeon6755_66_m/aeon6755_66_m:6.0/MRA58K/1510123453:user/dev-keys
