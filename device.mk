#
# Copyright (C) 2018-2019 The LineageOS Project
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
#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from sdm660-common
$(call inherit-product, device/vivo/sdm660-common/sdm660.mk)

DEVICE_PATH := device/vivo/PD1728F_EX

# Inherit properties.mk
$(call inherit-product, $(DEVICE_PATH)/properties.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.PD1728.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.PD1728.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.PD1728F_EX.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.PD1728F_EX.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.PD1728LG4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.PD1728LG4.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.PD1728UD.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.PD1728UD.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.PD1729.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.PD1729.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.VTD1702.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.VTD1702.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.VTD1702F_EX.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.VTD1702F_EX.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_skush.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_skush.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.PD1728.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.PD1728.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.PD1728F_EX.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.PD1728F_EX.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.PD1728UD.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.PD1728UD.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.VTD1702.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.VTD1702.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.VTD1702F_EX.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.VTD1702F_EX.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration_generic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_generic.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration_stub.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_stub.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.PD1728.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.PD1728.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.PD1728F_EX.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.PD1728F_EX.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.PD1728UD.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.PD1728UD.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.VTD1702.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.VTD1702.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.VTD1702F_EX.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.VTD1702F_EX.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(LOCAL_PATH)/configs/audio/audio_tuning_mixer_tasha.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer_tasha.txt \
    $(LOCAL_PATH)/configs/audio/audio_tuning_mixer_tavil.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer_tavil.txt \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.PD1728.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.PD1728.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.PD1728F_EX.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.PD1728F_EX.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.PD1728UD.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.PD1728UD.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.VTD1702.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.VTD1702.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.VTD1702F_EX.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.VTD1702F_EX.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/configs/audio/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1709.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1709.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1709F_EX.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1709F_EX.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1709LG4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1709LG4.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1710.111111.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1710.111111.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1710.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1710.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1710F_EX.111111.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1710F_EX.111111.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1710F_EX.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1710F_EX.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1710LG4.111111.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1710LG4.111111.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1710LG4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1710LG4.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1721.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1721.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1728.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1728.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1728F_EX.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1728F_EX.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1728LG4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1728LG4.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1728UD.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1728UD.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1729.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1729.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.PD1729LG4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.PD1729LG4.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.TD1608.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.TD1608.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.VTD1702.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.VTD1702.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.VTD1702F_EX.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.VTD1702F_EX.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_i2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_i2s.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_pri_mi2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_pri_mi2s.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_quat_mi2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_quat_mi2s.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_sec_mi2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_sec_mi2s.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_skuk.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_skuk.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_skus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_skus.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_skush.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_skush.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_tert_mi2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tert_mi2s.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9326.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9326.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9335.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_wcd9340.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9340.xml \
    $(LOCAL_PATH)/configs/audio/primary_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/primary_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9330.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9335.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9340.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9340.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/stub_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/stub_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/surround_sound_rec_5.1.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_rec_5.1.cfg \
    $(LOCAL_PATH)/configs/audio/surround_sound_rec_AZ.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_rec_AZ.cfg \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \

# Exclude TOF sensor from InputManager
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/excluded-input-devices.xml:system/etc/excluded-input-devices.xml \

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/apdr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/apdr.conf \
    $(LOCAL_PATH)/configs/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(LOCAL_PATH)/configs/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(LOCAL_PATH)/configs/gps/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(LOCAL_PATH)/configs/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
    $(LOCAL_PATH)/configs/gps/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf \

# Camera
PRODUCT_PACKAGES += \
    libstdc++.vendor

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_vivo_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vivo_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_vivo_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vivo_video.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml \

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf \
    $(LOCAL_PATH)/configs/msm_irqbalance_sdm630.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance_sdm630.conf \

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config \

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \

# FM
BOARD_HAVE_QCOM_FM := true

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    NoCutoutOverlay

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/configs/wifi/fstman.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/fstman.ini \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wifi_concurrency_cfg.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wifi_concurrency_cfg.txt \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \

# Ramdisk
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.crda.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.crashdata.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.sh \
    init.qcom.wifi.sh \
    init.qti.fm.sh \
    init.qti.ims.sh \
    init.qti.qseecomd.sh \
    init.vivo.fingerprint.sh \
    init.vivo.fingerprint_restart_counter.sh \
    qca6234-service.sh \
    init.msm.usb.configfs.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.device.rc \
    fstab.qcom \
    ueventd.qcom.rc \
    
# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/seccomp/configstore@1.0.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/configstore@1.0.policy \
    $(LOCAL_PATH)/configs/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/configs/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \


# Inherit the proprietary files
$(call inherit-product, vendor/vivo/PD1728/PD1728-vendor.mk)
