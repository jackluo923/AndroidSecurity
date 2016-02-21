package com.amazon.device.ads;

import android.annotation.SuppressLint;
import com.amazon.device.ads.Configuration.ConfigOption;
import com.amazon.device.ads.WebRequest.HttpMethod;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class AdRequest {
    private static final String b;
    private static final String c = "/e/msdk/ads";
    private static final AAXParameter[] d;
    protected final Map a;
    private final JSONObjectBuilder e;
    private final AdTargetingOptions f;
    private final String g;
    private final Size h;
    private final String i;
    private String j;
    private Info k;

    static class JSONObjectBuilder {
        private final JSONObject a;
        private AAXParameter[] b;
        private Map c;
        private ParameterData d;

        JSONObjectBuilder() {
            this.a = new JSONObject();
        }

        ParameterData a() {
            return this.d;
        }

        JSONObjectBuilder a(ParameterData parameterData) {
            this.d = parameterData;
            return this;
        }

        JSONObjectBuilder a(Map map) {
            this.c = map;
            return this;
        }

        JSONObjectBuilder a(AAXParameter[] aAXParameterArr) {
            this.b = aAXParameterArr;
            return this;
        }

        void a(AAXParameter aAXParameter, Object obj) {
            a(aAXParameter.a(), obj);
        }

        void a(String str, Object obj) {
            if (obj != null) {
                try {
                    this.a.put(str, obj);
                } catch (JSONException e) {
                    Log.d(b, "Could not add parameter to JSON %s: %s", new Object[]{str, obj});
                }
            }
        }

        JSONObject b() {
            return this.a;
        }

        void c() {
            AAXParameter[] aAXParameterArr = this.b;
            int length = aAXParameterArr.length;
            int i = 0;
            while (i < length) {
                AAXParameter aAXParameter = aAXParameterArr[i];
                a(aAXParameter, aAXParameter.a(this.d));
                i++;
            }
            if (this.c != null) {
                Iterator it = this.c.entrySet().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    if (!Utils.isNullOrWhiteSpace((String) entry.getValue())) {
                        a((String) entry.getKey(), entry.getValue());
                    }
                }
            }
        }
    }

    static class LOISlot {
        static final AAXParameter[] a;
        private final AdData b;
        private final AdTargetingOptions c;
        private final JSONObjectBuilder d;

        static {
            a = new AAXParameter[]{AAXParameter.r, AAXParameter.s, AAXParameter.t, AAXParameter.u, AAXParameter.v, AAXParameter.w, AAXParameter.x};
        }

        LOISlot(AdData adData, AdTargetingOptions adTargetingOptions, AdRequest adRequest) {
            this.b = adData;
            this.c = adTargetingOptions;
            Map b = this.c.b();
            this.d = new JSONObjectBuilder().a(a).a(b).a(new ParameterData().a(b).a(this).a(adRequest));
        }

        AdData a() {
            return this.b;
        }

        AdTargetingOptions b() {
            return this.c;
        }

        JSONObject c() {
            this.d.c();
            return this.d.b();
        }
    }

    static {
        b = AdRequest.class.getSimpleName();
        d = new AAXParameter[]{AAXParameter.a, AAXParameter.b, AAXParameter.c, AAXParameter.d, AAXParameter.e, AAXParameter.f, AAXParameter.g, AAXParameter.h, AAXParameter.i, AAXParameter.j, AAXParameter.k, AAXParameter.l, AAXParameter.m, AAXParameter.n, AAXParameter.p, AAXParameter.q};
    }

    @SuppressLint({"UseSparseArrays"})
    AdRequest(AdTargetingOptions adTargetingOptions) {
        this.f = adTargetingOptions;
        this.a = new HashMap();
        DeviceInfo deviceInfo = InternalAdRegistration.getInstance().getDeviceInfo();
        this.g = deviceInfo.getOrientation();
        this.h = deviceInfo.getScreenSize(this.g);
        this.i = deviceInfo.getConnectionType();
        Map b = this.f.b();
        this.e = new JSONObjectBuilder().a(d).a(b).a(new ParameterData().a(b).a(this));
    }

    AdRequest a(Info info) {
        this.k = info;
        return this;
    }

    AdTargetingOptions a() {
        return this.f;
    }

    protected void a(WebRequest webRequest) {
        this.e.c();
        Object a = AAXParameter.o.a(this.e.a());
        if (a == null) {
            a = d();
        }
        this.e.a(AAXParameter.o, a);
        JSONObject b = this.e.b();
        String debugPropertyAsString = DebugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_AAX_AD_PARAMS, null);
        if (!Utils.isNullOrEmpty(debugPropertyAsString)) {
            webRequest.setAdditionalQueryParamsString(debugPropertyAsString);
        }
        a(webRequest, b);
    }

    protected void a(WebRequest webRequest, JSONObject jSONObject) {
        webRequest.setRequestBodyString(jSONObject.toString());
    }

    String b() {
        return this.g;
    }

    Info c() {
        return this.k;
    }

    protected JSONArray d() {
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            jSONArray.put(((LOISlot) it.next()).c());
        }
        return jSONArray;
    }

    public String getInstrumentationPixelURL() {
        return this.j;
    }

    public WebRequest getWebRequest() {
        WebRequest createNewWebRequest = WebRequest.createNewWebRequest();
        createNewWebRequest.setExternalLogTag(b);
        createNewWebRequest.setHttpMethod(HttpMethod.POST);
        createNewWebRequest.setHost(Configuration.getInstance().getString(ConfigOption.AAX_HOSTNAME));
        createNewWebRequest.setPath(c);
        createNewWebRequest.enableLog(true);
        createNewWebRequest.setContentType(WebRequest.CONTENT_TYPE_JSON);
        a(createNewWebRequest);
        return createNewWebRequest;
    }

    public void putSlot(AdData adData, AdTargetingOptions adTargetingOptions) {
        adData.setConnectionType(this.i);
        adData.c(this.h.getHeight());
        adData.d(this.h.getWidth());
        if (c().f()) {
            adData.getMetricsCollector().incrementMetric(MetricType.AD_COUNTER_IDENTIFIED_DEVICE);
        }
        LOISlot lOISlot = new LOISlot(adData, adTargetingOptions, this);
        this.a.put(Integer.valueOf(lOISlot.a().getSlotId()), lOISlot);
    }

    public void setInstrumentationPixelURL(String str) {
        this.j = str;
    }
}