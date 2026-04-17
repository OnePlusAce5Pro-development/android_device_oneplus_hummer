#
# Copyright (C) 2021-2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hummer device
$(call inherit-product, device/oneplus/hummer/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_hummer
PRODUCT_DEVICE := hummer
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PKR110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1775721942795 release-keys" \
    BuildFingerprint=OnePlus/PKR110/OP60EBL1:16/BP2A.250605.015/1775721942795:user/release-keys \
    DeviceName=OP60EBL1 \
    DeviceProduct=PKR110 \
    SystemDevice=OP60EBL1 \
    SystemName=PKR110
