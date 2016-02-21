package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;

public class FunctionEndSession extends AnalyticsFunctions {
    private Context a;
    private Map b;

    public FunctionEndSession(Context context, Map map) {
        this.a = context;
        this.b = map;
    }

    private AnalyticsEvent a() {
        if (SessionInfo.getSessionId(this.a) == null) {
            return null;
        }
        AnalyticsEvent analyticsEvent = new AnalyticsEvent(AnalyticsEvent.TYPE_END_SESSION);
        analyticsEvent.setEventSessionId(SessionInfo.getSessionId(this.a));
        analyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(this.a));
        analyticsEvent.setEventTimeStamp(System.currentTimeMillis() / 1000);
        SessionInfo.removeSessionId(this.a);
        if (this.b != null) {
            analyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(this.b));
        }
        insertInDatabase(analyticsEvent);
        return analyticsEvent;
    }

    public AnalyticsEvent processFunction() {
        return a();
    }
}