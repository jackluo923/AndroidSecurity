package com.inmobi.commons.analytics.iat.impl.config;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.metric.MetricConfigParams;
import com.inmobi.commons.uid.UID;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.Map;

public class AdTrackerConfigParams {
    private static final String a;
    private int b;
    private int c;
    private String d;
    private AdTrackerGoalRetryParams e;
    private MetricConfigParams f;
    private UID g;

    static {
        a = "Starting.*: Intent.*(?:http://market.android.com/details|market://details|play.google.com).*(?:id=" + InternalSDKUtil.getContext().getPackageName() + ").*referrer=([^&\\s]+)";
    }

    public AdTrackerConfigParams() {
        this.b = 60;
        this.c = 300;
        this.d = a;
        this.e = new AdTrackerGoalRetryParams();
        this.f = new MetricConfigParams();
        this.g = new UID();
    }

    public int getConnectionTimeout() {
        return this.b * 1000;
    }

    public String getLogcatPattern() {
        return this.d;
    }

    public MetricConfigParams getMetric() {
        return this.f;
    }

    public int getReferrerWaitTime() {
        return 300000;
    }

    public int getReferrerWaitTimeRetryCount() {
        return IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE;
    }

    public int getReferrerWaitTimeRetryInterval() {
        return AdTrackerConstants.WEBVIEW_NOERROR;
    }

    public AdTrackerGoalRetryParams getRetryParams() {
        return this.e;
    }

    public UID getUID() {
        return this.g;
    }

    public int getWebviewTimeout() {
        return this.c * 1000;
    }

    public void setFromMap(Map map) {
        this.b = InternalSDKUtil.getIntFromMap(map, "cto", 1, 2147483647L);
        this.c = InternalSDKUtil.getIntFromMap(map, "wto", 1, 2147483647L);
        this.d = InternalSDKUtil.getStringFromMap(map, "rlp").replace("$PKG", InternalSDKUtil.getContext().getPackageName());
        this.e.setFromMap((Map) map.get("rp"));
        this.f.setFromMap((Map) map.get("metric"));
        this.g.setFromMap((Map) map.get("ids"));
    }
}