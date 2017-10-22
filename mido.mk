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
#

IS_ARM64 := true

# Include Official OTA Package
WITH_OFFICIALOTA := false

# Include pure telephony configuration
$(call inherit-product, vendor/pure/configs/pure_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mido device
$(call inherit-product, device/xiaomi/mido/device.mk)
$(call inherit-product, device/xiaomi/mido/full_mido.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := mido
PRODUCT_DEVICE := mido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 4
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="mido" \
    PRODUCT_NAME="mido" \
    BUILD_FINGERPRINT="xiaomi/mido/mido:7.0/NRD90M/V8.5.4.0.NCFMIED:user/release-keys" \
    PRIVATE_BUILD_DESC="mido-user 7.0 NRD90M V8.5.4.0.NCFMIED release-keys"

TARGET_VENDOR := Xiaomi

# Boot animation resolution
TARGET_BOOT_ANIMATION_RES := 1080
