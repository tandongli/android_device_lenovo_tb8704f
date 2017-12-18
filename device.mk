#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_CONFIG := normal

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heapminfree=4m \
    dalvik.vm.heapstartsize=16m

$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8953 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcompostprocbundle \
    libshim_adsp \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:system/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio/capability.xml:system/etc/capability.xml \
    $(LOCAL_PATH)/audio/default_volume_tables.xml:system/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_sku3.xml:system/etc/mixer_paths_qrd_sku3.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skum.xml:system/etc/mixer_paths_qrd_skum.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd_skun.xml:system/etc/mixer_paths_qrd_skun.xml \
    $(LOCAL_PATH)/audio/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    $(LOCAL_PATH)/audio/mixer_paths_wcd9306.xml:system/etc/mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/audio/mixer_paths_wcd9326.xml:system/etc/mixer_paths_wcd9326.xml \
    $(LOCAL_PATH)/audio/mixer_paths_wcd9330.xml:system/etc/mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/audio/mixer_paths_wcd9335.xml:system/etc/mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/audio/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9306.xml:system/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9330.xml:system/etc/sound_trigger_mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9335.xml:system/etc/sound_trigger_mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/audio/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/wfdconfig.xml:system/etc/wfdconfig.xml \
    $(LOCAL_PATH)/audio/wfdconfigsink.xml:system/etc/wfdconfigsink.xml \
    $(LOCAL_PATH)/audio/drc/drc_cfg_5.1.txt:system/etc/drc/drc_cfg_5.1.txt \
    $(LOCAL_PATH)/audio/drc/drc_cfg_AZ.txt:system/etc/drc/drc_cfg_AZ.txt \
    $(LOCAL_PATH)/audio/surround_sound_3mic/surround_sound_rec_5.1.cfg:system/etc/surround_sound_3mic/surround_sound_rec_5.1.cfg \
    $(LOCAL_PATH)/audio/surround_sound_3mic/surround_sound_rec_AZ.cfg:system/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg

#PRODUCT_COPY_FILES += \
#    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml \
#    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
#    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
#    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
#    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml

# Camera
PRODUCT_PACKAGES += \
    Snap

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/s5k3p3sm_chromatix.xml:system/etc/camera/s5k3p3sm_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3m2xx_chromatix.xml:system/etc/camera/s5k3m2xx_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3m2xm_chromatix_bear.xml:system/etc/camera/s5k3m2xm_chromatix_bear.xml \
    $(LOCAL_PATH)/configs/camera/s5k3m2xm_chromatix.xml:system/etc/camera/s5k3m2xm_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3l8_mono_chromatix.xml:system/etc/camera/s5k3l8_mono_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3l8_f3l8yam_chromatix.xml:system/etc/camera/s5k3l8_f3l8yam_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3l8_chromatix.xml:system/etc/camera/s5k3l8_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k2l7_chromatix.xml:system/etc/camera/s5k2l7_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k2l7_8953_chromatix.xml:system/etc/camera/s5k2l7_8953_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov8865_chromatix.xml:system/etc/camera/ov8865_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov8858_chromatix.xml:system/etc/camera/ov8858_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov8856_chromatix.xml:system/etc/camera/ov8856_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov5695_f5695ak_chromatix.xml:system/etc/camera/ov5695_f5695ak_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov5695_ccbfl05006_chromatix.xml:system/etc/camera/ov5695_ccbfl05006_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov5670_f5670bq_chromatix.xml:system/etc/camera/ov5670_f5670bq_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov5670_chromatix.xml:system/etc/camera/ov5670_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov4688_chromatix.xml:system/etc/camera/ov4688_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov2680_chromatix.xml:system/etc/camera/ov2680_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov2281_chromatix.xml:system/etc/camera/ov2281_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov13850_q13v06k_chromatix.xml:system/etc/camera/ov13850_q13v06k_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov13850_chromatix.xml:system/etc/camera/ov13850_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx378_chromatix.xml:system/etc/camera/imx378_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx362_chromatix_bear.xml:system/etc/camera/imx362_chromatix_bear.xml \
    $(LOCAL_PATH)/configs/camera/imx362_chromatix.xml:system/etc/camera/imx362_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx318_chromatix.xml:system/etc/camera/imx318_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx298_gt24c64_chromatix.xml:system/etc/camera/imx298_gt24c64_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx298_chromatix.xml:system/etc/camera/imx298_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx258_mono_chromatix.xml:system/etc/camera/imx258_mono_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx258_mono_bear_chromatix.xml:system/etc/camera/imx258_mono_bear_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx258_chromatix.xml:system/etc/camera/imx258_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx258_bear_chromatix.xml:system/etc/camera/imx258_bear_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx230_qc2002_with_gyro_chromatix.xml:system/etc/camera/imx230_qc2002_with_gyro_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx230_qc2002_chromatix.xml:system/etc/camera/imx230_qc2002_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx230_chromatix.xml:system/etc/camera/imx230_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx219_l219a00_chromatix.xml:system/etc/camera/imx219_l219a00_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx219_fx219bh_chromatix.xml:system/etc/camera/imx219_fx219bh_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx214_chromatix.xml:system/etc/camera/imx214_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/csidtg_chromatix.xml:system/etc/camera/csidtg_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/csidtg_camera.xml:system/etc/camera/csidtg_camera.xml \
    $(LOCAL_PATH)/configs/camera/camera_config.xml:system/etc/camera/camera_config.xml



