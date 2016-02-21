package com.inmobi.commons.analytics.events;

import android.content.Intent;
import android.os.Bundle;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.db.AnalyticsEventsQueue;
import com.inmobi.commons.analytics.db.FunctionEndSession;
import com.inmobi.commons.analytics.db.FunctionLevelBegin;
import com.inmobi.commons.analytics.db.FunctionLevelEnd;
import com.inmobi.commons.analytics.db.FunctionStartSession;
import com.inmobi.commons.analytics.db.FunctionTagEvent;
import com.inmobi.commons.analytics.db.FunctionTagTransaction;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.net.AnalyticsNetworkManager;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.Map;

public final class AnalyticsEventsWrapper {
    private static AnalyticsEventsWrapper a;
    private static boolean c;
    private AnalyticsEventsQueue b;

    public enum IMItemType {
        CONSUMABLE,
        DURABLE,
        PERSONALIZATION;

        static {
            CONSUMABLE = new com.inmobi.commons.analytics.events.AnalyticsEventsWrapper.IMItemType("CONSUMABLE", 0);
            DURABLE = new com.inmobi.commons.analytics.events.AnalyticsEventsWrapper.IMItemType("DURABLE", 1);
            PERSONALIZATION = new com.inmobi.commons.analytics.events.AnalyticsEventsWrapper.IMItemType("PERSONALIZATION", 2);
            a = new com.inmobi.commons.analytics.events.AnalyticsEventsWrapper.IMItemType[]{CONSUMABLE, DURABLE, PERSONALIZATION};
        }
    }

    public enum IMSectionStatus {
        COMPLETED,
        FAILED,
        CANCELED;

        static {
            COMPLETED = new com.inmobi.commons.analytics.events.AnalyticsEventsWrapper.IMSectionStatus("COMPLETED", 0);
            FAILED = new com.inmobi.commons.analytics.events.AnalyticsEventsWrapper.IMSectionStatus("FAILED", 1);
            CANCELED = new com.inmobi.commons.analytics.events.AnalyticsEventsWrapper.IMSectionStatus("CANCELED", 2);
            a = new com.inmobi.commons.analytics.events.AnalyticsEventsWrapper.IMSectionStatus[]{COMPLETED, FAILED, CANCELED};
        }
    }

    static {
        c = false;
    }

    private AnalyticsEventsWrapper() {
    }

    private void a(String str) {
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IllegalArgumentException", new IllegalArgumentException(str));
    }

    private boolean a() {
        if (InternalSDKUtil.getContext() != null && SessionInfo.getSessionId(InternalSDKUtil.getContext()) == null) {
            startSession(InMobi.getAppId(), null);
        } else if (SessionInfo.getSessionId(InternalSDKUtil.getContext()) == null) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, AnalyticsUtils.INITIALIZE_NOT_CALLED);
            return false;
        }
        return true;
    }

    public static synchronized AnalyticsEventsWrapper getInstance() {
        AnalyticsEventsWrapper analyticsEventsWrapper;
        synchronized (AnalyticsEventsWrapper.class) {
            if (AnalyticsUtils.getWebviewUserAgent() == null) {
                AnalyticsUtils.setWebviewUserAgent(InternalSDKUtil.getUserAgent(InternalSDKUtil.getContext()));
            }
            if (a == null) {
                a = new AnalyticsEventsWrapper();
                AnalyticsUtils.setStartHandle(false);
                AnalyticsNetworkManager.startInstance();
            }
            a.b = AnalyticsEventsQueue.getInstance();
            analyticsEventsWrapper = a;
        }
        return analyticsEventsWrapper;
    }

    public static boolean isEventsUser() {
        return c;
    }

    public static void setIsEventsUser() {
        c = true;
    }

    public void beginSection(int i, String str, Map map) {
        if (str == null) {
            a("arguments cannot be null");
        } else {
            try {
                if (a()) {
                    this.b.addElement(new FunctionLevelBegin(InternalSDKUtil.getContext(), i, str, map));
                    this.b.processFunctions();
                }
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Begin Section Exception", e);
            }
        }
    }

    public void endSection(int i, String str, Map map) {
        if (str == null) {
            a("arguments cannot be null");
        } else {
            try {
                if (a()) {
                    this.b.addElement(new FunctionLevelEnd(InternalSDKUtil.getContext(), i, str, null, map));
                    this.b.processFunctions();
                }
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "End Section Exception", e);
            }
        }
    }

    public void endSession(Map map) {
        try {
            this.b.addElement(new FunctionEndSession(InternalSDKUtil.getContext(), map));
            this.b.processFunctions();
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "End Session Exception", e);
        }
    }

    public void startSession(String str, Map map) {
        if (str == null || str.trim().equals(AdTrackerConstants.BLANK)) {
            a("appid cannot be null or empty");
        } else {
            try {
                this.b.addElement(new FunctionStartSession(InternalSDKUtil.getContext(), str, map));
                this.b.processFunctions();
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Init exception", e);
            }
        }
    }

    public void tagEvent(String str, Map map) {
        if (str == null || str.trim().equals(AdTrackerConstants.BLANK)) {
            a("arguments cannot be null or empty");
        } else {
            try {
                if (a()) {
                    this.b.addElement(new FunctionTagEvent(InternalSDKUtil.getContext(), str, map));
                    this.b.processFunctions();
                }
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Tag Event Exception", e);
            }
        }
    }

    public void tagTransactionManually(Intent intent, Bundle bundle) {
        if (intent == null) {
            a("transaction intent cannot be null or empty");
        } else {
            try {
                if (a()) {
                    this.b.addElement(new FunctionTagTransaction(InternalSDKUtil.getContext(), intent, bundle));
                    this.b.processFunctions();
                }
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Tag Transaction Manually Exception", e);
            }
        }
    }
}