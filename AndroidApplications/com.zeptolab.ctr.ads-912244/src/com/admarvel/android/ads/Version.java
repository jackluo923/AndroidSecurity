package com.admarvel.android.ads;

import android.os.Build.VERSION;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

public class Version {
    public static final String ADMARVEL_API_VERSION = "1.5";
    public static final String SDK_VERSION = "2.4.5.9";
    public static final String SDK_VERSION_DATE = "2014-09-02";

    public static int getAndroidSDKVersion() {
        return VERSION.RELEASE.contains(ADMARVEL_API_VERSION) ? IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE : v.a();
    }

    static final String getSDKSupported() {
        String str = AdTrackerConstants.BLANK;
        try {
            if (AdMarvelAdapterInstances.getAdapterInstance(Constants.GOOGLEPLAY_SDK_ADAPTER_FULL_CLASSNAME) != null && j.a(Constants.GOOGLEPLAY_SDK_FULL_CLASSNAME) && getAndroidSDKVersion() > 8) {
                str = str + "_googleplay_admob";
            }
        } catch (Exception e) {
        }
        try {
            if (AdMarvelAdapterInstances.getAdapterInstance(Constants.RHYTHM_SDK_ADAPTER_FULL_CLASSNAME) != null && j.a(Constants.RHYTHM_SDK_FULL_CLASSNAME)) {
                str = str + "_rhythm";
            }
        } catch (Exception e2) {
        }
        try {
            if (AdMarvelAdapterInstances.getAdapterInstance(Constants.GREYSTRIPE_SDK_ADAPTER_FULL_CLASSNAME) != null && j.a(Constants.GREYSTRIPE_SDK_FULL_CLASSNAME)) {
                str = str + "_greystripe";
            }
        } catch (Exception e3) {
        }
        try {
            if (AdMarvelAdapterInstances.getAdapterInstance(Constants.MILLENNIAL_SDK_APAPTER_FULL_CLASSNAME) != null && j.a(Constants.MILLENNIAL_SDK_FULL_CLASSNAME)) {
                str = str + "_millennial";
            }
        } catch (Exception e4) {
        }
        try {
            if (AdMarvelAdapterInstances.getAdapterInstance(Constants.AMAZON_SDK_APAPTER_FULL_CLASSNAME) != null && j.a(Constants.AMAZON_SDK_FULL_CLASSNAME)) {
                str = str + "_amazon";
            }
        } catch (Exception e5) {
        }
        try {
            if (AdMarvelAdapterInstances.getAdapterInstance(Constants.ADCOLONY_SDK_APAPTER_FULL_CLASSNAME) != null && j.a(Constants.ADCOLONY_SDK_FULL_CLASSNAME)) {
                str = str + "_adcolony";
            }
        } catch (Exception e6) {
        }
        try {
            if (AdMarvelAdapterInstances.getAdapterInstance(Constants.PULSE3D_SDK_APAPTER_FULL_CLASSNAME) != null && j.a(Constants.PULSE3D_SDK_FULL_CLASSNAME) && getAndroidSDKVersion() > 15) {
                str = str + "_pulse3d";
            }
        } catch (Exception e7) {
        }
        try {
            if (AdMarvelAdapterInstances.getAdapterInstance(Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME) != null && j.a(Constants.FACEBOOK_SDK_FULL_CLASSNAME) && getAndroidSDKVersion() > 7) {
                str = str + "_facebook";
            }
        } catch (Exception e8) {
        }
        try {
            if (AdMarvelAdapterInstances.getAdapterInstance(Constants.INMOBI_SDK_APAPTER_FULL_CLASSNAME) != null && j.a(Constants.INMOBI_SDK_FULL_CLASSNAME)) {
                str = str + "_inmobi";
            }
        } catch (Exception e9) {
        }
        try {
            return (AdMarvelAdapterInstances.getAdapterInstance(Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME) == null || Class.forName(Constants.HEYZAP_SDK_FULL_CLASSNAME) == null) ? str : str + "_heyzap";
        } catch (Exception e10) {
            return str;
        }
    }

