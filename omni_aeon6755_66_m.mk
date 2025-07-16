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

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.allow.mock.location=0

PRODUCT_GMS_CLIENTID_BASE := android-vvetime
