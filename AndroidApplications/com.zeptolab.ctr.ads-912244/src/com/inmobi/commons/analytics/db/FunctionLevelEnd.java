package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper.IMSectionStatus;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;

public class FunctionLevelEnd extends FunctionLevelBegin {
    private IMSectionStatus a;
    private Context b;

    public FunctionLevelEnd(Context context, int i, String str, IMSectionStatus iMSectionStatus, Map map) {
        super(context, i, str, map);
        this.b = context;
        this.a = iMSectionStatus;
    }

    private AnalyticsEvent a() {
        if (SessionInfo.getSessionId(this.b) != null) {
            AnalyticsEvent analyticsEvent = new AnalyticsEvent(AnalyticsEvent.TYPE_LEVEL_END);
            analyticsEvent.setEventLevelId(Integer.toString(getLevelId()));
            analyticsEvent.setEventLevelName(getLevelName());
            if (getLbMap() != null) {
                analyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(getLbMap()));
            }
            analyticsEvent.setEventLevelStatus("1");
            analyticsEvent.setEventSessionId(SessionInfo.getSessionId(this.b));
            analyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(this.b));
            analyticsEvent.setEventTimeStamp(System.currentTimeMillis() / 1000);
            insertInDatabase(analyticsEvent);
            return analyticsEvent;
        } else {
            printWarning("Please call startSession before calling levelEnd");
            return null;
        }
    }

    protected IMSectionStatus getLevelStatus() {
        return this.a;
    }

    public AnalyticsEvent processFunction() {
        return a();
    }
}