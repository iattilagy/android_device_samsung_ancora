# Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/full_ancora.mk)

# 800x480 boot animation
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip

PRODUCT_RELEASE_NAME := ancora

#CM_EXPERIMENTAL := true
#CM_EXTRAVERSION := alpha1

# Setup device configuration
PRODUCT_NAME := aokp_ancora
PRODUCT_DEVICE := ancora
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I8150

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/GT-I8150/GT-I8150:2.3.6/GINGERBREAD/XXLMD:user/release-keys PRIVATE_BUILD_DESC="GT-I8150-user 2.3.6 GINGERBREAD XXLMD release-keys"
