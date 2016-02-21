package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;

public class FunctionTagEvent extends AnalyticsFunctions {
    private Context a;
    private String b;
    private Map c;

    public FunctionTagEvent(Context context, String str, Map map) {
        this.a = context;
        this.b = str;
        this.c = map;
    }

    private AnalyticsEvent a() {
        if (SessionInfo.getSessionId(this.a) != null) {
            AnalyticsEvent analyticsEvent = new AnalyticsEvent(AnalyticsEvent.TYPE_CUSTOM_EVENT);
            analyticsEvent.setEventCustomName(this.b);
            if (this.c != null) {
                analyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(this.c));
            }
            analyticsEvent.setEventSessionId(SessionInfo.getSessionId(this.a));
            analyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(this.a));
            analyticsEvent.setEventTimeStamp(System.currentTimeMillis() / 1000);
            insertInDatabase(analyticsEvent);
            return analyticsEvent;
        } else {
            printWarning("Please call startSession before calling trackEvent");
            return null;
        }
    }

    public AnalyticsEvent processFunction() {
        return a();
    }
}