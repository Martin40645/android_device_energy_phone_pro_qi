USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/energy/phone_pro_qi/AndroidBoardVendor.mk

# Device configuration
TARGET_BOARD_PLATFORM := mt6592
TARGET_NO_BOOTLOADER := true
DEVICE_RESOLUTION := 1080x1920
TARGET_BOOTLOADER_BOARD_NAME := energy_phone_pro_qi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# TWRP configuration
TW_USE_LEGACY_BATTERY_SERVICES := true
TW_NO_USB_STORAGE := false
BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_CPU_TEMP := true


TARGET_USERIMAGES_USE_EXT4:=true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false


# Sizes and offsets
# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 947912704
BOARD_USERDATAIMAGE_PARTITION_SIZE := 30080499712
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_KERNEL_BASE := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_SEPOLICY_DIRS := \
       device/energy/phone_pro_qi/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       system.te \
       file_contexts

TARGET_PREBUILT_KERNEL := device/energy/phone_pro_qi/kernel
TARGET_RECOVERY_FSTAB := device/energy/phone_pro_qi/recovery.fstab

BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_CUSTOM_BOOTIMG_MK := device/energy/phone_pro_qi/bootimg.mk
BOARD_MKBOOTIMG_ARGS := --board 2ee33ae

TARGET_KMODULES := true

BOARD_EGL_CFG := device/energy/phone_pro_qi/egl.cfg

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# WiFi config
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P
