package com.inmobi.commons.analytics.iat.impl.config;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class AdTrackerGoalRetryParams {
    private int a;
    private int b;

    public AdTrackerGoalRetryParams() {
        this.a = 1000;
        this.b = 900;
    }

    public int getMaxRetry() {
        return this.a;
    }

    public int getMaxWaitTime() {
        return this.b * 1000;
    }

    public void setFromMap(Map map) {
        this.a = InternalSDKUtil.getIntFromMap(map, "mr", 0, 2147483647L);
        this.b = InternalSDKUtil.getIntFromMap(map, "mw", 0, 2147483647L);
    }
}