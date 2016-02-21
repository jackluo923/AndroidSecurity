package com.inmobi.commons.analytics.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class AutomaticCaptureConfig {
    private boolean a;
    private boolean b;

    public AutomaticCaptureConfig() {
        this.a = true;
        this.b = false;
    }

    public boolean getAutoPurchaseCapture() {
        return this.b;
    }

    public boolean getAutoSessionCapture() {
        return this.a;
    }

    public void setFromMap(Map map) {
        this.a = InternalSDKUtil.getBooleanFromMap(map, "session");
        this.b = InternalSDKUtil.getBooleanFromMap(map, "purchase");
    }
}