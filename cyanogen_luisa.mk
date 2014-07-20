# Inherit AOSP device configuration for blade.
$(call inherit-product, device/samsung/luisa/device_luisa.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include FM-Radio stuff
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_luisa
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := luisa
PRODUCT_MODEL := GT-B5510
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-B5510 BUILD_ID=GINGERBREAD BUILD_DISPLAY_ID=GINGERBREAD.UBLE2 BUILD_FINGERPRINT=samsung/GT-B5510/GT-B5510:2.3.6/GINGERBREAD/UBLE2:user/release-keys PRIVATE_BUILD_DESC="GT-B5510-user 2.3.6 GINGERBREAD UBLE2 release-keys"

# Extra overlay for MDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# Copy bootanimation
PRODUCT_COPY_FILES += \
     vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := GalaxyYPro
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy legend specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip
