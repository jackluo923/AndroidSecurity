package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;

public class FunctionStartSession extends AnalyticsFunctions {
    private Context a;
    private String b;
    private Map c;

    public FunctionStartSession(Context context, String str, Map map) {
        this.a = context;
        this.b = str;
        this.c = map;
    }

    private AnalyticsEvent a() {
        if (SessionInfo.getSessionId(this.a) != null) {
            return null;
        }
        SessionInfo.storeAppId(this.a, this.b);
        SessionInfo.storeSessionId(this.a);
        SessionInfo.storeFirstTime(this.a);
        AnalyticsEvent analyticsEvent = new AnalyticsEvent(AnalyticsEvent.TYPE_START_SESSION);
        if (this.c != null) {
            analyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(this.c));
        }
        analyticsEvent.setEventSessionId(SessionInfo.getSessionId(this.a));
        analyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(this.a));
        analyticsEvent.setEventTimeStamp(SessionInfo.getSessionTime(this.a));
        insertInDatabase(analyticsEvent);
        return analyticsEvent;
    }

    public AnalyticsEvent processFunction() {
        return a();
    }
}