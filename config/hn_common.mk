# Copyright (C) 2012 The CyanogenMod Project
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

# This file is generated by device/lge/geeb/setup-makefiles.sh

#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Version information used on all builds
#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_EST_DATE=$(shell date +"%s")

PRODUCT_PROPERTY_OVERRIDES += \
    persist.adb.notify=0

# Extra packages prebuilt for now
#PRODUCT_PACKAGES += \
#    CMFileManager \
#    com.miui.player-1

PRODUCT_COPY_FILES += \
    vendor/houstonn/prebuilt/common/apk/CMFileManager.apk:system/app/CMFileManager.apk \
    vendor/houstonn/prebuilt/common/apk/com.miui.player-1.apk:system/app/com.miui.player-1.apk
#	vendor/houstonn/prebuilt/common/apk/BBQBenchmark.apk:system/app/BBQBenchmark.apk
	
# bootani I chose
#PRODUCT_COPY_FILES += \
#        vendor/houstonn/prebuilt/common/bootanimation/XHDPI.zip:system/media/bootanimation.zip

# Live wallpaper packages
PRODUCT_PACKAGES := \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Publish that we support the live wallpaper feature.
#PRODUCT_COPY_FILES := \
#    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Pick up overlay for features that depend on non-open-source files
#DEVICE_PACKAGE_OVERLAYS := vendor/houstonn/overlay

$(call inherit-product, vendor/houstonn/config/geeb-vendor-blobs.mk)