package com.heyzap.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Looper;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import android.view.View;
import com.admarvel.android.ads.Constants;
import com.google.android.gms.cast.Cast;
import com.heyzap.house.Manager;
import com.heyzap.sdk.ads.HeyzapAds;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class Utils {
    private static final String CACHE_DIR = "com.heyzap.sdk";
    public static final String HEYZAP_PACKAGE = "com.heyzap.android";
    private static String advertisingId;
    private static Future advertisingIdAvailable;
    private static HashMap cachedParams;
    private static float density;
    private static String deviceId;
    private static Boolean limitAdTrackingEnabled;
    private static String packageName;
    public static String publisherId;
    ExecutorService executorPool;

    static interface a {
        void a_(String str);

        void a_(Throwable th);
    }

    static {
        density = -1.0f;
        deviceId = DeviceInfo.ORIENTATION_UNKNOWN;
        packageName = DeviceInfo.ORIENTATION_UNKNOWN;
        advertisingId = null;
        limitAdTrackingEnabled = Boolean.valueOf(false);
        publisherId = null;
    }

    public Utils() {
        this.executorPool = Executors.newCachedThreadPool();
    }

    public static boolean androidVersionSupported() {
        boolean z = false;
        try {
            return Integer.parseInt(VERSION.SDK) < 7 ? z : true;
        } catch (Exception e) {
            return z;
        }
    }

    public static String capitalize(String str) {
        return str.substring(0, 1).toUpperCase() + str.substring(1);
    }

    public static void clickWrap(Context context, View view, View view2) {
        clickWrap(context, view, view2, 0);
    }

    public static void clickWrap(Context context, View view, View view2, int i) {
        clickWrap(context, view, view2, i, i, i, i);
    }

    public static void clickWrap(Context context, View view, View view2, int i, int i2, int i3, int i4) {
        if (view != null) {
            view.post(new f(view, context, i, i2, i3, i4, view2));
        }
    }

    private static String convertStreamToString(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder stringBuilder = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    stringBuilder.append(readLine + Constants.FORMATTER);
                } else {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return stringBuilder.toString();
                }
            } catch (IOException e2) {
                try {
                    e2.printStackTrace();
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                } catch (Throwable th) {
                    try {
                        inputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    public static void createCacheDir(Context context) {
        File file = new File(getCacheDirAbsolutePath(context));
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    public static int daysBetween(Date date, Date date2) {
        return Math.abs((int) ((date.getTime() - date2.getTime()) / 86400000));
    }

    public static void deleteDirectory(File file) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            int length = listFiles.length;
            int i = 0;
            while (i < length) {
                deleteDirectory(listFiles[i]);
                i++;
            }
        }
        file.delete();
    }

    public static int dpToPx(Context context, int i) {
        density = density > 0.0f ? density : context.getResources().getDisplayMetrics().density;
        return (int) (((float) i) * density + 0.5f);
    }

    public static Boolean externalStorageIsAvailableAndWritable() {
        boolean z = true;
        String externalStorageState = Environment.getExternalStorageState();
        boolean z2;
        boolean z3;
        if ("mounted".equals(externalStorageState)) {
            z2 = true;
            z3 = true;
        } else if ("mounted_ro".equals(externalStorageState)) {
            z2 = false;
            z3 = true;
        } else {
            z2 = false;
            z3 = false;
        }
        if (i == 0 || i == 0) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    static HashMap extraParams(Context context) {
        if (cachedParams == null) {
            cachedParams = new HashMap();
            Object valueOf = Integer.valueOf(0);
            try {
                valueOf = Integer.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (Exception e) {
                e.printStackTrace();
            }
            cachedParams.put("app_version", String.valueOf(valueOf));
            context.getResources().getDisplayMetrics();
            cachedParams = new HashMap();
            cachedParams.put("sdk_version", Analytics.HEYZAP_SDK_VERSION);
            cachedParams.put("android_version", VERSION.SDK);
            cachedParams.put("game_package", getPackageName(context));
            cachedParams.put("device_form_factor", isTablet(context) ? "tablet" : ZBuildConfig.device);
            cachedParams.put("device_model", Build.MODEL);
            cachedParams.put("device_type", Build.DEVICE);
            if (publisherId != null) {
                cachedParams.put("publisher_id", publisherId);
            }
            if (isAmazon()) {
                cachedParams.put("sdk_platform", "amazon");
            } else {
                cachedParams.put("sdk_platform", "android");
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.putAll(cachedParams);
        if (getAdvertisingId() == null || isAmazon()) {
            hashMap.put("device_id", getDeviceId(context));
        } else {
            hashMap.put("device_id", getAdvertisingId());
            hashMap.put("advertising_id", getAdvertisingId());
            hashMap.put("tracking_enabled", getLimitAdTrackingEnabled().booleanValue() ? "0" : "1");
        }
        return hashMap;
    }

    public static String getAbsolutePath(Context context, String str) {
        return String.format("%s/files/%s", new Object[]{context.getCacheDir().getAbsolutePath(), str});
    }

    public static String getAdvertisingId() {
        try {
            Boolean bool = (Boolean) advertisingIdAvailable.get();
            return advertisingId;
        } catch (InterruptedException e) {
            e.printStackTrace();
            return advertisingId;
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            return advertisingId;
        }
    }

    public static String getAppLabel(Context context) {
        String str = null;
        try {
            Object applicationLabel = context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0));
        } catch (NameNotFoundException e) {
            String str2 = str;
        }
        return applicationLabel == null ? str : applicationLabel.toString();
    }

    public static String getCacheDirAbsolutePath(Context context) {
        if (context == null) {
            return null;
        }
        return String.format("%s/%s", new Object[]{context.getCacheDir(), CACHE_DIR});
    }

    public static String getCachePath(Context context, String str) {
        if (context == null || str == null) {
            return null;
        }
        return String.format("%s/%s", new Object[]{getCacheDirAbsolutePath(context), str});
    }

    public static String getDeviceId(Context context) {
        if (deviceId.equals(DeviceInfo.ORIENTATION_UNKNOWN) && context != null) {
            String str = Build.PRODUCT;
            String string = Secure.getString(context.getContentResolver(), "android_id");
            if (!(str == null || string == null)) {
                deviceId = str + "_" + string;
            }
        }
        return deviceId;
    }

    public static int getInverseScaledSize(Context context, float f) {
        if (density <= 0.0f) {
            density = context.getResources().getDisplayMetrics().density;
        }
        return (int) (f / density);
    }

    public static int getInverseScaledSize(Context context, int i) {
        return getInverseScaledSize(context, (float) i);
    }

    public static Boolean getLimitAdTrackingEnabled() {
        try {
            Boolean bool = (Boolean) advertisingIdAvailable.get();
            return limitAdTrackingEnabled;
        } catch (InterruptedException e) {
            e.printStackTrace();
            return limitAdTrackingEnabled;
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            return limitAdTrackingEnabled;
        }
    }

    public static String getPackageName(Context context) {
        if (packageName.equals(DeviceInfo.ORIENTATION_UNKNOWN) && context != null) {
            packageName = context.getPackageName();
        }
        return packageName;
    }

    public static Integer getPackageVersion(Context context) {
        Integer valueOf = Integer.valueOf(0);
        try {
            return Integer.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception e) {
            e.printStackTrace();
            return valueOf;
        }
    }

    public static int getScaledSize(Context context, float f) {
        if (density <= 0.0f) {
            density = context.getResources().getDisplayMetrics().density;
        }
        return (int) (density * f);
    }

    public static int getScaledSize(Context context, int i) {
        return getScaledSize(context, (float) i);
    }

    public static int getSdkVersion() {
        return VERSION.SDK_INT;
    }

    public static String getSignatureHash(Context context) {
        String str = AdTrackerConstants.BLANK;
        try {
            return Base64.encodeToString(MessageDigest.getInstance("SHA-1").digest(context.getPackageManager().getPackageInfo(context.getPackageName(), AccessibilityNodeInfoCompat.ACTION_ACCESSIBILITY_FOCUS).signatures[0].toByteArray()), GoogleScorer.CLIENT_PLUS);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return str;
        } catch (NameNotFoundException e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        return identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
    }

    public static String hex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (i < bArr.length) {
            stringBuffer.append(Integer.toHexString((bArr[i] & 255) | 256).substring(1, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
            i++;
        }
        return stringBuffer.toString();
    }

    public static boolean heyzapIsInstalled(Context context) {
        return packageIsInstalled(HEYZAP_PACKAGE, context);
    }

    public static void installHeyzap(Context context, String str) {
        String format = String.format(Manager.ACTION_URL_PLACEHOLDER, new Object[]{HEYZAP_PACKAGE, Analytics.getAnalyticsReferrer(context, str)});
        Log.d(Analytics.LOG_TAG, "Sending player to market, uri: " + format);
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(format));
        intent.addFlags(402653184);
        context.startActivity(intent);
    }

    private static boolean isAirplaneModeOn(Context context) {
        return System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    public static boolean isAmazon() {
        return Build.MANUFACTURER.equals("Amazon") || (HeyzapAds.store != null && HeyzapAds.store.equals("amazon"));
    }

    public static boolean isApplicationOnTop(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        String packageName = context.getApplicationContext().getPackageName();
        try {
            List runningAppProcesses = activityManager.getRunningAppProcesses();
            int i = 0;
            while (i < runningAppProcesses.size()) {
                RunningAppProcessInfo runningAppProcessInfo = (RunningAppProcessInfo) runningAppProcesses.get(i);
                if (runningAppProcessInfo.processName.equals(packageName) && runningAppProcessInfo.importance == 100) {
                    return true;
                }
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean isFroyo() {
        return getSdkVersion() >= 8;
    }

    public static boolean isHoneycomb() {
        return getSdkVersion() >= 11;
    }

    public static boolean isHoneycombTablet(Context context) {
        return isHoneycomb() && isTablet(context);
    }

    public static Boolean isOnMainThread() {
        return Boolean.valueOf(Looper.getMainLooper() == Looper.myLooper());
    }

    public static boolean isOnline(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager.getActiveNetworkInfo() != null && connectivityManager.getActiveNetworkInfo().isConnectedOrConnecting() && !isAirplaneModeOn(context);
    }

    public static boolean isTablet(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static void load(Activity activity) {
        createCacheDir(activity);
        if (advertisingIdAvailable == null || advertisingIdAvailable.isDone()) {
            advertisingIdAvailable = ExecutorPool.getInstance().submit(new c(activity.getApplicationContext()));
        }
    }

    public static boolean marketInstalled(Context context) {
        boolean z = false;
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.heyzap.android"));
            return context.getPackageManager().queryIntentActivities(intent, Cast.MAX_MESSAGE_LENGTH).isEmpty() ? z : true;
        } catch (Exception e) {
            return z;
        }
    }

    public static String md5Hex(String str) {
        try {
            return hex(MessageDigest.getInstance("MD5").digest(str.getBytes("CP1252")));
        } catch (NoSuchAlgorithmException e) {
            return null;
        } catch (UnsupportedEncodingException e2) {
            return null;
        }
    }

    public static boolean packageIsInstalled(String str, Context context) {
        boolean z = false;
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
            return (launchIntentForPackage == null || packageManager.queryIntentActivities(launchIntentForPackage, Cast.MAX_MESSAGE_LENGTH).size() <= 0) ? z : true;
        } catch (Exception e) {
            return z;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String saveBitmapToLocalFile(android.content.Context r4, java.lang.String r5, android.graphics.Bitmap r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.heyzap.internal.Utils.saveBitmapToLocalFile(android.content.Context, java.lang.String, android.graphics.Bitmap):java.lang.String");
        /*
        if (r5 != 0) goto L_0x0010;
    L_0x0002:
        r0 = new java.lang.Exception;	 Catch:{ Exception -> 0x000a }
        r1 = "No filename.";
        r0.<init>(r1);	 Catch:{ Exception -> 0x000a }
        throw r0;	 Catch:{ Exception -> 0x000a }
    L_0x000a:
        r0 = move-exception;
        r0.printStackTrace();
        r0 = 0;
    L_0x000f:
        return r0;
    L_0x0010:
        if (r6 != 0) goto L_0x001a;
    L_0x0012:
        r0 = new java.lang.Exception;	 Catch:{ Exception -> 0x000a }
        r1 = "No image.";
        r0.<init>(r1);	 Catch:{ Exception -> 0x000a }
        throw r0;	 Catch:{ Exception -> 0x000a }
    L_0x001a:
        r0 = getAbsolutePath(r4, r5);	 Catch:{ Exception -> 0x000a }
        r1 = new java.io.ByteArrayOutputStream;	 Catch:{ Exception -> 0x000a }
        r1.<init>();	 Catch:{ Exception -> 0x000a }
        r2 = android.graphics.Bitmap.CompressFormat.PNG;	 Catch:{ Exception -> 0x000a }
        r3 = 0;
        r6.compress(r2, r3, r1);	 Catch:{ Exception -> 0x000a }
        r2 = 3;
        r2 = r4.openFileOutput(r5, r2);	 Catch:{ Exception -> 0x000a }
        if (r2 == 0) goto L_0x0038;
    L_0x0030:
        r1 = r1.toByteArray();	 Catch:{ Exception -> 0x000a }
        r2.write(r1);	 Catch:{ Exception -> 0x000a }
        goto L_0x000f;
    L_0x0038:
        r0 = new java.lang.Exception;	 Catch:{ Exception -> 0x000a }
        r1 = "Unable to open output file stream.";
        r0.<init>(r1);	 Catch:{ Exception -> 0x000a }
        throw r0;	 Catch:{ Exception -> 0x000a }
        */
    }

    public static void setAdvertisingId(String str) {
        advertisingId = str;
    }

    public static void setLimitAdTracking(Boolean bool) {
        limitAdTrackingEnabled = bool;
    }

    public static String truncate(String str, int i) {
        return str.length() > i ? str.substring(0, i) + "..." : str;
    }

    public ExecutorService getExecutorPool() {
        return this.executorPool;
    }
}