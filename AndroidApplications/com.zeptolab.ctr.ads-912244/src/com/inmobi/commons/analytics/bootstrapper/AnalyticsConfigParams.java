package com.inmobi.commons.analytics.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class AnalyticsConfigParams {
    private static final Long a;
    private UID b;
    private AnalyticsEndPointsConfig c;
    private ThinICEConfig d;
    private Long e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private AutomaticCaptureConfig n;
    private int o;

    static {
        a = null;
    }

    public AnalyticsConfigParams() {
        this.b = new UID();
        this.c = new AnalyticsEndPointsConfig();
        this.d = new ThinICEConfig();
        this.e = a;
        this.f = 5;
        this.g = 1000;
        this.h = 100;
        this.i = 3;
        this.j = 20;
        this.k = 50;
        this.l = 100;
        this.m = 5;
        this.n = new AutomaticCaptureConfig();
        this.o = 100;
    }

    public AutomaticCaptureConfig getAutomaticCapture() {
        return this.n;
    }

    public AnalyticsEndPointsConfig getEndPoints() {
        return this.c;
    }

    public int getExtraParamsLimit() {
        return this.l;
    }

    public int getGetParamsLimit() {
        return this.h;
    }

    public Long getLTVId() {
        return this.e;
    }

    public int getMaxAppIdLength() {
        return this.o;
    }

    public int getMaxDbEvents() {
        return this.g;
    }

    public int getMaxKeyLength() {
        return this.j;
    }

    public int getMaxRetryBeforeCacheDiscard() {
        return this.m;
    }

    public int getMaxValLength() {
        return this.k;
    }

    public int getMinEventsToCompress() {
        return this.f;
    }

    public int getPingInterval() {
        return this.i * 1000;
    }

    public ThinICEConfig getThinIceConfig() {
        return this.d;
    }

    public UID getUID() {
        return this.b;
    }

    public void setFromMap(Map map) {
        this.h = InternalSDKUtil.getIntFromMap(map, "elim", 1, 2147483647L);
        this.g = InternalSDKUtil.getIntFromMap(map, "mdb", 1, 2147483647L);
        this.j = InternalSDKUtil.getIntFromMap(map, "mkey", 1, 2147483647L);
        this.k = InternalSDKUtil.getIntFromMap(map, "mval", 1, 2147483647L);
        this.i = InternalSDKUtil.getIntFromMap(map, "pint", 1, 2147483647L);
        this.l = InternalSDKUtil.getIntFromMap(map, "plim", 1, 2147483647L);
        this.e = Long.valueOf(InternalSDKUtil.getLongFromMap(map, "ltvid", Long.MIN_VALUE, Long.MAX_VALUE));
        this.f = InternalSDKUtil.getIntFromMap(map, "mec", 1, 2147483647L);
        this.m = InternalSDKUtil.getIntFromMap(map, "mr", 0, 2147483647L);
        this.o = InternalSDKUtil.getIntFromMap(map, "aidl", 1, 2147483647L);
        this.b.setFromMap((Map) map.get("ids"));
        this.c.setFromMap((Map) map.get("endpoints"));
        this.d.setFromMap((Map) map.get("tic"));
        this.n.setFromMap((Map) map.get("at"));
    }
}