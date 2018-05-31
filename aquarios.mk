#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080p

# Inherit some common Nitrogen stuff.
#$(call inherit-product, vendor/aquarios/products/aquarios_phone.mk)
$(call inherit-product, vendor/aquarios/products/aquarios_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, device/motorola/potter/device.mk)
$(call inherit-product, vendor/motorola/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := potter
PRODUCT_NAME := potter
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

# PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys \
    PRIVATE_BUILD_DESC="potter-7.0/NPNS25.137-33-11/11:user/release-keys" \
    PRODUCT_NAME="Moto G5 Plus"
