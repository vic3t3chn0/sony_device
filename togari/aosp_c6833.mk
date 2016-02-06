# Copyright (C) 2011 The Android Open Source Project
# Copyright (C) 2013 The CyanogenMod Project
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

#TARGET_PREBUILT_KERNEL := kernel
#PRODUCT_COPY_FILES += $(LOCAL_PATH)/$(TARGET_PREBUILT_KERNEL):kernel

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
 
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Common Sony Resources
#$(call inherit-product, device/sony/common/resources-xxhdpi.mk)

# Inherit from togari device
$(call inherit-product, device/sony/togari/togari.mk)

DEVICE_PREBUILT := device/sony/togari/prebuilt

PRODUCT_AAPT_CONFIG := normal mdpi mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi


PRODUCT_PACKAGES := \
        su 

# Wifi
PRODUCT_PACKAGES += \
        lib_driver_cmd_wl12xx \
        wlan_loader \
        wlan_cu \
        dhcpcd.conf \
        wpa_supplicant.conf \
        make_ext4fs \
	com.android.future.usb.accessory

PRODUCT_PACKAGES += \
        libinvensense_mpl \
        hwcomposer.default \
        parse_hdmi_edid \
        libedid \
        audio_policy.default \
        libaudioutils

PRODUCT_PROPERTY_OVERRIDES := \
	wifi.interface=wlan0 \
	hwui.render_dirty_regions=false

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=160 

PRODUCT_CHARACTERISTICS := tablet


PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES := \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni \
	com.android.future.usb.accessory


PRODUCT_PACKAGES += \
	audio.a2dp.default \
	libaudioutils

PRODUCT_PACKAGES += \
	dhcpcd.conf \
	TQS_D_1.7.ini \
	calibrator

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs 

# BlueZ test tools
PRODUCT_PACKAGES += \
	hciconfig \
	hcitool



# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := aosp_c6833
PRODUCT_DEVICE := togari
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia Z Ultra
