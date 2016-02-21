package com.amazon.device.ads;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.publisher.VungleService;
import org.json.JSONObject;

class SISGenerateDIDRequest extends SISDeviceRequest {
    private static final String a = "SISGenerateDIDRequest";
    private static final MetricType b;
    private static final String c = "/generate_did";

    static {
        b = MetricType.SIS_LATENCY_REGISTER;
    }

    public SISGenerateDIDRequest() {
        setCallMetricType(b);
        setLogTag(a);
        setPath(c);
    }

    public void onResponseReceived(JSONObject jSONObject) {
        String a = JSONUtils.a(jSONObject, VungleService.AD_ID_EXTRA_KEY, AdTrackerConstants.BLANK);
        if (a.length() > 0) {
            InternalAdRegistration.getInstance().getRegistrationInfo().putAdId(a, a());
        }
    }
}