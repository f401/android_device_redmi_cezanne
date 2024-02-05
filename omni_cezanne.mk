#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Omni stuff.

# Inherit from cezanne device
$(call inherit-product, device/xiaomi/cezanne/device.mk)
 
$(call inherit-product, vendor/twrp/config/common.mk) 
  
#​ Inherit from AOSP base config 
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
PRODUCT_DEVICE := cezanne
PRODUCT_NAME := omni_cezanne
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2006J10C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cezanne-user 12 SP1A.210812.016 V14.0.5.0.SJNCNXM release-keys"

BUILD_FINGERPRINT := Redmi/cezanne/cezanne:12/SP1A.210812.016/V14.0.5.0.SJNCNXM:user/release-keys
