package com.amazon.device.ads;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import org.json.JSONObject;

class AdMetrics {
    public static final String LOG_TAG = "AdMetrics";
    private AdData a;
    private MetricsCollector b;

    public AdMetrics(AdData adData) {
        this.a = adData;
    }

    protected static void a(JSONObject jSONObject, MetricsCollector metricsCollector) {
        if (metricsCollector != null) {
            String str;
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            String adTypeMetricTag = metricsCollector.getAdTypeMetricTag();
            str = adTypeMetricTag != null ? adTypeMetricTag + "_" : adTypeMetricTag;
            MetricHit[] metricHitArr = (MetricHit[]) metricsCollector.getMetricHits().toArray(new MetricHit[metricsCollector.getMetricHits().size()]);
            int length = metricHitArr.length;
            int i = 0;
            while (i < length) {
                String str2;
                MetricHit metricHit = metricHitArr[i];
                String aaxName = metricHit.metric.getAaxName();
                str2 = (str == null || !metricHit.metric.isAdTypeSpecific()) ? aaxName : str + aaxName;
                if (metricHit instanceof MetricHitStartTime) {
                    hashMap.put(metricHit.metric, Long.valueOf(((MetricHitStartTime) metricHit).startTime));
                } else if (metricHit instanceof MetricHitStopTime) {
                    MetricHitStopTime metricHitStopTime = (MetricHitStopTime) metricHit;
                    Long l = (Long) hashMap.get(metricHit.metric);
                    if (l != null) {
                        JSONUtils.b(jSONObject, str2, metricHitStopTime.stopTime - l.longValue());
                    }
                } else if (metricHit instanceof MetricHitTotalTime) {
                    JSONUtils.b(jSONObject, str2, ((MetricHitTotalTime) metricHit).totalTime);
                } else if (metricHit instanceof MetricHitIncrement) {
                    MetricHitIncrement metricHitIncrement = (MetricHitIncrement) metricHit;
                    Integer num = (Integer) hashMap2.get(metricHit.metric);
                    hashMap2.put(metricHit.metric, Integer.valueOf(num == null ? metricHitIncrement.increment : metricHitIncrement.increment + num.intValue()));
                } else if (metricHit instanceof MetricHitString) {
                    JSONUtils.b(jSONObject, str2, ((MetricHitString) metricHit).text);
                }
                i++;
            }
            Iterator it = hashMap2.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                String aaxName2 = ((MetricType) entry.getKey()).getAaxName();
                if (str != null && ((MetricType) entry.getKey()).isAdTypeSpecific()) {
                    aaxName2 = str + aaxName2;
                }
                JSONUtils.b(jSONObject, aaxName2, ((Integer) entry.getValue()).intValue());
            }
        }
    }

    private String b() {
        String str = this.a.i() + Utils.getURLEncodedString(a());
        this.a.resetMetricsCollector();
        return str;
    }

    protected String a() {
        JSONObject jSONObject = new JSONObject();
        JSONUtils.b(jSONObject, "c", "msdk");
        JSONUtils.b(jSONObject, "v", Version.getRawSDKVersion());
        a(jSONObject, this.a.getMetricsCollector());
        a(jSONObject, this.b);
        String toString = jSONObject.toString();
        return toString.substring(1, toString.length() - 1);
    }

    public void addGlobalMetrics(MetricsCollector metricsCollector) {
        this.b = metricsCollector;
    }

    public boolean canSubmit() {
        if (this.a == null) {
            return false;
        }
        String i = this.a.i();
        if (i == null || i.equals(AdTrackerConstants.BLANK)) {
            return false;
        }
        i = InternalAdRegistration.getInstance().getRegistrationInfo().getAppKey();
        if (i != null && !i.equals("123")) {
            return true;
        }
        Log.d(LOG_TAG, "Not submitting metrics because the AppKey is either not set or set to a test key.");
        return false;
    }

    public WebRequest getAaxWebRequestAndResetAdMetrics() {
        WebRequest createNewWebRequest = WebRequest.createNewWebRequest();
        createNewWebRequest.setUrlString(b());
        return createNewWebRequest;
    }
}