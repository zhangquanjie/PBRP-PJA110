$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, vendor/pb/config/common.mk)
$(call inherit-product, device/oneplus/pja110/device.mk)

PRODUCT_DEVICE := pja110
PRODUCT_NAME := pb_pja110
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus Ace 2 Pro
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_RELEASE_NAME := PJA110
PRODUCT_SYSTEM_NAME := OP5943L1
PRODUCT_SYSTEM_DEVICE := OP5943L1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="PJA110-user 16 BP2A.250605.015 T.4668907-22a0229-225984e release-keys"
BUILD_FINGERPRINT := OnePlus/PJA110/OP5943L1:16/BP2A.250605.015/T.4668907-22a0229-225984e:user/release-keys
