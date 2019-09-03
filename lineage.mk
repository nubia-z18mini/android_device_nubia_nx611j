#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from nx611j device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := nubia
PRODUCT_DEVICE := nx611j
PRODUCT_MANUFACTURER := nubia
PRODUCT_NAME := lineage_nx611j
PRODUCT_MODEL := NX611J

PRODUCT_GMS_CLIENTID_BASE := android-nubia

TARGET_VENDOR := nubia
TARGET_VENDOR_PRODUCT_NAME := nx611j

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="NX611J-user 8.1.0 OPM1.171019.011 eng.nubia.20190604.114926 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := nubia/NX611J/NX611J:8.1.0/OPM1.171019.011/nubia.20190604.114926:user/release-keys
