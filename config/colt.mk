# Copyright (C) 2016-2017 ColtOS
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

COLT_TAG=Smoky

# COLT RELEASE VERSION
COLT_VERSION_MAJOR = 2
COLT_VERSION_MINOR = 2
COLT_VERSION_MAINTENANCE =

VERSION := $(COLT_VERSION_MAJOR).$(COLT_VERSION_MINOR)$(COLT_VERSION_MAINTENANCE)


ifndef COLT_BUILDTYPE
    ifdef RELEASE_TYPE
        # Starting with "COLT_" is optional
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^COLT_||g')
        COLT_BUILDTYPE := $(RELEASE_TYPE)
    endif
endif

ifeq ($(COLT_BUILDTYPE), OFFICIAL)
    COLT_VERSION := ColtOS-$(COLT_TAG)-$(VERSION)_$(COLT_BUILDTYPE)-$(shell date -u +%Y%m%d)-$(COLT_BUILD)

else ifeq ($(COLT_BUILDTYPE), EXPERIMENTAL)
    COLT_VERSION := ColtOS-$(COLT_TAG)-$(VERSION)_$(COLT_BUILDTYPE)-$(shell date -u +%Y%m%d)-$(COLT_BUILD) 

else
    # If COLT_BUILDTYPE is not defined, set to UNOFFICIAL
    COLT_BUILDTYPE := UNOFFICIAL
    COLT_VERSION := ColtOS-$(COLT_TAG)-$(VERSION)_$(COLT_BUILDTYPE)-$(shell date -u +%Y%m%d)-$(COLT_BUILD)
endif


PRODUCT_PROPERTY_OVERRIDES += \
    ro.colt.releasetype=$(COLT_BUILDTYPE) \
    ro.modversion=$(COLT_VERSION) \
    ro.colt.version=$(VERSION)-$(COLT_BUILDTYPE) \
    ro.colt.device=$(COLT_BUILD) \
    ro.mod.version=$(COLT_VERSION) \
    ro.colt.display.version=$(COLT_VERSION)

# ColtOS theme
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.vendor.overlay.theme=com.google.android.theme.stock

# ColtOS New Fonts
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/fonts/gobold/Gobold.ttf:system/fonts/Gobold.ttf \
    vendor/colt/prebuilt/fonts/gobold/Gobold-Italic.ttf:system/fonts/Gobold-Italic.ttf \
    vendor/colt/prebuilt/fonts/gobold/GoboldBold.ttf:system/fonts/GoboldBold.ttf \
    vendor/colt/prebuilt/fonts/gobold/GoboldBold-Italic.ttf:system/fonts/GoboldBold-Italic.ttf \
    vendor/colt/prebuilt/fonts/gobold/GoboldThinLight.ttf:system/fonts/GoboldThinLight.ttf \
    vendor/colt/prebuilt/fonts/gobold/GoboldThinLight-Italic.ttf:system/fonts/GoboldThinLight-Italic.ttf \
    vendor/colt/prebuilt/fonts/roadrage/road_rage.ttf:system/fonts/RoadRage-Regular.ttf \
    vendor/colt/prebuilt/fonts/snowstorm/snowstorm.ttf:system/fonts/Snowstorm-Regular.ttf \
    vendor/colt/prebuilt/fonts/vcrosd/vcr_osd_mono.ttf:system/fonts/ThemeableFont-Regular.ttf

# ColtOS Export Zip
export COLT_TARGET_ZIP := $(COLT_VERSION).zip
