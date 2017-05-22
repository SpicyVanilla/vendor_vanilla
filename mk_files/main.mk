PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    ro.build.selinux=1 \
    ro.adb.secure=0 \
    ro.setupwizard.rotation_locked=true \
    ro.opa.eligible_device=true \
    persist.sys.disable_rescue=true \
    ro.boot.vendor.overlay.theme=com.google.android.theme.pixel \
    audio.safemedia.bypass=true

# Speed up compiling time
EXCLUDE_SYSTEMUI_TESTS := true

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/vanilla/overlay

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/vanilla/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/vanilla/prebuilt/bin/sysinit:system/bin/sysinit

# SpicyVanilla-specific init file
PRODUCT_COPY_FILES += \
    vendor/vanilla/prebuilt/etc/init.spicyvanilla.rc:root/init.spicyvanilla.rc

# Extra packages
PRODUCT_PACKAGES += \
    Stk

# Themes
PRODUCT_PACKAGES += \
    Pixel \
    Stock

# Boot animation
$(call inherit-product-if-exists, vendor/vanilla/mk_files/bootanimation.mk)
