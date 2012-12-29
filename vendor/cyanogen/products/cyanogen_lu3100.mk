# Inherit AOSP device configuration for lu3100.
$(call inherit-product, device/lge/lu3100/lu3100.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)


#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_lu3100
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := lu3100
PRODUCT_MODEL := LGE Optimus Chic
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lu3100 BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=lge/lu3100/lu3100:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="lu3100-user 2.3.4 GRJ22 121341 release-keys"

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-OC
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-OC
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-OC-HPA-T2
    endif
endif

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
