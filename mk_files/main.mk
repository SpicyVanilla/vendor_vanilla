PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.control_privapp_permissions=enforce \
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
    audio.safemedia.bypass=true \
    ro.com.google.ime.theme_id=5 \
    ro.wallpapers_loc_request_suw=true \
    ro.sf.lcd_density=391

# Enable USB debugging
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.secure=0 \
    ro.debuggable=1

# Disable excessive dalvik debug messages
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# Jack server heap size
export ANDROID_JACK_VM_ARGS += "-Xmx4096m"

# Speed up compiling time
EXCLUDE_SYSTEMUI_TESTS := true

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/vanilla/overlay

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Extra packages
PRODUCT_PACKAGES += \
    Busybox \
    LiveWallpapersPicker \
    Stk

# Themes
PRODUCT_PACKAGES += \
    Pixel \
    Stock

# Boot animation
$(call inherit-product-if-exists, vendor/vanilla/mk_files/bootanimation.mk)

# Inherit gapps
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)

