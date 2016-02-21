package com.amazon.device.ads;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.publisher.VungleService;
import org.json.JSONObject;

class SISUpdateDeviceInfoRequest extends SISDeviceRequest {
    private static final String a = "SISUpdateDeviceInfoRequest";
    private static final MetricType b;
    private static final String c = "/update_dev_info";

    static {
        b = MetricType.SIS_LATENCY_UPDATE_DEVICE_INFO;
    }

    public SISUpdateDeviceInfoRequest() {
        setCallMetricType(b);
        setLogTag(a);
        setPath(c);
    }

    public QueryStringParameters getQueryParameters() {
        String debugPropertyAsString = DebugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_ADID, a().e());
        QueryStringParameters queryParameters = super.getQueryParameters();
        if (!Utils.isNullOrEmpty(debugPropertyAsString)) {
            queryParameters.b(VungleService.AD_ID_EXTRA_KEY, debugPropertyAsString);
        }
        return queryParameters;
    }

    public void onResponseReceived(JSONObject jSONObject) {
        String a = JSONUtils.a(jSONObject, VungleService.AD_ID_EXTRA_KEY, AdTrackerConstants.BLANK);
        if (JSONUtils.a(jSONObject, "idChanged", false)) {
            Metrics.getInstance().getMetricsCollector().incrementMetric(MetricType.SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED);
        }
        if (a.length() > 0) {
            InternalAdRegistration.getInstance().getRegistrationInfo().putAdId(a, a());
        }
    }
}