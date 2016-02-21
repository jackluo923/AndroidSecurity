package com.inmobi.analytics;

import android.content.Intent;
import android.os.Bundle;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.androidsdk.IMAdTracker;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.Map;

public class InMobiAnalytics {
    public static void beginSection(String str) {
        beginSection(str, null);
    }

    public static void beginSection(String str, Map map) {
        if (InternalSDKUtil.isInitializedSuccessfully()) {
            try {
                AnalyticsEventsWrapper.getInstance().beginSection(str.hashCode(), str, map);
                AnalyticsEventsWrapper.setIsEventsUser();
            } catch (Exception e) {
                Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Please pass a valid Section Name");
            }
        }
    }

    public static void endSection(String str) {
        endSection(str, null);
    }

    public static void endSection(String str, Map map) {
        if (InternalSDKUtil.isInitializedSuccessfully()) {
            try {
                AnalyticsEventsWrapper.getInstance().endSection(str.hashCode(), str, map);
                AnalyticsEventsWrapper.setIsEventsUser();
            } catch (Exception e) {
                Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Please pass a valid Section Name");
            }
        }
    }

    public static void endSessionManually() {
        endSessionManually(null);
    }

    public static void endSessionManually(Map map) {
        if (InternalSDKUtil.isInitializedSuccessfully()) {
            AnalyticsEventsWrapper.getInstance().endSession(map);
            AnalyticsEventsWrapper.setIsEventsUser();
        }
    }

    public static void reportCustomGoal(String str) {
        if (InternalSDKUtil.isInitializedSuccessfully()) {
            try {
                IMAdTracker.getInstance().reportCustomGoal(str);
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Unable to report custom goal due to unexpected exception.", e);
            }
        }
    }

    public static void startSessionManually() {
        startSessionManually(null);
    }

    public static void startSessionManually(Map map) {
        if (InternalSDKUtil.isInitializedSuccessfully()) {
            AnalyticsEventsWrapper.getInstance().startSession(InMobi.getAppId(), map);
            AnalyticsEventsWrapper.setIsEventsUser();
        }
    }

    public static void tagEvent(String str) {
        tagEvent(str, null);
    }

    public static void tagEvent(String str, Map map) {
        if (InternalSDKUtil.isInitializedSuccessfully()) {
            try {
                AnalyticsEventsWrapper.getInstance().tagEvent(str, map);
                AnalyticsEventsWrapper.setIsEventsUser();
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Unable to tag event due to unexpected exception.", e);
            }
        }
    }

    public static void tagTransactionManually(Intent intent, Bundle bundle) {
        if (InternalSDKUtil.isInitializedSuccessfully()) {
            try {
                AnalyticsEventsWrapper.getInstance().tagTransactionManually(intent, bundle);
                AnalyticsEventsWrapper.setIsEventsUser();
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Unable to tag transaction due to unexpected exception.", e);
            }
        }
    }
}