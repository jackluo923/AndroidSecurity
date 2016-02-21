package com.facebook.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import com.facebook.ads.internal.StringUtils;
import java.util.Collection;
import java.util.HashSet;
import java.util.UUID;

public class AdSettings {
    private static final String DEVICE_ID_HASH_PREFS_KEY = "deviceIdHash";
    private static final String PREFS_NAME = "FBAdPrefs";
    public static final String TAG;
    private static boolean childDirected;
    private static String deviceIdHash;
    private static final Collection emulatorProducts;
    static volatile boolean testDeviceNoticeDisplayed;
    private static final Collection testDevices;
    private static String urlPrefix;

    static {
        TAG = AdSettings.class.getSimpleName();
        urlPrefix = null;
        childDirected = false;
        deviceIdHash = null;
        testDevices = new HashSet();
        emulatorProducts = new HashSet();
        emulatorProducts.add("sdk");
        emulatorProducts.add("google_sdk");
        emulatorProducts.add("vbox86p");
        emulatorProducts.add("vbox86tp");
        testDeviceNoticeDisplayed = false;
    }

    public static void addTestDevice(String str) {
        testDevices.add(str);
    }

    public static void addTestDevices(Collection collection) {
        testDevices.addAll(collection);
    }

    public static void clearTestDevices() {
        testDevices.clear();
    }

    public static String getUrlPrefix() {
        return urlPrefix;
    }

    public static boolean isChildDirected() {
        return childDirected;
    }

    public static boolean isTestMode(Context context) {
        if (emulatorProducts.contains(Build.PRODUCT)) {
            return true;
        }
        if (deviceIdHash == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(PREFS_NAME, 0);
            deviceIdHash = sharedPreferences.getString(DEVICE_ID_HASH_PREFS_KEY, null);
            if (StringUtils.isNullOrEmpty(deviceIdHash)) {
                deviceIdHash = StringUtils.md5(UUID.randomUUID().toString());
                sharedPreferences.edit().putString(DEVICE_ID_HASH_PREFS_KEY, deviceIdHash).commit();
            }
        }
        if (testDevices.contains(deviceIdHash)) {
            return true;
        }
        printTestDeviceNotice(deviceIdHash);
        return false;
    }

    private static void printTestDeviceNotice(String str) {
        if (!testDeviceNoticeDisplayed) {
            testDeviceNoticeDisplayed = true;
            Log.d(TAG, "Test mode device hash: " + str);
            Log.d(TAG, "When testing your app with Facebook's ad units you must specify the device hashed ID to ensure the delivery of test ads, add the following code before loading an ad: AdSettings.addTestDevice(\"" + str + "\");");
        }
    }

    public static void setIsChildDirected(boolean z) {
        childDirected = z;
    }

    public static void setUrlPrefix(String str) {
        urlPrefix = str;
    }
}