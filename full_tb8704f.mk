#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from addison device
$(call inherit-product, device/lenovo/tb8704f/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tb8704f
PRODUCT_NAME := full_tb8704f

$(call inherit-product-if-exists, vendor/lenovo/tb8704f/tb8704f-vendor.mk)
