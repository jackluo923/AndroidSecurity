package com.amazon.device.ads;

import android.os.Build.VERSION;
import com.brightcove.player.media.MediaService;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import org.json.JSONException;
import org.json.JSONObject;

abstract class WebRequest {
    public static final String CHARSET_UTF_16 = "UTF-16";
    public static final String CHARSET_UTF_8 = "UTF-8";
    public static final String CONTENT_TYPE_CSS = "text/css";
    public static final String CONTENT_TYPE_HTML = "text/html";
    public static final String CONTENT_TYPE_JAVASCRIPT = "application/javascript";
    public static final String CONTENT_TYPE_JSON = "application/json";
    public static final String CONTENT_TYPE_PLAIN_TEXT = "text/plain";
    public static final int DEFAULT_PORT = -1;
    public static final int DEFAULT_TIMEOUT = 20000;
    private static final String m;
    private static final String n = "Accept";
    private static final String o = "Content-Type";
    private static final String p = "charset";
    private static WebRequestFactory z;
    String a;
    String b;
    String c;
    String d;
    protected final HashMap e;
    protected QueryStringParameters f;
    protected HashMap g;
    boolean h;
    boolean i;
    protected boolean j;
    protected boolean k;
    protected MetricType l;
    private String q;
    private String r;
    private String s;
    private String t;
    private int u;
    private HttpMethod v;
    private int w;
    private MetricsCollector x;
    private String y;

    final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ String a;

        AnonymousClass_1(String str) {
            this.a = str;
        }

