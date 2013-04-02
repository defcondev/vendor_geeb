# Copyright (C) 2013 Android Open Source Project
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

PRODUCT_PROPERTY_OVERRIDES += \
    persist.adb.notify=0 \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
	debug.composition.type=dyn \
    ro.kernel.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    video.accelerate.hw=1 \
	debug.performance.tuning=1 \
	persist.gps.qmienabled=true

PRODUCT_COPY_FILES += \
    vendor/houstonn/prebuilt/common/apk/com.miuimusic232.apk:system/app/com.miuimusic232.apk

PRODUCT_COPY_FILES += \
    vendor/houstonn/prebuilt/common/media/sounds/xperia.ogg:system/media/audio/ringtones/xperia.ogg \
	vendor/houstonn/prebuilt/common/media/sounds/xperia_z_breeze.ogg:system/media/audio/ringtones/xperia_z_breeze.ogg \
    vendor/houstonn/prebuilt/common/media/sounds/xperia_z_rise.ogg:system/media/audio/ringtones/xperia_z_rise.ogg \
    vendor/houstonn/prebuilt/common/media/sounds/xperia1_z.ogg:system/media/audio/ringtones/xperia1_z.ogg \
    vendor/houstonn/prebuilt/common/media/sounds/xperia2_z.ogg:system/media/audio/ringtones/xperia2_z.ogg \
	vendor/houstonn/proprietary/media/Whistle.ogg:system/media/audio/notifications/s_whistle.ogg \
	vendor/houstonn/proprietary/etc/dcm_settings.xml:system/etc/dcm_settings.xml
	
$(call inherit-product, vendor/houstonn/config/geeb-vendor-blobs.mk)