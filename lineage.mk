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

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Kernel properties
TARGET_KERNEL_CONFIG := aosp_yukon_seagull_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := D5103,seagull

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/seagull/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit LOS common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Fingerprint for seagull (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5103
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5103/D5103:4.4.2/18.1.A.1.21/6vt_bw:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5103-user 4.4.2 18.1.A.1.21 6vt_bw release-keys"

# Google Play Store identifier
PRODUCT_GMS_CLIENTID_BASE := android-sonyericsson

# Override Product Name for LineageOS
PRODUCT_NAME		:= lineage_seagull
PRODUCT_DEVICE		:= seagull
PRODUCT_MODEL		:= Xperia T3
PRODUCT_BRAND		:= Sony
PRODUCT_MANUFACTURER	:= Sony
