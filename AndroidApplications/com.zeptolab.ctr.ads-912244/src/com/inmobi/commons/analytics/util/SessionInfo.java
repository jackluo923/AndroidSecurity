package com.inmobi.commons.analytics.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.GregorianCalendar;
import java.util.UUID;

public class SessionInfo {
    private static String a;
    private static long b;
    private static String c;
    private static int d;

    public static String getAppId(Context context) {
        if (c != null) {
            return c;
        }
        String string = context.getSharedPreferences("inmobiAppAnalyticsAppId", 0).getString("APP_ID", null);
        c = string;
        return string;
    }

    public static synchronized int getFirstTime() {
        int i;
        synchronized (SessionInfo.class) {
            i = d;
        }
        return i;
    }

    public static synchronized String getSessionId(Context context) {
        String str;
        synchronized (SessionInfo.class) {
            if (a != null) {
                str = a;
            } else {
                str = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).getString("SESSION_ID", null);
                a = str;
            }
        }
        return str;
    }

    public static synchronized long getSessionTime(Context context) {
        long j;
        synchronized (SessionInfo.class) {
            if (b != 0) {
                j = b;
            } else {
                j = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).getLong("SESSION_TIME", 0);
                b = j;
            }
        }
        return j;
    }

    public static synchronized boolean isUpdatedFromOldSDK(Context context) {
        boolean z;
        synchronized (SessionInfo.class) {
            z = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).getBoolean("UPDATED_FROM_OLD_SDK", false);
        }
        return z;
    }

    public static synchronized void removeSessionId(Context context) {
        synchronized (SessionInfo.class) {
            a = null;
            b = 0;
            Editor edit = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).edit();
            edit.putString("SESSION_ID", null);
            edit.putString("SESSION_TIME", null);
            edit.commit();
        }
    }

    public static synchronized void resetFirstTime() {
        synchronized (SessionInfo.class) {
            d = 0;
        }
    }

    public static void storeAppId(Context context, String str) {
        c = str;
        Editor edit = context.getSharedPreferences("inmobiAppAnalyticsAppId", 0).edit();
        edit.putString("APP_ID", str);
        edit.commit();
    }

    public static synchronized void storeFirstTime(Context context) {
        int i = 0;
        synchronized (SessionInfo.class) {
            int i2;
            long j;
            SharedPreferences sharedPreferences = context.getSharedPreferences("inmobiAppAnalyticsSession", 0);
            Editor edit = sharedPreferences.edit();
            long j2 = sharedPreferences.getLong("SESSION_TIMEM", -1);
            if (j2 != -1) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                gregorianCalendar.setTimeInMillis(j2);
                gregorianCalendar.setFirstDayOfWeek(GoogleScorer.CLIENT_PLUS);
                GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
                j2 = gregorianCalendar2.getTimeInMillis();
                gregorianCalendar2.setFirstDayOfWeek(GoogleScorer.CLIENT_PLUS);
                if (gregorianCalendar.get(IabHelper.BILLING_RESPONSE_RESULT_ERROR) != gregorianCalendar2.get(IabHelper.BILLING_RESPONSE_RESULT_ERROR)) {
                    i = 1;
                }
                if (gregorianCalendar.get(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE) != gregorianCalendar2.get(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) {
                    i |= 2;
                }
                if (gregorianCalendar.get(GoogleScorer.CLIENT_PLUS) != gregorianCalendar2.get(GoogleScorer.CLIENT_PLUS)) {
                    i |= 4;
                }
                i2 = i;
                j = j2;
            } else {
                j = new GregorianCalendar().getTimeInMillis();
                i2 = MMException.REQUEST_BAD_RESPONSE;
            }
            edit.putLong("SESSION_TIMEM", j);
            edit.commit();
            d = i2;
        }
    }

    public static synchronized void storeSessionId(Context context) {
        synchronized (SessionInfo.class) {
            a = UUID.randomUUID().toString();
            b = System.currentTimeMillis() / 1000;
            Editor edit = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).edit();
            edit.putString("SESSION_ID", a);
            edit.putLong("SESSION_TIME", b);
            edit.commit();
        }
    }

    public static synchronized void updatedFromOldSDK(Context context) {
        synchronized (SessionInfo.class) {
            Editor edit = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).edit();
            edit.putBoolean("UPDATED_FROM_OLD_SDK", true);
            edit.commit();
        }
    }
}