# Display
PRODUCT_PACKAGES += \
    gralloc.msm8953 \
    copybit.msm8953 \
    hwcomposer.msm8953 \
    memtrack.msm8953 \
    liboverlay \
    libtinyxml

# Display Calibration
PRODUCT_PACKAGES += \
    libjni_livedisplay

# DRM
PRODUCT_PACKAGES += \
    libprotobuf-cpp-lite

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    libfmjni \
    qcom.fmradio

# Lights
PRODUCT_PACKAGES += \
    lights.msm8953

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
    fs_config_files

# GPS
PRODUCT_PACKAGES += \
    gps.msm8953 \
    libgnsspps \
    libcurl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/xtwifi.conf:system/etc/xtwifi.conf \

# IPA Manager
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsxv26.kl:system/usr/keylayout/synaptics_dsxv26.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl


# Lights
PRODUCT_PACKAGES += \
    lights.msm8953

# Media
PRODUCT_PACKAGES += \
    libc2dcolorconvert

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# NFC
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp_ds.conf:system/etc/libnfc-nxp_ds.conf \

PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    nfc_nci.pn54x.default \
    NfcNci \
    Tag \
    com.android.nfc_extras

# OMX
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidcCommon \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8953

# Ramdisk
PRODUCT_PACKAGES += \
    init.mmi.touch.sh \
    wlan_carrier_bin.sh \
    init.qcom.bt.sh \
    init.qcom.ril.sh

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.carrier.rc \
    init.class_main.sh \
    init.msm.usb.configfs.rc \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.target.rc \
    init.zygote64_32.rc \
    ueventd.qcom.rc

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libshim_ril \
    libxml2

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8953

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/apdr.conf:system/etc/apdr.conf

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf

# Wifi
PRODUCT_PACKAGES += \
    ipacm \
    ipacm-diag \
    IPACM_cfg.xml \
    libqsap_sdk \
    libwifi-hal-qcom \
    libwcnss_qmi \
    wcnss_service \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    hostapd.accept \
    hostapd_default.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/fstman.ini:system/etc/wifi/fstman.ini \
    $(LOCAL_PATH)/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf 
	
# Misc Binaries
PRODUCT_PACKAGES += \
    cplay \
    hs20-osu-client \
    rmnetcli \
    setup_fs \
    tinycap \
    tinypcminfo \
    tinyplay \
    updater

# Misc Libraries
PRODUCT_PACKAGES += \
    libext2fs \
    libbson \
    libminui \
    libcurl \
    libext2_e2p \
    libext2_uuid \
    libmm-omxcore \
    libext2_com_err \
    libext2_blkid \
    libextmedia_jni

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
