package com.inmobi.commons.analytics.net;

import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.commons.internal.Log;

final class a implements a {
    a() {
    }

    public void a_() {
        Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Connectivity gone");
    }

    public void b() {
        Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Connectivity came");
        if (AnalyticsNetworkManager.a != null && !AnalyticsUtils.getStartHandle()) {
            AnalyticsUtils.setStartHandle(true);
            AnalyticsNetworkManager.a.sendEmptyMessageDelayed(ApiEventType.API_IMAI_OPEN_EMBEDDED, AnalyticsUtils.getTimeinterval());
        }
    }
}