# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_NAME := omni_PMT3151_3G
PRODUCT_DEVICE := PMT3151_3G

PRODUCT_BRAND := PRESTIGIO
PRODUCT_MODEL := PMT3151_3G
PRODUCT_MANUFACTURER := PRESTIGIO

PRODUCT_BUILD_PROP_OVERRIDES += \
    OMNI_DEVICE="PRESTIGIO_PMT3151_3G"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="PMT3151_3G"

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID="PRESTIGIO_PMT3151_3G" \
    BUILD_NUMBER="PMT3151_3G" \
    BUILD_DISPLAY_ID="PMT3151_3G"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_BUILD_FLAVOR="PMT3151_3G-$(TARGET_BUILD_VARIANT)"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="PMT3151_3G-$(TARGET_BUILD_VARIANT) 7.0 PRESTIGIO_PMT3151 0 test-keys"

BUILD_FINGERPRINT := PRESTIGIO/PMT3151_3G/PRESTIGIO_PMT3151:7.0/PRESTIGIO_PMT3151/0:$(TARGET_BUILD_VARIANT)/test-keys

PRODUCT_GMS_CLIENTID_BASE := android-prestigio
