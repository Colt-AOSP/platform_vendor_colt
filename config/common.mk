PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/colt/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/colt/prebuilt/common/bin/50-base.sh:system/addon.d/50-base.sh \

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.build.selinux=1 \
    ro.carrier=unknown

PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/colt/prebuilt/common/bin/sysinit:system/bin/sysinit

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Init file
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/etc/init.local.rc:root/init.colt.rc

# LatinIME gesture typing
ifeq ($(TARGET_ARCH),arm64)
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so \
    vendor/colt/prebuilt/common/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinimegoogle.so
else
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/colt/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so
endif

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# Fix Dialer
PRODUCT_COPY_FILES +=  \
    vendor/colt/prebuilt/common/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml 

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/colt/overlay/common

# Include LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/colt/overlay/dictionaries

# Packages
include vendor/colt/config/packages.mk

# ColtVersion
include vendor/colt/config/colt.mk

# Bootanimation
$(call inherit-product, vendor/colt/config/bootanimation.mk)

# Disable Rescue Party
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true

# Include SDCLANG definitions if it is requested and available
ifeq ($(HOST_OS),linux)
    ifneq ($(wildcard vendor/qcom/sdclang-4.0/),)
        include vendor/colt/sdclang/sdclang.mk
    endif
endif
