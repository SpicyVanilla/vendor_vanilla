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
    ro.opa.eligible_device=true

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/vanilla/overlay

# Extra packages
PRODUCT_PACKAGES += \
    Stk

