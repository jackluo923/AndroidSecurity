package com.vungle.log;

import android.text.TextUtils;
import android.util.Log;
import com.admarvel.android.ads.Constants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class Logger {
    public static final String AD_TAG = "VungleAd";
    public static final String ASYNC_TAG = "VungleAsync";
    public static final String CONFIG_TAG = "VungleConfig";
    public static final String DATABASE_DUMP_TAG = "VungleDumpDatabase";
    public static final String DATABASE_TAG = "VungleDatabase";
    public static final String DEVICE_TAG = "VungleDevice";
    public static final String EVENT_TAG = "VungleEvent";
    public static final String FILE_TAG = "VungleFile";
    public static final String INJECT_TAG = "VungleInject";
    public static final String LOCATION_TAG = "VungleLocation";
    public static final String NETWORK_TAG = "VungleNetwork";
    public static final String PREPARE_TAG = "VunglePrepare";
    public static final String PROTOCOL_TAG = "VungleProtocol";
    public static final String REPORT_TAG = "VungleReport";
    public static final String SERVICE_TAG = "VungleService";
    public static final String VUNGLE_TAG = "Vungle";

    private Logger() {
    }

    private static void a(int i, String str, String str2, Throwable th) {
        boolean z = 1;
        boolean isLoggable = Log.isLoggable("VungleDebug", IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        if ((!isLoggable && i >= 5) || (isLoggable && Log.isLoggable(VUNGLE_TAG, i))) {
            int i2;
            i2 = !TextUtils.isEmpty(str2);
            if (th == null) {
                z = false;
            }
            StringBuilder stringBuilder = new StringBuilder();
            if (i2 != 0) {
                stringBuilder.append(str2);
            }
            if (!(i2 == 0 || i == 0)) {
                stringBuilder.append(Constants.FORMATTER);
            }
            if (i != 0) {
                stringBuilder.append(Log.getStackTraceString(th));
            }
            Log.println(i, str, stringBuilder.toString());
        }
    }

    public static void d(String str, String str2) {
        a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, str, str2, null);
    }

    public static void d(String str, String str2, Throwable th) {
        a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, str, str2, th);
    }

    public static void d(String str, Throwable th) {
        a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, str, null, th);
    }

    public static void e(String str, String str2) {
        a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, str, str2, null);
    }

    public static void e(String str, String str2, Throwable th) {
        a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, str2, null, th);
    }

    public static void e(String str, Throwable th) {
        a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, str, null, th);
    }

    public static void i(String str, String str2) {
        a(GoogleScorer.CLIENT_APPSTATE, str, str2, null);
    }

    public static void i(String str, String str2, Throwable th) {
        a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, str, str2, th);
    }

    public static void i(String str, Throwable th) {
        a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, str, null, th);
    }

    public static void v(String str, String str2) {
        a(GoogleScorer.CLIENT_PLUS, str, str2, null);
    }

    public static void w(String str, String str2) {
        a(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, str, str2, null);
    }

    public static void w(String str, String str2, Throwable th) {
        a(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, str, str2, th);
    }

    public static void w(String str, Throwable th) {
        a(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, str, null, th);
    }
}