package com.zeptolab.utils;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Debug.MemoryInfo;
import android.os.Process;
import android.provider.Settings.Secure;
import android.text.format.DateFormat;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.CtrApp;
import com.zeptolab.ctr.L;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class SystemInfo {
    private static final String TAG = "CTR";
    public static String UNDEFINED;
    protected static boolean storeTextureInRAM;

    static {
        UNDEFINED = "UNDEFINED";
        storeTextureInRAM = true;
    }

    public static String formatDate(int i, int i2, int i3) {
        L.i("SystemInfo", "formatDate, year = " + i + ", month = " + i2 + ", day = " + i3);
        Context context = CtrApp.getContext();
        return DateFormat.getDateFormat(context).format(new GregorianCalendar(i, i2 - 1, i3).getTime());
    }

    public static String getAdvertisingId() {
        String str = null;
        try {
            Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(CtrApp.getInstance());
        } catch (IllegalStateException e) {
            L.w(TAG, e.getLocalizedMessage());
            String str2 = str;
        } catch (GooglePlayServicesRepairableException e2) {
            L.w(TAG, e2.getLocalizedMessage());
            str2 = str;
        } catch (IOException e3) {
            L.w(TAG, e3.getLocalizedMessage());
            str2 = str;
        } catch (GooglePlayServicesNotAvailableException e4) {
            L.w(TAG, "Google Play Services Not Available");
            str2 = str;
        }
        return advertisingIdInfo != null ? advertisingIdInfo.getId() : str;
    }

    public static String getAndroidId() {
        String string = Secure.getString(CtrApp.getContext().getContentResolver(), "android_id");
        return string != null ? string : UNDEFINED;
    }

    public static int getAndroidVersion() {
        return VERSION.SDK_INT;
    }

    public static String getAppMarket() {
        return ZBuildConfig.market;
    }

    public static String getAppName() {
        Activity instance = CtrApp.getInstance();
        try {
            return instance.getResources().getString(instance.getPackageManager().getActivityInfo(instance.getComponentName(), 0).labelRes);
        } catch (Exception e) {
            return UNDEFINED;
        }
    }

    public static String getAppProfiles() {
        return ZBuildConfig.profiles;
    }

    public static String getAppVersion() {
        Context context = CtrApp.getContext();
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            return UNDEFINED;
        }
    }

    public static String getCountryISOCode() {
        return Locale.getDefault().getCountry().toUpperCase();
    }

    public static float getDensityMagic() {
        Activity instance = CtrApp.getInstance();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        instance.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return ((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / 2.54f;
    }

    public static String getDeviceBrand() {
        return Build.BRAND;
    }

    public static String getDeviceManufacturer() {
        return Build.MANUFACTURER;
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    public static String[] getInstalledApps(ArrayList arrayList) {
        Context context = CtrApp.getContext();
        String packageName = getPackageName();
        List arrayList2 = new ArrayList();
        Iterator it = context.getPackageManager().getInstalledPackages(0).iterator();
        while (it.hasNext()) {
            PackageInfo packageInfo = (PackageInfo) it.next();
            String str = packageInfo.packageName;
            if (str.startsWith("com.zeptolab") && !str.equals(packageName) && str.length() > 0) {
                arrayList2.add(str + ":" + packageInfo.versionName);
            }
        }
        return (String[]) arrayList2.toArray(new String[arrayList2.size()]);
    }

    public static String getMacAddress() {
        try {
            String macAddress = ((WifiManager) CtrApp.getContext().getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (macAddress != null) {
                return macAddress;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return UNDEFINED;
    }

    public static int getNetworkType() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) CtrApp.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return 0;
        }
        switch (activeNetworkInfo.getType()) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
            case GoogleScorer.CLIENT_PLUS:
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
            case GoogleScorer.CLIENT_APPSTATE:
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return 2;
            case GoogleScorer.CLIENT_GAMES:
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return 1;
            default:
                return 2;
        }
    }

    public static String getOSVersion() {
        return VERSION.RELEASE;
    }

    public static String getPackageName() {
        return CtrApp.getContext().getPackageName();
    }

    public static String getPhoneModel() {
        return Build.MODEL;
    }

    public static boolean getStoreTextureInRAM() {
        return storeTextureInRAM;
    }

    public static String getTimezone() {
        return new SimpleDateFormat("Z").format(new Date());
    }

    public static boolean isLargeHeap(ActivityManager activityManager) {
        return VERSION.SDK_INT >= 5 && new getMemoryHelper().getMemory(activityManager) >= 36;
    }

    public static boolean isNetworkAvailable() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) CtrApp.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @TargetApi(5)
    public static void logDebugMemoryInfo(Activity activity) {
        try {
            MemoryInfo memoryInfo = ((ActivityManager) activity.getSystemService("activity")).getProcessMemoryInfo(new int[]{Process.myPid()})[0];
            Log.w(TAG, "DebugMemoryInfo : ");
            Log.w(TAG, "dalvikPrivateDirty: " + memoryInfo.dalvikPrivateDirty);
            Log.w(TAG, "dalvikPss: " + memoryInfo.dalvikPss);
            Log.w(TAG, "dalvikSharedDirty: " + memoryInfo.dalvikSharedDirty);
            Log.w(TAG, "nativePrivateDirty: " + memoryInfo.nativePrivateDirty);
            Log.w(TAG, "nativePss: " + memoryInfo.nativePss);
            Log.w(TAG, "nativeSharedDirty: " + memoryInfo.nativeSharedDirty);
            Log.w(TAG, "otherPrivateDirty: " + memoryInfo.otherPrivateDirty);
            Log.w(TAG, "otherPss: " + memoryInfo.otherPss);
            Log.w(TAG, "otherSharedDirty: " + memoryInfo.otherSharedDirty);
            Log.w(TAG, "getTotalPrivateDirty: " + memoryInfo.getTotalPrivateDirty());
            Log.w(TAG, "getTotalPss: " + memoryInfo.getTotalPss());
            Log.w(TAG, "getTotalSharedDirty: " + memoryInfo.getTotalSharedDirty());
        } catch (Exception e) {
            Log.e(TAG, AdTrackerConstants.BLANK, e);
        }
    }

    public static void logMemoryInfo(Activity activity) {
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) activity.getSystemService("activity")).getMemoryInfo(memoryInfo);
            Log.w(TAG, "MemoryInfo: ");
            Log.w(TAG, "Available mem : " + memoryInfo.availMem);
            Log.w(TAG, "Low mem : " + memoryInfo.lowMemory);
        } catch (Exception e) {
            Log.e(TAG, AdTrackerConstants.BLANK, e);
        }
    }

    public static void setStoreTextureInRAM(boolean z) {
        storeTextureInRAM = z;
    }
}