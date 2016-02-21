package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;

public class FunctionLevelBegin extends AnalyticsFunctions {
    private Context a;
    private Map b;
    private int c;
    private String d;

    public FunctionLevelBegin(Context context, int i, String str, Map map) {
        this.a = context;
        this.b = map;
        this.c = i;
        this.d = str;
    }

    private AnalyticsEvent a() {
        if (SessionInfo.getSessionId(this.a) == null) {
            return null;
        }
        AnalyticsEvent analyticsEvent = new AnalyticsEvent(AnalyticsEvent.TYPE_LEVEL_BEGIN);
        analyticsEvent.setEventLevelId(Integer.toString(this.c));
        analyticsEvent.setEventLevelName(this.d);
        if (this.b != null) {
            analyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(this.b));
        }
        analyticsEvent.setEventSessionId(SessionInfo.getSessionId(this.a));
        analyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(this.a));
        analyticsEvent.setEventTimeStamp(System.currentTimeMillis() / 1000);
        insertInDatabase(analyticsEvent);
        return analyticsEvent;
    }

    protected Map getLbMap() {
        return this.b;
    }

    protected int getLevelId() {
        return this.c;
    }

    protected String getLevelName() {
        return this.d;
    }

    public AnalyticsEvent processFunction() {
        return a();
    }
}