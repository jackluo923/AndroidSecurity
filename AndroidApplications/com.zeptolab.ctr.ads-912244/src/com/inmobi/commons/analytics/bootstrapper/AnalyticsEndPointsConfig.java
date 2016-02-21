package com.inmobi.commons.analytics.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class AnalyticsEndPointsConfig {
    private String a;
    private String b;
    private String c;

    public AnalyticsEndPointsConfig() {
        this.a = "http://a.ai.inmobi.com/v2/ad.html";
        this.b = "https://rules-ltvp.inmobi.com/v2/rules.json";
        this.c = "https://e-ltvp.inmobi.com/storm/v1/event";
    }

    public String getEventsUrl() {
        return this.c;
    }

    public String getHouseUrl() {
        return this.a;
    }

    public String getRulesUrl() {
        return this.b;
    }

    public void setFromMap(Map map) {
        this.a = InternalSDKUtil.getStringFromMap(map, "house");
        this.b = InternalSDKUtil.getStringFromMap(map, "rules");
        this.c = InternalSDKUtil.getStringFromMap(map, "events");
    }
}