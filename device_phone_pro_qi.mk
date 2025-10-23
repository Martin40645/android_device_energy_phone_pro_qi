$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, $(LOCAL_PATH)phone_pro_qi-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

LOCAL_PATH := device/energy/phone_pro_qi
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_PACKAGES += \
    libxlog

PRODUCT_PACKAGES += \
    lights.mt6592

PRODUCT_PACKAGES += \
    # audio.r_submix.default \
    # audio.primary.mt6592 \
    # audio_policy.default
PRODUCT_COPY_FILES += \
    # $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    # $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profile.xml \
    # $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

# Wifi
PRODUCT_PACKAGES += \
    # lib_driver_cmd_mt66xx

# Bluetooth
PRODUCT_PACKAGES += \
    # libbt-vendor

# GSM
PRODUCT_PACKAGES += \
    # gsm0710muxd

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/agps_profiles_conf.xml:system/etc/agps_profiles_conf.xml

# Thermal
PRODUCT_COPY_FILES += \
    # $(LOCAL_PATH)/configs/thermal.conf:system/etc/.tp/thermal.conf \
    # $(LOCAL_PATH)/configs/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    # $(LOCAL_PATH)/configs/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    # $(LOCAL_PATH)/configs/thermalstress.cfg:system/etc/.tp/thermalstress.cfg

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    # frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    # frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    # frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    # frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    # frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    # frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    # frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    # frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    # frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    # frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    # frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    # frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Required libraries for proper functionality
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/lib/libaudio.primary.default.so:system/lib/libaudio.primary.default.so \
    $(LOCAL_PATH)/proprietary/lib/libblisrc.so:system/lib/libblisrc.so \
    $(LOCAL_PATH)/proprietary/lib/libmtk_drvb.so:system/lib/libmtk_drvb.so \
    $(LOCAL_PATH)/proprietary/lib/libnvram.so:system/lib/libnvram.so \
    $(LOCAL_PATH)/proprietary/lib/libcustom_nvram.so:system/lib/libcustom_nvram.so \
    $(LOCAL_PATH)/proprietary/lib/libnvram_sec.so:system/lib/libnvram_sec.so \
    $(LOCAL_PATH)/proprietary/lib/libnvram_platform.so:system/lib/libnvram_platform.so \
    $(LOCAL_PATH)/proprietary/lib/libspeech_enh_lib.so:system/lib/libspeech_enh_lib.so \
    $(LOCAL_PATH)/proprietary/lib/libaudiocustparam.so:system/lib/libaudiocustparam.so \
    $(LOCAL_PATH)/proprietary/lib/libaudiosetting.so:system/lib/libaudiosetting.so \
    $(LOCAL_PATH)/proprietary/lib/libaudiocompensationfilter.so:system/lib/libaudiocompensationfilter.so \
    $(LOCAL_PATH)/proprietary/lib/libbessound_mtk.so:system/lib/libbessound_mtk.so \
    $(LOCAL_PATH)/proprietary/lib/libcvsd_mtk.so:system/lib/libcvsd_mtk.so \
    $(LOCAL_PATH)/proprietary/lib/libmsbc_mtk.so:system/lib/libmsbc_mtk.so \
    $(LOCAL_PATH)/proprietary/lib/libaudiocomponentengine.so:system/lib/libaudiocomponentengine.so \
    $(LOCAL_PATH)/proprietary/lib/libblisrc32.so:system/lib/libblisrc32.so \
    $(LOCAL_PATH)/proprietary/lib/libbessound_hd_mtk.so:system/lib/libbessound_hd_mtk.so \
    $(LOCAL_PATH)/proprietary/lib/libmtklimiter.so:system/lib/libmtklimiter.so \
    $(LOCAL_PATH)/proprietary/lib/libmtkshifter.so:system/lib/libmtkshifter.so \
    $(LOCAL_PATH)/proprietary/lib/libaudiodcrflt.so:system/lib/libaudiodcrflt.so \
    $(LOCAL_PATH)/proprietary/lib/libaed.so:system/lib/libaed.so \
    $(LOCAL_PATH)/proprietary/lib/libbluetoothdrv.so:system/lib/libbluetoothdrv.so \
    $(LOCAL_PATH)/proprietary/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
    $(LOCAL_PATH)/proprietary/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
    $(LOCAL_PATH)/proprietary/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
    $(LOCAL_PATH)/proprietary/lib/libMali.so:system/lib/libMali.so \
    $(LOCAL_PATH)/proprietary/lib/libdpframework.so:system/lib/libdpframework.so \
    $(LOCAL_PATH)/proprietary/lib/libion.so:system/lib/libion.so \
    $(LOCAL_PATH)/proprietary/lib/libm4u.so:system/lib/libm4u.so \
    $(LOCAL_PATH)/proprietary/lib/hw/audio_policy.default.so:system/lib/hw/audio_policy.default.so \
    $(LOCAL_PATH)/proprietary/lib/hw/audio.primary.default.so:system/lib/hw/audio.primary.default.so \
    $(LOCAL_PATH)/proprietary/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
    $(LOCAL_PATH)/proprietary/lib/hw/hwcomposer.mt6592.so:system/lib/hw/hwcomposer.mt6592.so \
    $(LOCAL_PATH)/proprietary/lib/hw/libaudio.r_submix.default.so:system/lib/hw/libaudio.r_submix.default.so \
    $(LOCAL_PATH)/proprietary/lib/hw/lights.default.so:system/lib/hw/lights.default.so \
    $(LOCAL_PATH)/proprietary/lib/hw/power.default.so:system/lib/hw/power.default.so \
    $(LOCAL_PATH)/proprietary/lib/hw/audio_policy.stub.so:system/lib/hw/audio_policy.stub.so \
    $(LOCAL_PATH)/proprietary/lib/hw/bluetooth.default.so:system/lib/hw/bluetooth.default.so \
    $(LOCAL_PATH)/proprietary/lib/hw/gps.default.so:system/lib/hw/gps.default.so \
    $(LOCAL_PATH)/proprietary/lib/hw/gralloc.mt6592.so:system/lib/hw/gralloc.mt6592.so \
    $(LOCAL_PATH)/proprietary/lib/hw/keystore.default.so:system/lib/hw/keystore.default.so \
    $(LOCAL_PATH)/proprietary/lib/hw/libaudio.usb.default.so:system/lib/hw/libaudio.usb.default.so \
    $(LOCAL_PATH)/proprietary/lib/hw/local_time.default.so:system/lib/hw/local_time.default.so \
    $(LOCAL_PATH)/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    $(LOCAL_PATH)/proprietary/lib/libcam_utils.so:system/lib/libcam_utils.so \
    $(LOCAL_PATH)/proprietary/bin/mtk_agpsd:system/bin/mtk_agpsd \
#copy mnld to gps TODO
#$(LOCAL_PATH)/proprietary/lib/hw/camera.default.so:system/lib/hw/camera.default.so \
# NFC
PRODUCT_PACKAGES += \
    # com.android.nfc_extras \
    # Tag
PRODUCT_COPY_FILES += \
    # packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt \
    # frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    # frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    # frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# Torch
PRODUCT_PACKAGES += \
    # Torch


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
    # $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.mt6592:root/fstab.mt6592 \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt6592.rc:root/init.mt6592.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.mt6592.rc:root/init.recovery.mt6592.rc \
    $(LOCAL_PATH)/rootdir/init.mt6592.usb.rc:root/init.mt6592.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6592.rc:root/ueventd.mt6592.rc \
    $(LOCAL_PATH)/rootdir/twrp.fstab:root/etc/twrp.fstab \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_phone_pro_qi
PRODUCT_DEVICE := phone_pro_qi
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
