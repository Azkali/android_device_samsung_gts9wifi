#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gts9wifi device
$(call inherit-product, device/samsung/gts9wifi/device.mk)

PRODUCT_DEVICE := gts9wifi
PRODUCT_NAME := twrp_gts9wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X710
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gts9wifixxx-user 13 TP1A.220624.014 X710XXS1BWL7 release-keys"

BUILD_FINGERPRINT := samsung/gts9wifixxx/gts9wifi:13/TP1A.220624.014/X710XXS1BWL7:user/release-keys