        public void run() {
            WebRequest createNewWebRequest = WebRequest.createNewWebRequest();
            createNewWebRequest.enableLog(true);
            createNewWebRequest.setUrlString(this.a);
            try {
                createNewWebRequest.makeCall();
            } catch (com.amazon.device.ads.WebRequest.WebRequestException e) {
            }
        }
    }

    public enum HttpMethod {
        GET("GET"),
        POST("POST");
        private final String a;

        static {
            String str = "GET";
            GET = new com.amazon.device.ads.WebRequest.HttpMethod("GET", 0, "GET");
            str = "POST";
            POST = new com.amazon.device.ads.WebRequest.HttpMethod("POST", 1, "POST");
            b = new com.amazon.device.ads.WebRequest.HttpMethod[]{GET, POST};
        }

        private HttpMethod(String str) {
            this.a = str;
        }

        public String toString() {
            return this.a;
        }
    }

    static class QueryStringParameters {
        private final HashMap a;
        private String b;

        QueryStringParameters() {
            this.a = new HashMap();
        }

        int a() {
            return this.a.size();
        }

        void a(String str) {
            this.b = str;
        }

        void a(String str, String str2) {
            a(str, str2, !Utils.isNullOrEmpty(str2));
        }

        void a(String str, String str2, boolean z) {
            if (z) {
                b(str, str2);
            }
        }

        void a(String str, boolean z) {
            b(str, Boolean.toString(z));
        }

        void a(StringBuilder stringBuilder) {
            if (a() != 0 || !Utils.isNullOrEmpty(this.b)) {
                stringBuilder.append("?");
                Iterator it = this.a.entrySet().iterator();
                int i = 1;
                while (it.hasNext()) {
                    boolean z;
                    Entry entry = (Entry) it.next();
                    if (i != 0) {
                        z = 0;
                    } else {
                        stringBuilder.append("&");
                        int i2 = i;
                    }
                    stringBuilder.append((String) entry.getKey());
                    stringBuilder.append("=");
                    stringBuilder.append((String) entry.getValue());
                    boolean z2 = z;
                }
                if (this.b != null && !this.b.equals(AdTrackerConstants.BLANK)) {
                    if (a() != 0) {
                        stringBuilder.append("&");
                    }
                    stringBuilder.append(this.b);
                }
            }
        }

        String b(String str) {
            if (!Utils.isNullOrWhiteSpace(str)) {
                return (String) this.a.get(str);
            }
            throw new IllegalArgumentException("The name must not be null or empty string.");
        }

        void b(String str, String str2) {
            if (Utils.isNullOrWhiteSpace(str)) {
                throw new IllegalArgumentException("The name must not be null or empty string.");
            } else if (str2 == null) {
                this.a.remove(str);
            } else {
                this.a.put(str, str2);
            }
        }

        String c(String str, String str2) {
            String uRLEncodedString = Utils.getURLEncodedString(str);
            b(uRLEncodedString, Utils.getURLEncodedString(str2));
            return uRLEncodedString;
        }
    }

    public class WebRequestException extends Exception {
        private static final long b = -4980265484926465548L;
        private final com.amazon.device.ads.WebRequest.WebRequestStatus c;

        protected WebRequestException(WebRequest webRequest, com.amazon.device.ads.WebRequest.WebRequestStatus webRequestStatus, String str) {
            this(webRequestStatus, str, null);
        }

        protected WebRequestException(com.amazon.device.ads.WebRequest.WebRequestStatus webRequestStatus, String str, Throwable th) {
            super(str, th);
            this.c = webRequestStatus;
        }

        public com.amazon.device.ads.WebRequest.WebRequestStatus getStatus() {
            return this.c;
        }
    }

    static class WebRequestFactory {
        WebRequestFactory() {
        }

        public WebRequest createWebRequest() {
            return VERSION.SDK_INT < 8 ? new HttpClientWebRequest() : new HttpURLConnectionWebRequest();
        }
    }

    public enum WebRequestStatus {
        NETWORK_FAILURE,
        NETWORK_TIMEOUT,
        MALFORMED_URL,
        INVALID_CLIENT_PROTOCOL,
        UNSUPPORTED_ENCODING;

        static {
            NETWORK_FAILURE = new com.amazon.device.ads.WebRequest.WebRequestStatus("NETWORK_FAILURE", 0);
            NETWORK_TIMEOUT = new com.amazon.device.ads.WebRequest.WebRequestStatus("NETWORK_TIMEOUT", 1);
            MALFORMED_URL = new com.amazon.device.ads.WebRequest.WebRequestStatus("MALFORMED_URL", 2);
            INVALID_CLIENT_PROTOCOL = new com.amazon.device.ads.WebRequest.WebRequestStatus("INVALID_CLIENT_PROTOCOL", 3);
            UNSUPPORTED_ENCODING = new com.amazon.device.ads.WebRequest.WebRequestStatus("UNSUPPORTED_ENCODING", 4);
            a = new com.amazon.device.ads.WebRequest.WebRequestStatus[]{NETWORK_FAILURE, NETWORK_TIMEOUT, MALFORMED_URL, INVALID_CLIENT_PROTOCOL, UNSUPPORTED_ENCODING};
        }
    }

    public class WebResponse {
        private String b;
        private int c;
        private String d;
        private InputStream e;
        private boolean f;
        private String g;

        protected WebResponse() {
            this.g = m;
        }

        protected void a() {
            if (this.e != null) {
                StringBuilder stringBuilder = new StringBuilder();
                byte[] bArr = new byte[4096];
                while (true) {
                    try {
                        int read = this.e.read(bArr);
                        if (read != -1) {
                            stringBuilder.append(new String(bArr, 0, read));
                        } else {
                            try {
                                this.e.close();
                            } catch (IOException e) {
                                Log.e(this.g, "IOException while trying to close the stream");
                            }
                            a(stringBuilder.toString());
                            if (this.f) {
                                Log.d(m, "Response: %s", new Object[]{getBody()});
                                return;
                            } else {
                                return;
                            }
                        }
                    } catch (IOException e2) {
                        try {
                            Log.e(this.g, "Unable to read the stream from the network.");
                            try {
                                this.e.close();
                            } catch (IOException e3) {
                                Log.e(this.g, "IOException while trying to close the stream");
                            }
                            a(stringBuilder.toString());
                            if (this.f) {
                                Log.d(m, "Response: %s", new Object[]{getBody()});
                            }
                        } catch (Throwable th) {
                            try {
                                this.e.close();
                            } catch (IOException e4) {
                                Log.e(this.g, "IOException while trying to close the stream");
                            }
                            a(stringBuilder.toString());
                            if (this.f) {
                                Log.d(m, "Response: %s", new Object[]{getBody()});
                            }
                        }
                    }
                }
            }
        }

        protected void a(int i) {
            this.c = i;
        }

        protected void a(InputStream inputStream) {
            this.e = inputStream;
        }

        protected void a(String str) {
            this.b = str;
        }

        protected void a(boolean z) {
            this.f = z;
        }

        protected void b(String str) {
            this.g = str;
        }

        protected void c(String str) {
            this.d = str;
        }

        public String getBody() {
            if (this.b == null) {
                a();
            }
            return this.b;
        }

        public String getHttpStatus() {
            return this.d;
        }

        public int getHttpStatusCode() {
            return this.c;
        }

        public JSONObject getJSONObjectBody() {
            if (getBody() == null) {
                return null;
            }
            JSONObject jSONObject;
            try {
                jSONObject = new JSONObject(getBody());
            } catch (JSONException e) {
                Log.e(WebRequest.this.c(), "Unable to parse the body into a JSONObject.");
                jSONObject = null;
            }
            return jSONObject;
        }

        public boolean isHttpStatusCodeOK() {
            return getHttpStatusCode() == 200;
        }
    }

    static {
        m = WebRequest.class.getSimpleName();
        z = new WebRequestFactory();
    }

    protected WebRequest() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.u = -1;
        this.v = HttpMethod.GET;
        this.w = 20000;
        this.h = false;
        this.i = false;
        this.j = false;
        this.k = false;
        this.y = m;
        this.f = new QueryStringParameters();
        this.e = new HashMap();
        this.g = new HashMap();
        this.k = DebugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_TLS_ENABLED, Settings.getInstance().getBoolean("tlsEnabled", false));
    }

    static void a(WebRequestFactory webRequestFactory) {
        z = webRequestFactory;
    }

    public static final WebRequest createJSONGetWebRequest() {
        WebRequest createNewWebRequest = createNewWebRequest();
        createNewWebRequest.setHttpMethod(HttpMethod.GET);
        createNewWebRequest.putHeader(n, CONTENT_TYPE_JSON);
        return createNewWebRequest;
    }

    public static final WebRequest createJSONPostWebRequest() {
        WebRequest createNewWebRequest = createNewWebRequest();
        createNewWebRequest.convertToJSONPostRequest();
        return createNewWebRequest;
    }

    public static final WebRequest createNewWebRequest() {
        return z.createWebRequest();
    }

    public static final void executeWebRequestInThread(String str) {
        ThreadUtils.executeRunnable(new AnonymousClass_1(str));
    }

    protected abstract WebResponse a(URL url);

    protected void a(MetricType metricType) {
        if (metricType != null && this.x != null) {
            this.x.startMetric(metricType);
        }
    }

    protected void a(String str) {
        if (this.j) {
            Log.d(c(), "%s %s", new Object[]{getHttpMethod(), str});
        }
    }

    protected void a(StringBuilder stringBuilder) {
        this.f.a(stringBuilder);
    }

    protected abstract String b();

    protected URI b(String str) {
        return c(c(str));
    }

    protected void b(MetricType metricType) {
        if (metricType != null && this.x != null) {
            this.x.stopMetric(metricType);
        }
    }

    protected String c() {
        return this.y;
    }

    protected URI c(URL url) {
        return url.toURI();
    }

    protected URL c(String str) {
        return new URL(str);
    }

    public void convertToJSONPostRequest() {
        setHttpMethod(HttpMethod.POST);
        putHeader(n, CONTENT_TYPE_JSON);
        putHeader(o, "application/json; charset=UTF-8");
    }

    protected void d() {
        if (this.b != null) {
            putHeader(n, this.c);
        }
        if (this.c != null) {
            String str = this.c;
            if (this.d != null) {
                str = str + "; charset=" + this.d;
            }
            putHeader(o, str);
        }
    }

    protected URI e() {
        return new URL(getUrlString()).toURI();
    }

    public void enableLog(boolean z) {
        enableLogUrl(z);
        enableLogRequestBody(z);
        enableLogResponse(z);
    }

    public void enableLogRequestBody(boolean z) {
        this.h = z;
    }

    public void enableLogResponse(boolean z) {
        this.i = z;
    }

    public void enableLogUrl(boolean z) {
        this.j = z;
    }

    protected String f() {
        return getUseSecure() ? "https" : MediaService.DEFAULT_MEDIA_DELIVERY;
    }

    protected String g() {
        if (this.q != null) {
            return this.q;
        }
        StringBuilder stringBuilder = new StringBuilder(f());
        stringBuilder.append("://");
        stringBuilder.append(getHost());
        if (getPort() != -1) {
            stringBuilder.append(":");
            stringBuilder.append(getPort());
        }
        stringBuilder.append(getPath());
        a(stringBuilder);
        return stringBuilder.toString();
    }

    public String getAcceptContentType() {
        return this.b;
    }

    public String getCharset() {
        return this.d;
    }

    public String getContentType() {
        return this.c;
    }

    public String getHeader(String str) {
        if (!Utils.isNullOrWhiteSpace(str)) {
            return (String) this.e.get(str);
        }
        throw new IllegalArgumentException("The name must not be null or empty string.");
    }

    public String getHost() {
        return this.k ? this.r : this.s;
    }

    public HttpMethod getHttpMethod() {
        return this.v;
    }

    public String getPath() {
        return this.t;
    }

    public int getPort() {
        return this.u;
    }

    public String getPostParameter(String str) {
        if (!Utils.isNullOrWhiteSpace(str)) {
            return (String) this.g.get(str);
        }
        throw new IllegalArgumentException("The name must not be null or empty string.");
    }

    public String getQueryParameter(String str) {
        return this.f.b(str);
    }

    public String getRequestBody() {
        if (getRequestBodyString() != null) {
            return getRequestBodyString();
        }
        if (this.g.isEmpty()) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = this.g.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            stringBuilder.append((String) entry.getKey()).append('=').append((String) entry.getValue()).append(";\n");
        }
        return stringBuilder.toString();
    }

    public String getRequestBodyString() {
        return this.a;
    }

    public int getTimeout() {
        return this.w;
    }

    public String getUrlString() {
        return this.q;
    }

    public boolean getUseSecure() {
        return this.k;
    }

    public WebResponse makeCall() {
        if (ThreadUtils.isOnMainThread()) {
            Log.e(this.y, "The network request should not be performed on the main thread.");
        }
        d();
        String g = g();
        try {
            URL c = c(g);
            a(this.l);
            try {
                WebResponse a = a(c);
                b(this.l);
                return a;
            } catch (WebRequestException e) {
                throw e;
            } catch (Throwable th) {
            }
        } catch (MalformedURLException e2) {
            Throwable th2 = e2;
            Log.e(this.y, "Problem with URI syntax: %s", new Object[]{th2.getMessage()});
            throw new WebRequestException(WebRequestStatus.MALFORMED_URL, "Could not construct URL from String " + g, th2);
        }
    }

    public void putHeader(String str, String str2) {
        if (Utils.isNullOrWhiteSpace(str)) {
            throw new IllegalArgumentException("The name must not be null or empty string.");
        }
        this.e.put(str, str2);
    }

    public void putPostParameter(String str, String str2) {
        if (Utils.isNullOrWhiteSpace(str)) {
            throw new IllegalArgumentException("The name must not be null or empty string.");
        } else if (str2 == null) {
            this.g.remove(str);
        } else {
            this.g.put(str, str2);
        }
    }

    public String putUnencodedQueryParameter(String str, String str2) {
        return this.f.c(str, str2);
    }

    public void putUrlEncodedQueryParameter(String str, String str2) {
        this.f.b(str, str2);
    }

    public void setAcceptContentType(String str) {
        this.b = this.c;
    }

    public void setAdditionalQueryParamsString(String str) {
        this.f.a(str);
    }

    public void setCharset(String str) {
        this.d = str;
    }

    public void setContentType(String str) {
        this.c = str;
    }

    public void setExternalLogTag(String str) {
        if (str == null) {
            this.y = m + " " + b();
        } else {
            this.y = str + " " + m + " " + b();
        }
    }

    public void setHost(String str) {
        if (Utils.isNullOrWhiteSpace(str)) {
            throw new IllegalArgumentException("The host must not be null.");
        }
        this.r = str;
        this.s = str;
    }

    public void setHttpMethod(HttpMethod httpMethod) {
        if (httpMethod == null) {
            throw new IllegalArgumentException("The httpMethod must not be null.");
        }
        this.v = httpMethod;
    }

    public void setMetricsCollector(MetricsCollector metricsCollector) {
        this.x = metricsCollector;
    }

    public void setNonSecureHost(String str) {
        if (Utils.isNullOrWhiteSpace(str)) {
            throw new IllegalArgumentException("The host must not be null.");
        }
        this.s = str;
    }

    public void setPath(String str) {
        this.t = str;
    }

    public void setPort(int i) {
        this.u = i;
    }

    public void setQueryStringParameters(QueryStringParameters queryStringParameters) {
        this.f = queryStringParameters;
    }

    public void setRequestBodyString(String str) {
        this.a = str;
    }

    public void setSecureHost(String str) {
        if (Utils.isNullOrWhiteSpace(str)) {
            throw new IllegalArgumentException("The host must not be null.");
        }
        this.r = str;
    }

    public void setServiceCallLatencyMetric(MetricType metricType) {
        this.l = metricType;
    }

    public void setTimeout(int i) {
        this.w = i;
    }

    public void setUrlString(String str) {
        if (str != null && this.k && str.startsWith("http:")) {
            str = str.replaceFirst(MediaService.DEFAULT_MEDIA_DELIVERY, "https");
        }
        this.q = str;
    }

    public void setUseSecure(boolean z) {
        this.k = z;
    }

    public String toString() {
        return g();
    }
}