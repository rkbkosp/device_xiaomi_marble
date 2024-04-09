#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common lineage configuration
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_marble
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23049PCD8G

PRODUCT_SYSTEM_NAME := marble_global
PRODUCT_SYSTEM_DEVICE := marble

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="marble_global-user 13 TKQ1.221022.001 V14.0.7.0.TMRMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/marble_global/marble:13/TKQ1.221022.001/V14.0.7.0.TMRMIXM:user/release-keys


# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_GAPPS_ARCH := arm64

# Matrixx
MATRIXX_BUILD_TYPE := Official
MATRIXX_MAINTAINER := KSSRAO
MATRIXX_CHIPSET := SM7475
MATRIXX_BATTERY := 5000mah
MATRIXX_DISPLAY := 1080x2400

# Gapps
WITH_GMS := true
BUILD_GOOGLE_MESSAGE := true

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# Nuke Auxio
TARGET_EXCLUDES_AUXIO := true
