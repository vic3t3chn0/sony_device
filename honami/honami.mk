# Copyright 2014 The Android Open Source Project
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

$(call inherit-product, device/sony/honami/aosp_c6903.mk)

PRODUCT_NAME := honami
PRODUCT_DEVICE := honami
PRODUCT_MODEL := Xperia Z1 (B2G)

GAIA_DEV_PIXELS_PER_PX := 2.25
BOOTANIMATION_ASSET_SIZE := 1080p

PRODUCT_COPY_FILES += \
    device/sony/honami/bootrec-device:root/sbin/bootrec-device

$(call inherit-product-if-exists, vendor/sony/honami-blobs/honami-vendor-blobs.mk)
