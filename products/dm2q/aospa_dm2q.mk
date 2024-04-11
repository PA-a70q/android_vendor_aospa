#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_dm2q,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/samsung/dm2q/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := aospa_dm2q
PRODUCT_DEVICE := dm2q
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-S9160
PRODUCT_MANUFACTURER := Samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dm2qzhx-user 14 UP1A.231005.007 S9160ZHS4CXG2 release-keys"

BUILD_FINGERPRINT := samsung/dm2qzhx/dm2q:14/UP1A.231005.007/S9160ZHS4CXG2:user/release-keys

endif
