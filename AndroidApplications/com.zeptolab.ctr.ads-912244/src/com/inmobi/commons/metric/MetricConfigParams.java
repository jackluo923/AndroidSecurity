package com.inmobi.commons.metric;

import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class MetricConfigParams {
    private int a;
    private int b;
    private int c;
    private int d;
    private String e;

    public MetricConfigParams() {
        this.a = 432000;
        this.b = 1000;
        this.c = 1000;
        this.d = 10;
        this.e = "https://sdkm.w.inmobi.com/metrics/e.asm";
    }

    public int getDumpThreshhold() {
        return this.d;
    }

    public int getMaxInQueue() {
        return this.b;
    }

    public int getNextRetryInterval() {
        return this.a;
    }

    public int getSamplingFactor() {
        return this.c;
    }

    public String getUrl() {
        return this.e;
    }

    public void setFromMap(Map map) {
        this.c = InternalSDKUtil.getIntFromMap(map, "sf", 1, 2147483647L);
        this.d = InternalSDKUtil.getIntFromMap(map, "dt", 1, 2147483647L);
        this.b = InternalSDKUtil.getIntFromMap(map, "max", 1, 2147483647L);
        this.a = InternalSDKUtil.getIntFromMap(map, "nri", 1, 2147483647L);
        this.e = InternalSDKUtil.getStringFromMap(map, PlusShare.KEY_CALL_TO_ACTION_URL);
    }
}