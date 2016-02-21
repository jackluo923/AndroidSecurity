package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class NativeConfigParams {
    int a;
    int b;
    int c;

    public NativeConfigParams() {
        this.a = 100;
        this.b = 3;
        this.c = 10;
    }

    public int getmFetchLimit() {
        return this.c;
    }

    public int getmMaxCacheSize() {
        return this.a;
    }

    public int getmMinLimit() {
        return this.b;
    }

    public void setFromMap(Map map) {
        this.a = InternalSDKUtil.getIntFromMap(map, "mcl", 1, 2147483647L);
        this.b = InternalSDKUtil.getIntFromMap(map, "mt", 1, 2147483647L);
        this.c = InternalSDKUtil.getIntFromMap(map, "fl", 1, 2147483647L);
    }
}