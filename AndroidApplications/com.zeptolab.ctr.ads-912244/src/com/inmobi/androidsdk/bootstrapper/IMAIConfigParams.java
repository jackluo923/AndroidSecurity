package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class IMAIConfigParams {
    int a;
    int b;
    int c;
    int d;
    int e;

    public IMAIConfigParams() {
        this.a = 3;
        this.b = 10;
        this.c = 120;
        this.d = 10;
        this.e = 1000;
    }

    public int getMaxRetry() {
        return this.a;
    }

    public int getPingTimeOut() {
        return this.c * 1000;
    }

    public int getRetryInterval() {
        return this.b * 1000;
    }

    public int getmDefaultEventsBatch() {
        return this.d;
    }

    public int getmMaxDb() {
        return this.e;
    }

    public void setFromMap(Map map) {
        this.a = InternalSDKUtil.getIntFromMap(map, "mr", 0, 2147483647L);
        this.b = InternalSDKUtil.getIntFromMap(map, "pint", 1, 2147483647L);
        this.c = InternalSDKUtil.getIntFromMap(map, "pto", 1, 2147483647L);
        this.d = InternalSDKUtil.getIntFromMap(map, "eb", 1, 2147483647L);
        this.e = InternalSDKUtil.getIntFromMap(map, "mdb", 1, 2147483647L);
    }

    public void setmDefaultEventsBatch(int i) {
        this.d = i;
    }

    public void setmMaxDb(int i) {
        this.e = i;
    }
}