package com.jirbo.adcolony;

import android.app.ActivityManager;
import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.Locale;

class ADCDevice {
    static String advertising_id;
    static boolean limit_ad_tracking;

    static {
        advertising_id = AdTrackerConstants.BLANK;
    }

    ADCDevice() {
    }

    static String android_id() {
        return Secure.getString(AdColony.activity().getContentResolver(), "android_id");
    }

    static String carrier_name() {
        String networkOperatorName = ((TelephonyManager) AdColony.activity().getSystemService(ZBuildConfig.device)).getNetworkOperatorName();
        return networkOperatorName.length() == 0 ? DeviceInfo.ORIENTATION_UNKNOWN : networkOperatorName;
    }

    static String device_id() {
        return Installation.id(ADC.activity());
    }

    static int display_height() {
        return ADC.activity().getWindowManager().getDefaultDisplay().getHeight();
    }

    static int display_width() {
        return ADC.activity().getWindowManager().getDefaultDisplay().getWidth();
    }

    static String imei() {
        return AdTrackerConstants.BLANK;
    }

    static boolean is_tablet() {
        DisplayMetrics displayMetrics = AdColony.activity().getResources().getDisplayMetrics();
        float f = ((float) displayMetrics.widthPixels) / displayMetrics.xdpi;
        float f2 = ((float) displayMetrics.heightPixels) / displayMetrics.ydpi;
        f2 *= f2;
        return Math.sqrt((double) (f2 + (f * f))) >= 6.0d;
    }

    static String language() {
        return Locale.getDefault().getLanguage();
    }

    static String mac_address() {
        try {
            return ((WifiManager) AdColony.activity().getSystemService("wifi")).getConnectionInfo().getMacAddress();
        } catch (RuntimeException e) {
            return null;
        }
    }

    static String manufacturer() {
        return Build.MANUFACTURER;
    }

    static int memory_class() {
        Context applicationContext = ADC.activity().getApplicationContext();
        ADC.activity();
        return ((ActivityManager) applicationContext.getSystemService("activity")).getMemoryClass();
    }

    static long memory_used() {
        Runtime runtime = Runtime.getRuntime();
        return (runtime.totalMemory() - runtime.freeMemory()) / ((long) 1048576);
    }

    static String model() {
        return Build.MODEL;
    }

    static String open_udid() {
        return AdTrackerConstants.BLANK;
    }

    static String os_version() {
        return VERSION.RELEASE;
    }
}