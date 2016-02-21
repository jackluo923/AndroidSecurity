package com.amazon.device.ads;

import com.amazon.device.ads.Configuration.ConfigOption;
import com.amazon.device.ads.WebRequest.HttpMethod;
import com.amazon.device.ads.WebRequest.WebRequestException;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.Iterator;
import java.util.Map.Entry;
import org.json.JSONObject;

class SISRequestor {
    protected static final String a = "/api3";
    private final SISRequest[] b;
    private final SISRequestorCallback c;

    public SISRequestor(SISRequestorCallback sISRequestorCallback, SISRequest... sISRequestArr) {
        this.c = sISRequestorCallback;
        this.b = sISRequestArr;
    }

    public SISRequestor(SISRequest... sISRequestArr) {
        this(null, sISRequestArr);
    }

    protected static String b() {
        String string = Configuration.getInstance().getString(ConfigOption.SIS_URL);
        if (string == null) {
            return string;
        }
        int indexOf = string.indexOf("/");
        return indexOf > -1 ? string.substring(0, indexOf) : string;
    }

    protected static String c(SISRequest sISRequest) {
        String string = Configuration.getInstance().getString(ConfigOption.SIS_URL);
        if (string != null) {
            int indexOf = string.indexOf("/");
            string = indexOf > -1 ? string.substring(indexOf) : AdTrackerConstants.BLANK;
        }
        return string + a + sISRequest.getPath();
    }

    protected void a() {
        SISRequest[] sISRequestArr = this.b;
        int length = sISRequestArr.length;
        int i = 0;
        while (i < length) {
            a(sISRequestArr[i]);
            i++;
        }
    }

    protected void a(SISRequest sISRequest) {
        try {
            JSONObject jSONObjectBody = b(sISRequest).makeCall().getJSONObjectBody();
            if (jSONObjectBody != null) {
                int a = JSONUtils.a(jSONObjectBody, "rcode", 0);
                String a2 = JSONUtils.a(jSONObjectBody, "msg", AdTrackerConstants.BLANK);
                if (a == 1) {
                    Log.i(sISRequest.getLogTag(), "Result - code: %d, msg: %s", new Object[]{Integer.valueOf(a), a2});
                    sISRequest.onResponseReceived(jSONObjectBody);
                } else {
                    Log.w(sISRequest.getLogTag(), "Result - code: %d, msg: %s", new Object[]{Integer.valueOf(a), a2});
                }
            }
        } catch (WebRequestException e) {
        }
    }

    protected WebRequest b(SISRequest sISRequest) {
        WebRequest createNewWebRequest = WebRequest.createNewWebRequest();
        createNewWebRequest.setExternalLogTag(sISRequest.getLogTag());
        createNewWebRequest.setHttpMethod(HttpMethod.POST);
        createNewWebRequest.setHost(b());
        createNewWebRequest.setPath(c(sISRequest));
        createNewWebRequest.enableLog(true);
        if (sISRequest.getPostParameters() != null) {
            Iterator it = sISRequest.getPostParameters().entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                createNewWebRequest.putPostParameter((String) entry.getKey(), (String) entry.getValue());
            }
        }
        QueryStringParameters queryParameters = sISRequest.getQueryParameters();
        queryParameters.b("appId", InternalAdRegistration.getInstance().getRegistrationInfo().getAppKey());
        queryParameters.b("sdkVer", Version.getSDKVersion());
        createNewWebRequest.setQueryStringParameters(queryParameters);
        createNewWebRequest.setMetricsCollector(Metrics.getInstance().getMetricsCollector());
        createNewWebRequest.setServiceCallLatencyMetric(sISRequest.getCallMetricType());
        return createNewWebRequest;
    }

    protected SISRequestorCallback c() {
        return this.c;
    }

    public void startCallSIS() {
        a();
        SISRequestorCallback c = c();
        if (c != null) {
            c.onSISCallComplete();
        }
    }
}