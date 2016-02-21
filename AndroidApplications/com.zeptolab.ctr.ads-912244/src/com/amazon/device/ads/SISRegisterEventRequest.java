package com.amazon.device.ads;

import com.amazon.device.ads.Configuration.ConfigOption;
import com.vungle.publisher.VungleService;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

class SISRegisterEventRequest implements SISRequest {
    private static final String a = "SISRegisterEventRequest";
    private static final MetricType b;
    private static final String c = "/register_event";
    private final Info d;
    private final JSONArray e;

    static {
        b = MetricType.SIS_LATENCY_REGISTER_EVENT;
    }

    public SISRegisterEventRequest(Info info, JSONArray jSONArray) {
        this.d = info;
        this.e = jSONArray;
    }

    public MetricType getCallMetricType() {
        return b;
    }

    public String getLogTag() {
        return a;
    }

    public String getPath() {
        return c;
    }

    public HashMap getPostParameters() {
        HashMap hashMap = new HashMap();
        hashMap.put("events", this.e.toString());
        return hashMap;
    }

    public QueryStringParameters getQueryParameters() {
        QueryStringParameters queryStringParameters = new QueryStringParameters();
        queryStringParameters.b(VungleService.AD_ID_EXTRA_KEY, this.d.e());
        queryStringParameters.b("dt", DeviceInfo.getDeviceType());
        RegistrationInfo registrationInfo = InternalAdRegistration.getInstance().getRegistrationInfo();
        queryStringParameters.b("app", registrationInfo.getAppName());
        queryStringParameters.b("appId", registrationInfo.getAppKey());
        queryStringParameters.b("aud", Configuration.getInstance().getString(ConfigOption.SIS_DOMAIN));
        return queryStringParameters;
    }

    public void onResponseReceived(JSONObject jSONObject) {
        int a = JSONUtils.a(jSONObject, "rcode", 0);
        if (a == 1) {
            Log.d(a, "Application events registered successfully.");
            AppEventRegistrationHandler.getInstance().onAppEventsRegistered();
        } else {
            Log.d(a, "Application events not registered. rcode:" + a);
        }
    }
}