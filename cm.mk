## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Phone_Pro_Qi

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/energy/phone_pro_qi/device_phone_pro_qi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := phone_pro_qi
PRODUCT_NAME := cm_phone_pro_qi
PRODUCT_BRAND := Energy_Sistem
PRODUCT_MODEL := Energy Phone Pro Qi
PRODUCT_MANUFACTURER := Energy_Sistem
