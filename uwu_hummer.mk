#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hummer device
$(call inherit-product, device/oneplus/hummer/device.mk)

# Inherit some common uwuAOSP stuff.
$(call inherit-product, vendor/uwu/config/common.mk)
UWU_DEVICE_TYPE := phone
UWU_SUPPORTS_TELEPHONY := true
UWU_MAINTAINER := awa_xaga

PRODUCT_NAME := uwu_hummer
PRODUCT_DEVICE := hummer
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PKR110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 16 BP2A.250605.015 1783396348784 release-keys" \
    BuildFingerprint=OnePlus/CPH2653EEA/OP5D55L1:16/BP2A.250605.015/1783396348784:user/release-keys \
    DeviceName=OP60EBL1 \
    DeviceProduct=PKR110 \
    SystemDevice=OP60EBL1 \
    SystemName=PKR110
