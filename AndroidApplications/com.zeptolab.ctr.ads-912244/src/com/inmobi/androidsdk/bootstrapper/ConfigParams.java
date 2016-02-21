package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.metric.MetricConfigParams;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class ConfigParams {
    int a;
    int b;
    int c;
    int d;
    IMAIConfigParams e;
    MetricConfigParams f;
    UID g;
    AppGalleryConfigParams h;
    NativeConfigParams i;

    public ConfigParams() {
        this.a = 20;
        this.b = 60;
        this.c = 60;
        this.d = 60;
        this.e = new IMAIConfigParams();
        this.f = new MetricConfigParams();
        this.g = new UID();
        this.h = new AppGalleryConfigParams();
        this.i = new NativeConfigParams();
    }

    public AppGalleryConfigParams getAppAppGalleryConfigParams() {
        return this.h;
    }

    public int getDefaultRefreshRate() {
        return this.b;
    }

    public int getFetchTimeOut() {
        return this.c * 1000;
    }

    public IMAIConfigParams getImai() {
        return this.e;
    }

    public MetricConfigParams getMetric() {
        return this.f;
    }

    public int getMinimumRefreshRate() {
        return this.a;
    }

    public NativeConfigParams getNativeSdkConfigParams() {
        return this.i;
    }

    public int getRenderTimeOut() {
        return this.d * 1000;
    }

    public UID getUID() {
        return this.g;
    }

    public void setFromMap(Map map) {
        this.a = InternalSDKUtil.getIntFromMap(map, "mrr", 1, 2147483647L);
        this.b = InternalSDKUtil.getIntFromMap(map, "drr", -1, 2147483647L);
        this.c = InternalSDKUtil.getIntFromMap(map, "fto", 1, 2147483647L);
        this.d = InternalSDKUtil.getIntFromMap(map, "rto", 1, 2147483647L);
        this.e.setFromMap((Map) map.get("imai"));
        this.f.setFromMap((Map) map.get("metric"));
        this.g.setFromMap((Map) map.get("ids"));
        this.h.setFromMap((Map) map.get("ag"));
        this.i.setFromMap((Map) map.get("native"));
    }
}