LOCAL_PATH := device/oneplus/pja110

BOARD_SHIPPING_API_LEVEL := 33
PRODUCT_SHIPPING_API_LEVEL := 33
PRODUCT_TARGET_VNDK_VERSION := 34
PRODUCT_USE_DYNAMIC_PARTITIONS := true
# Android 14 otherwise treats TARGET_NO_KERNEL as a reason to skip recovery.
# PJA110 intentionally builds a ramdisk-only dedicated recovery image.
PRODUCT_BUILD_RECOVERY_IMAGE := true

PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot-service.example_recovery \
    lpflash

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/root/system/bin/pja110_drm.sh:$(TARGET_COPY_OUT_RECOVERY)/root/system/bin/pja110_drm.sh

PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)
