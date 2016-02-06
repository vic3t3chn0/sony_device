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

$(call inherit-product, device/sony/flamingo/aosp_d2203.mk)

PRODUCT_PACKAGES += \
    setup_fs

PRODUCT_NAME := flamingo
PRODUCT_DEVICE := flamingo
PRODUCT_MODEL := Xperia E3 (B2G)

GAIA_DEV_PIXELS_PER_PX := 2
BOOTANIMATION_ASSET_SIZE := fwvga

PRODUCT_COPY_FILES += \
    device/sony/flamingo/bootrec-device:root/sbin/bootrec-device

$(call inherit-product-if-exists, vendor/sony/flamingo-blobs/flamingo-vendor-blobs.mk)
