## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := pro_qi

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/energy/pro_qi/device_pro_qi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pro_qi
PRODUCT_NAME := cm_pro_qi
PRODUCT_BRAND := ENERGY_SISTEM
PRODUCT_MODEL := pro_qi
PRODUCT_MANUFACTURER := ENERGY_SISTEM
