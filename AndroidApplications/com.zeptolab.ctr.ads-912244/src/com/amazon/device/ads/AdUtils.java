package com.amazon.device.ads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.net.Uri;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.HashSet;

class AdUtils {
    public static final String LOG_TAG;
    public static final String REQUIRED_ACTIVITY = "com.amazon.device.ads.AdActivity";
    private static final HashSet a;

    static {
        LOG_TAG = AdUtils.class.getSimpleName();
        a = new HashSet();
        a.add(REQUIRED_ACTIVITY);
    }

    private AdUtils() {
    }

    public static boolean checkDefinedActivities(Context context) {
        boolean z = true;
        HashSet hashSet = new HashSet();
        try {
            if (!Utils.isAtLeastAndroidAPI(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED)) {
                return z;
            }
            ActivityInfo[] activityInfoArr = context.getPackageManager().getPackageArchiveInfo(AndroidTargetUtils.getPackageCodePath(context), 1).activities;
            int length = activityInfoArr.length;
            int i = 0;
            while (i < length) {
                hashSet.add(activityInfoArr[i].name);
                i++;
            }
            return hashSet.containsAll(a);
        } catch (Exception e) {
            return z;
        }
    }

    public static String encloseHtml(String str, boolean z) {
        if (str == null) {
            return str;
        }
        if (str.indexOf("<html>") == -1) {
            str = "<html>" + str + "</html>";
        }
        return (z && str.indexOf("<!DOCTYPE html>") == -1) ? "<!DOCTYPE html>" + str : str;
    }

    public static double getViewportInitialScale(double d) {
        return Utils.isAtLeastAndroidAPI(ApiEventType.API_MRAID_GET_DEFAULT_POSITION) ? 1.0d : d;
    }

    public static boolean launchActivityForIntentLink(String str, Context context) {
        if (str == null || str.equals(AdTrackerConstants.BLANK)) {
            str = "about:blank";
        }
        Log.d(LOG_TAG, "Launch Intent: %s", new Object[]{str});
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(DriveFile.MODE_READ_ONLY);
        try {
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            String action = intent.getAction();
            String str2 = LOG_TAG;
            String str3 = "Could not handle %s action: %s";
            Object[] objArr = new Object[2];
            objArr[0] = action.startsWith("market://") ? Event.INTENT_MARKET : "intent";
            objArr[1] = action;
            Log.w(str2, str3, objArr);
            return false;
        }
    }

    public static void setConnectionMetrics(AdData adData) {
        String connectionType = adData.getConnectionType();
        if (DeviceInfo.WIFI_NAME.equals(connectionType)) {
            adData.getMetricsCollector().incrementMetric(MetricType.WIFI_PRESENT);
        } else {
            adData.getMetricsCollector().setMetricString(MetricType.CONNECTION_TYPE, connectionType);
        }
        DeviceInfo deviceInfo = InternalAdRegistration.getInstance().getDeviceInfo();
        if (deviceInfo.getCarrier() != null) {
            adData.getMetricsCollector().setMetricString(MetricType.CARRIER_NAME, deviceInfo.getCarrier());
        }
    }
}