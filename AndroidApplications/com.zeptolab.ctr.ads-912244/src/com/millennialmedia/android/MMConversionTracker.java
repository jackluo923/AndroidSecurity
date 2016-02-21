package com.millennialmedia.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import java.util.GregorianCalendar;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;

final class MMConversionTracker {
    private static final String a = "installReferrer";
    private static final String b = "MMConversionTracker";

    final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ boolean b;
        final /* synthetic */ long c;
        final /* synthetic */ TreeMap d;

        AnonymousClass_1(String str, boolean z, long j, TreeMap treeMap) {
            this.a = str;
            this.b = z;
            this.c = j;
            this.d = treeMap;
        }

        public void run() {
            try {
                new HttpGetRequest().a(this.a, this.b, this.c, this.d);
            } catch (Exception e) {
                MMLog.e(b, "Problem doing conversion tracking.", e);
            }
        }
    }

    MMConversionTracker() {
    }

    protected static synchronized void a(Context context, String str, MMRequest mMRequest) {
        long j;
        long timeInMillis;
        int i = 0;
        synchronized (MMConversionTracker.class) {
            if (!(context == null || str == null)) {
                if (str.length() != 0) {
                    GregorianCalendar gregorianCalendar;
                    SharedPreferences sharedPreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
                    boolean z = sharedPreferences.getBoolean("firstLaunch_" + str, true);
                    String string = sharedPreferences.getString(a, null);
                    Map treeMap = new TreeMap();
                    if (mMRequest != null) {
                        mMRequest.a(treeMap);
                        MMRequest.b(treeMap);
                    }
                    if (string != null) {
                        String[] split = string.split("&");
                        int length = split.length;
                        while (i < length) {
                            String[] split2 = split[i].split("=");
                            if (split2.length >= 2) {
                                treeMap.put(split2[0], split2[1]);
                            }
                            i++;
                        }
                    }
                    if (z) {
                        Editor edit = sharedPreferences.edit();
                        edit.putBoolean("firstLaunch_" + str, false);
                        edit.commit();
                    }
                    try {
                        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                        try {
                            j = packageInfo.getClass().getField("firstInstallTime").getLong(packageInfo);
                        } catch (Exception e) {
                            MMLog.e(b, "Error with firstInstallTime", e);
                            j = 0;
                            if (j <= 0) {
                                timeInMillis = j;
                            } else {
                                gregorianCalendar = new GregorianCalendar();
                                gregorianCalendar.setTimeInMillis(j);
                                gregorianCalendar.setTimeZone(TimeZone.getTimeZone("GMT"));
                                timeInMillis = gregorianCalendar.getTimeInMillis();
                            }
                            if (MMSDK.a(context)) {
                                MMLog.d(b, "No network available for conversion tracking.");
                            } else {
                                treeMap.put("ua", "Android:" + Build.MODEL);
                                treeMap.put("apid", HandShake.a);
                                MMSDK.a(context, treeMap);
                                ThreadUtils.a(new AnonymousClass_1(str, z, timeInMillis, treeMap));
                            }
                        }
                    } catch (NameNotFoundException e2) {
                        MMLog.e(b, "Can't find packagename: ", e2);
                    }
                    if (j <= 0) {
                        gregorianCalendar = new GregorianCalendar();
                        gregorianCalendar.setTimeInMillis(j);
                        gregorianCalendar.setTimeZone(TimeZone.getTimeZone("GMT"));
                        timeInMillis = gregorianCalendar.getTimeInMillis();
                    } else {
                        timeInMillis = j;
                    }
                    if (MMSDK.a(context)) {
                        MMLog.d(b, "No network available for conversion tracking.");
                    } else {
                        treeMap.put("ua", "Android:" + Build.MODEL);
                        treeMap.put("apid", HandShake.a);
                        MMSDK.a(context, treeMap);
                        ThreadUtils.a(new AnonymousClass_1(str, z, timeInMillis, treeMap));
                    }
                }
            }
        }
    }
}