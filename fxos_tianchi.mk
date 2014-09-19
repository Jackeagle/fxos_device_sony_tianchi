# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

QCOM_CHIPSET_FAMILY := msm8226

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

# Inherit from huashan makefile
$(call inherit-product, device/sony/tianchi/tianchi.mk)

# FxOS pixel density
GAIA_DEV_PIXELS_PER_PX := 1.5

# FxOS SDCards
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/volume.cfg:system/etc/volume.cfg

# Common FxOS Sony Resources
$(call inherit-product, device/sony/common/fxos_common.mk)

# Set ROM specific product name.
PRODUCT_NAME := fxos_tianchi
PRODUCT_DEVICE := tianchi
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia T2 Ultra