    static final String getVersionDump() {
        String str = AdTrackerConstants.BLANK;
        try {
            AdMarvelAdapter adapterInstance = AdMarvelAdapterInstances.getAdapterInstance(Constants.GOOGLEPLAY_SDK_ADAPTER_FULL_CLASSNAME);
            if (adapterInstance != null && j.a(Constants.GOOGLEPLAY_SDK_FULL_CLASSNAME) && getAndroidSDKVersion() > 8) {
                str = str + "googleplay: found, " + adapterInstance.getAdnetworkSDKVersionInfo() + Constants.FORMATTER;
            }
        } catch (Exception e) {
            str = str + "googleplay: NOT found, admarvel-android-sdk-googleplay-adapter.jar NOT in classpath\n";
        }
        try {
            adapterInstance = AdMarvelAdapterInstances.getAdapterInstance(Constants.RHYTHM_SDK_ADAPTER_FULL_CLASSNAME);
            if (adapterInstance != null && j.a(Constants.RHYTHM_SDK_FULL_CLASSNAME)) {
                str = str + "rhythm: found, " + adapterInstance.getAdnetworkSDKVersionInfo() + Constants.FORMATTER;
            }
        } catch (Exception e2) {
            str = str + "rhythm: NOT found, admarvel-android-sdk-rhythm-adapter.jar NOT in classpath\n";
        }
        try {
            adapterInstance = AdMarvelAdapterInstances.getAdapterInstance(Constants.GREYSTRIPE_SDK_ADAPTER_FULL_CLASSNAME);
            if (adapterInstance != null && j.a(Constants.GREYSTRIPE_SDK_FULL_CLASSNAME)) {
                str = str + "greystripe: found, " + adapterInstance.getAdnetworkSDKVersionInfo() + Constants.FORMATTER;
            }
        } catch (Exception e3) {
            str = str + "greystripe: NOT found, admarvel-android-sdk-greystripe-adapter.jar NOT in classpath\n";
        }
        try {
            adapterInstance = AdMarvelAdapterInstances.getAdapterInstance(Constants.MILLENNIAL_SDK_APAPTER_FULL_CLASSNAME);
            if (adapterInstance != null && j.a(Constants.MILLENNIAL_SDK_FULL_CLASSNAME)) {
                str = str + "millennial: found, " + adapterInstance.getAdnetworkSDKVersionInfo() + Constants.FORMATTER;
            }
        } catch (Exception e4) {
            str = str + "millennial: NOT found, admarvel-android-sdk-millennial-adapter.jar NOT in classpath\n";
        }
        try {
            adapterInstance = AdMarvelAdapterInstances.getAdapterInstance(Constants.AMAZON_SDK_APAPTER_FULL_CLASSNAME);
            if (adapterInstance != null && j.a(Constants.AMAZON_SDK_FULL_CLASSNAME)) {
                str = str + "amazon: found, " + adapterInstance.getAdnetworkSDKVersionInfo() + Constants.FORMATTER;
            }
        } catch (Exception e5) {
            str = str + "amazon: NOT found, admarvel-android-sdk-amazon-adapter.jar NOT in classpath\n";
        }
        try {
            adapterInstance = AdMarvelAdapterInstances.getAdapterInstance(Constants.ADCOLONY_SDK_APAPTER_FULL_CLASSNAME);
            if (adapterInstance != null && j.a(Constants.ADCOLONY_SDK_FULL_CLASSNAME)) {
                str = str + "adcolony: found, " + adapterInstance.getAdnetworkSDKVersionInfo() + Constants.FORMATTER;
            }
        } catch (Exception e6) {
            str = str + "adcolony: NOT found, admarvel-android-sdk-adcolony-adapter.jar NOT in classpath\n";
        }
        try {
            adapterInstance = AdMarvelAdapterInstances.getAdapterInstance(Constants.PULSE3D_SDK_APAPTER_FULL_CLASSNAME);
            if (adapterInstance != null && j.a(Constants.PULSE3D_SDK_FULL_CLASSNAME)) {
                str = str + "pulse3d: found, " + adapterInstance.getAdnetworkSDKVersionInfo() + Constants.FORMATTER;
            }
        } catch (Exception e7) {
            str = str + "pulse3d: NOT found, admarvel-android-sdk-pulse3d-adapter.jar NOT in classpath\n";
        }
        try {
            adapterInstance = AdMarvelAdapterInstances.getAdapterInstance(Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME);
            if (adapterInstance != null && j.a(Constants.FACEBOOK_SDK_FULL_CLASSNAME)) {
                str = str + "facebook: found, " + adapterInstance.getAdnetworkSDKVersionInfo() + Constants.FORMATTER;
            }
        } catch (Exception e8) {
            str = str + "facebook: NOT found, admarvel-android-sdk-facebook-adapter.jar NOT in classpath\n";
        }
        try {
            adapterInstance = AdMarvelAdapterInstances.getAdapterInstance(Constants.INMOBI_SDK_APAPTER_FULL_CLASSNAME);
            if (adapterInstance != null && j.a(Constants.INMOBI_SDK_FULL_CLASSNAME)) {
                str = str + "inmobi: found, " + adapterInstance.getAdnetworkSDKVersionInfo() + Constants.FORMATTER;
            }
        } catch (Exception e9) {
            str = str + "inmobi: NOT found, admarvel-android-sdk-inmobi-adapter.jar NOT in classpath\n";
        }
        try {
            adapterInstance = AdMarvelAdapterInstances.getAdapterInstance(Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME);
            return (adapterInstance == null || Class.forName(Constants.HEYZAP_SDK_FULL_CLASSNAME) == null) ? str : str + "heyzap: found, " + adapterInstance.getAdnetworkSDKVersionInfo() + Constants.FORMATTER;
        } catch (Exception e10) {
            return str + "heyzap: NOT found, admarvel-android-sdk-heyzap-adapter.jar NOT in classpath\n";
        }
    }
}