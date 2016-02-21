package com.heyzap.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.heyzap.http.RequestParams;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.net.URLEncoder;

public class Analytics {
    private static final String HEYZAP_ANALYTICS_ID_PREF = "heyzap_button_analytics_id";
    private static final String HEYZAP_ENDPOINT = "sdk_event";
    static final String HEYZAP_SDK_PLATFORM = "android";
    public static final String HEYZAP_SDK_VERSION = "6.6.3";
    public static final String LOG_TAG = "HeyzapSDK";
    private static boolean loaded;
    private static String trackHash;

    static {
        loaded = false;
        trackHash = AdTrackerConstants.BLANK;
    }

    public static String getAnalyticsReferrer(Context context) {
        return getAnalyticsReferrer(context, null);
    }

    public static String getAnalyticsReferrer(Context context, String str) {
        String trackHash = getTrackHash(context);
        trackHash = trackHash != null ? "utm_medium=device&utm_source=heyzap_track&utm_campaign=" + trackHash : "utm_medium=device&utm_source=sdk&utm_campaign=" + context.getPackageName();
        if (str != null) {
            trackHash = trackHash + "&" + str;
        }
        return URLEncoder.encode(trackHash);
    }

    private static String getTrackHash(Context context) {
        if (trackHash == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(HEYZAP_ANALYTICS_ID_PREF, 0);
            if (sharedPreferences != null) {
                trackHash = sharedPreferences.getString(HEYZAP_ANALYTICS_ID_PREF, null);
            }
        }
        return (trackHash == null || !trackHash.trim().equals(AdTrackerConstants.BLANK)) ? trackHash : null;
    }

    private static void init(Context context) {
    }

    private static void setTrackHash(Context context, String str) {
        if (str != null && !str.trim().equals(AdTrackerConstants.BLANK) && !trackHash.equals(str)) {
            trackHash = str;
            Editor edit = context.getSharedPreferences(HEYZAP_ANALYTICS_ID_PREF, 0).edit();
            edit.putString(HEYZAP_ANALYTICS_ID_PREF, trackHash);
            edit.commit();
        }
    }

    public static synchronized void trackEvent(Context context, String str) {
        synchronized (Analytics.class) {
            Logger.format("Tracking %s event.", new Object[]{str});
            if (!loaded) {
                init(context);
                loaded = true;
            }
            RequestParams requestParams = new RequestParams();
            requestParams.put("track_hash", trackHash);
            requestParams.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, str);
            APIClient.post(context, HEYZAP_ENDPOINT, requestParams, new d());
        }
    }
}