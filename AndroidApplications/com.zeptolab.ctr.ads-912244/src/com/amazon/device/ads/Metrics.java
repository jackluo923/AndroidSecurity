package com.amazon.device.ads;

import com.amazon.device.ads.WebRequest.WebRequestException;
import com.amazon.device.ads.WebRequest.WebRequestStatus;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

class Metrics {
    private static final String a;
    private static Metrics b;
    private MetricsCollector c;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ WebRequest a;

        AnonymousClass_1(WebRequest webRequest) {
            this.a = webRequest;
        }

        public void run() {
            int i = 1;
            int i2 = 0;
            try {
                this.a.makeCall();
            } catch (WebRequestException e) {
                webRequestException = e;
                WebRequestException webRequestException2;
                String b;
                String str;
                Object[] objArr;
                switch (AnonymousClass_2.a[webRequestException2.getStatus().ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                        b = a;
                        str = "Unable to submit metrics for ad due to an Invalid Client Protocol, msg: %s";
                        objArr = new Object[i];
                        objArr[i2] = webRequestException2.getMessage();
                        Log.e(b, str, objArr);
                    case GoogleScorer.CLIENT_PLUS:
                        b = a;
                        str = "Unable to submit metrics for ad due to Network Failure, msg: %s";
                        objArr = new Object[i];
                        objArr[i2] = webRequestException2.getMessage();
                        Log.e(b, str, objArr);
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        b = a;
                        str = "Unable to submit metrics for ad due to a Malformed Pixel URL, msg: %s";
                        objArr = new Object[i];
                        objArr[i2] = webRequestException2.getMessage();
                        Log.e(b, str, objArr);
                        b = a;
                        str = "Unable to submit metrics for ad because of unsupported character encoding, msg: %s";
                        objArr = new Object[i];
                        objArr[i2] = webRequestException2.getMessage();
                        Log.e(b, str, objArr);
                    case GoogleScorer.CLIENT_APPSTATE:
                        b = a;
                        str = "Unable to submit metrics for ad because of unsupported character encoding, msg: %s";
                        objArr = new Object[i];
                        objArr[i2] = webRequestException2.getMessage();
                        Log.e(b, str, objArr);
                    default:
                        break;
                }
            }
        }
    }

    static /* synthetic */ class AnonymousClass_2 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[WebRequestStatus.values().length];
            try {
                a[WebRequestStatus.INVALID_CLIENT_PROTOCOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[WebRequestStatus.NETWORK_FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[WebRequestStatus.MALFORMED_URL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            a[WebRequestStatus.UNSUPPORTED_ENCODING.ordinal()] = 4;
        }
    }

    enum MetricType {
        AD_LATENCY_TOTAL("tl", true),
        AD_LATENCY_TOTAL_SUCCESS("tsl", true),
        AD_LATENCY_TOTAL_FAILURE("tfl", true),
        AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START("llfsl", true),
        AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP("lfsul"),
        AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START("lfsasl"),
        AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END("laefel"),
        AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP("lffsul"),
        AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START("lffsrsl", true),
        AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE("lffsfl", true),
        AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL("lcaul"),
        ASSETS_CREATED_LATENCY("lacl"),
        ASSETS_ENSURED_LATENCY("lael"),
        ASSETS_FAILED("af"),
        AD_LOADED_TO_AD_SHOW_TIME("alast"),
        AD_SHOW_LATENCY("lsa"),
        AD_SHOW_DURATION("asd"),
        AAX_LATENCY_GET_AD("al"),
        AD_LOAD_FAILED("lf"),
        AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT("lfat"),
        AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT("lfpt"),
        AD_COUNTER_IDENTIFIED_DEVICE(AnalyticsEvent.EVENT_ID),
        AD_COUNTER_RENDERING_FATAL("rf", true),
        AD_LATENCY_RENDER("rl", true),
        AD_LATENCY_RENDER_FAILED("rlf", true),
        AD_COUNTER_FAILED_DUE_TO_NO_RETRY("nrtf"),
        AD_NO_RETRY_TTL_RECEIVED("nrtr"),
        AD_COUNTER_AUTO_AD_SIZE("aas"),
        AD_COUNTER_PARENT_VIEW_MISSING("pvm"),
        ADLAYOUT_HEIGHT_ZERO("ahz"),
        VIEWPORT_SCALE("vs"),
        AD_FAILED_UNKNOWN_WEBVIEW_ISSUE("fuwi"),
        AD_FAILED_NULL_LAYOUT_PARAMS("fnlp"),
        AD_FAILED_LAYOUT_NOT_RUN("flnr"),
        AD_FAILED_INVALID_AUTO_AD_SIZE("faas"),
        SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED(AnalyticsSQLiteHelper.EVENT_LIST_SID),
        SIS_LATENCY_REGISTER("srl"),
        SIS_LATENCY_UPDATE_DEVICE_INFO("sul"),
        SIS_LATENCY_REGISTER_EVENT("srel"),
        CONFIG_DOWNLOAD_ERROR("cde"),
        CONFIG_DOWNLOAD_LATENCY("cdt"),
        CONFIG_PARSE_ERROR("cpe"),
        AAX_CONFIG_DOWNLOAD_LATENCY("acl"),
        AAX_CONFIG_DOWNLOAD_FAILED("acf"),
        CUSTOM_RENDER_HANDLED("crh"),
        TLS_ENABLED("tls"),
        WIFI_PRESENT("wifi"),
        CARRIER_NAME("car"),
        CONNECTION_TYPE("ct"),
        AD_IS_INTERSTITIAL("i");
        private final String a;
        private final boolean b;

        static {
            String str = "tl";
            AD_LATENCY_TOTAL = new MetricType("AD_LATENCY_TOTAL", 0, "tl", true);
            str = "tsl";
            AD_LATENCY_TOTAL_SUCCESS = new MetricType("AD_LATENCY_TOTAL_SUCCESS", 1, "tsl", true);
            str = "tfl";
            AD_LATENCY_TOTAL_FAILURE = new MetricType("AD_LATENCY_TOTAL_FAILURE", 2, "tfl", true);
            str = "llfsl";
            AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START = new MetricType("AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START", 3, "llfsl", true);
            str = "lfsul";
            AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP = new MetricType("AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP", 4, "lfsul");
            String str2 = "lfsasl";
            AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START = new MetricType("AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START", 5, "lfsasl");
            str2 = "laefel";
            AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END = new MetricType("AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END", 6, "laefel");
            str2 = "lffsul";
            AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP = new MetricType("AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP", 7, "lffsul");
            str2 = "lffsrsl";
            AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START = new MetricType("AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START", 8, "lffsrsl", true);
            str2 = "lffsfl";
            AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE = new MetricType("AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE", 9, "lffsfl", true);
            str2 = "lcaul";
            AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL = new MetricType("AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL", 10, "lcaul");
            str2 = "lacl";
            ASSETS_CREATED_LATENCY = new MetricType("ASSETS_CREATED_LATENCY", 11, "lacl");
            str2 = "lael";
            ASSETS_ENSURED_LATENCY = new MetricType("ASSETS_ENSURED_LATENCY", 12, "lael");
            str2 = "af";
            ASSETS_FAILED = new MetricType("ASSETS_FAILED", 13, "af");
            str2 = "alast";
            AD_LOADED_TO_AD_SHOW_TIME = new MetricType("AD_LOADED_TO_AD_SHOW_TIME", 14, "alast");
            str2 = "lsa";
            AD_SHOW_LATENCY = new MetricType("AD_SHOW_LATENCY", 15, "lsa");
            str2 = "asd";
            AD_SHOW_DURATION = new MetricType("AD_SHOW_DURATION", 16, "asd");
            str2 = "al";
            AAX_LATENCY_GET_AD = new MetricType("AAX_LATENCY_GET_AD", 17, "al");
            str2 = "lf";
            AD_LOAD_FAILED = new MetricType("AD_LOAD_FAILED", 18, "lf");
            str2 = "lfat";
            AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT = new MetricType("AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT", 19, "lfat");
            str2 = "lfpt";
            AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT = new MetricType("AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT", 20, "lfpt");
            String str3 = "AD_COUNTER_IDENTIFIED_DEVICE";
            str2 = AnalyticsEvent.EVENT_ID;
            AD_COUNTER_IDENTIFIED_DEVICE = new MetricType(str3, 21, AnalyticsEvent.EVENT_ID);
            str2 = "rf";
            AD_COUNTER_RENDERING_FATAL = new MetricType("AD_COUNTER_RENDERING_FATAL", 22, "rf", true);
            str2 = "rl";
            AD_LATENCY_RENDER = new MetricType("AD_LATENCY_RENDER", 23, "rl", true);
            str2 = "rlf";
            AD_LATENCY_RENDER_FAILED = new MetricType("AD_LATENCY_RENDER_FAILED", 24, "rlf", true);
            str2 = "nrtf";
            AD_COUNTER_FAILED_DUE_TO_NO_RETRY = new MetricType("AD_COUNTER_FAILED_DUE_TO_NO_RETRY", 25, "nrtf");
            str2 = "nrtr";
            AD_NO_RETRY_TTL_RECEIVED = new MetricType("AD_NO_RETRY_TTL_RECEIVED", 26, "nrtr");
            str2 = "aas";
            AD_COUNTER_AUTO_AD_SIZE = new MetricType("AD_COUNTER_AUTO_AD_SIZE", 27, "aas");
            str2 = "pvm";
            AD_COUNTER_PARENT_VIEW_MISSING = new MetricType("AD_COUNTER_PARENT_VIEW_MISSING", 28, "pvm");
            str2 = "ahz";
            ADLAYOUT_HEIGHT_ZERO = new MetricType("ADLAYOUT_HEIGHT_ZERO", 29, "ahz");
            str2 = "vs";
            VIEWPORT_SCALE = new MetricType("VIEWPORT_SCALE", 30, "vs");
            str2 = "fuwi";
            AD_FAILED_UNKNOWN_WEBVIEW_ISSUE = new MetricType("AD_FAILED_UNKNOWN_WEBVIEW_ISSUE", 31, "fuwi");
            str2 = "fnlp";
            AD_FAILED_NULL_LAYOUT_PARAMS = new MetricType("AD_FAILED_NULL_LAYOUT_PARAMS", 32, "fnlp");
            str2 = "flnr";
            AD_FAILED_LAYOUT_NOT_RUN = new MetricType("AD_FAILED_LAYOUT_NOT_RUN", 33, "flnr");
            str2 = "faas";
            AD_FAILED_INVALID_AUTO_AD_SIZE = new MetricType("AD_FAILED_INVALID_AUTO_AD_SIZE", 34, "faas");
            str3 = "SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED";
            str2 = AnalyticsSQLiteHelper.EVENT_LIST_SID;
            SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED = new MetricType(str3, 35, AnalyticsSQLiteHelper.EVENT_LIST_SID);
            str2 = "srl";
            SIS_LATENCY_REGISTER = new MetricType("SIS_LATENCY_REGISTER", 36, "srl");
            str2 = "sul";
            SIS_LATENCY_UPDATE_DEVICE_INFO = new MetricType("SIS_LATENCY_UPDATE_DEVICE_INFO", 37, "sul");
            str2 = "srel";
            SIS_LATENCY_REGISTER_EVENT = new MetricType("SIS_LATENCY_REGISTER_EVENT", 38, "srel");
            str2 = "cde";
            CONFIG_DOWNLOAD_ERROR = new MetricType("CONFIG_DOWNLOAD_ERROR", 39, "cde");
            str2 = "cdt";
            CONFIG_DOWNLOAD_LATENCY = new MetricType("CONFIG_DOWNLOAD_LATENCY", 40, "cdt");
            str2 = "cpe";
            CONFIG_PARSE_ERROR = new MetricType("CONFIG_PARSE_ERROR", 41, "cpe");
            str2 = "acl";
            AAX_CONFIG_DOWNLOAD_LATENCY = new MetricType("AAX_CONFIG_DOWNLOAD_LATENCY", 42, "acl");
            str2 = "acf";
            AAX_CONFIG_DOWNLOAD_FAILED = new MetricType("AAX_CONFIG_DOWNLOAD_FAILED", 43, "acf");
            str2 = "crh";
            CUSTOM_RENDER_HANDLED = new MetricType("CUSTOM_RENDER_HANDLED", 44, "crh");
            str2 = "tls";
            TLS_ENABLED = new MetricType("TLS_ENABLED", 45, "tls");
            str2 = "wifi";
            WIFI_PRESENT = new MetricType("WIFI_PRESENT", 46, "wifi");
            str2 = "car";
            CARRIER_NAME = new MetricType("CARRIER_NAME", 47, "car");
            str2 = "ct";
            CONNECTION_TYPE = new MetricType("CONNECTION_TYPE", 48, "ct");
            str2 = "i";
            AD_IS_INTERSTITIAL = new MetricType("AD_IS_INTERSTITIAL", 49, "i");
            c = new MetricType[]{AD_LATENCY_TOTAL, AD_LATENCY_TOTAL_SUCCESS, AD_LATENCY_TOTAL_FAILURE, AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START, AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP, AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START, AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END, AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP, AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START, AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE, AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL, ASSETS_CREATED_LATENCY, ASSETS_ENSURED_LATENCY, ASSETS_FAILED, AD_LOADED_TO_AD_SHOW_TIME, AD_SHOW_LATENCY, AD_SHOW_DURATION, AAX_LATENCY_GET_AD, AD_LOAD_FAILED, AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT, AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT, AD_COUNTER_IDENTIFIED_DEVICE, AD_COUNTER_RENDERING_FATAL, AD_LATENCY_RENDER, AD_LATENCY_RENDER_FAILED, AD_COUNTER_FAILED_DUE_TO_NO_RETRY, AD_NO_RETRY_TTL_RECEIVED, AD_COUNTER_AUTO_AD_SIZE, AD_COUNTER_PARENT_VIEW_MISSING, ADLAYOUT_HEIGHT_ZERO, VIEWPORT_SCALE, AD_FAILED_UNKNOWN_WEBVIEW_ISSUE, AD_FAILED_NULL_LAYOUT_PARAMS, AD_FAILED_LAYOUT_NOT_RUN, AD_FAILED_INVALID_AUTO_AD_SIZE, SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED, SIS_LATENCY_REGISTER, SIS_LATENCY_UPDATE_DEVICE_INFO, SIS_LATENCY_REGISTER_EVENT, CONFIG_DOWNLOAD_ERROR, CONFIG_DOWNLOAD_LATENCY, CONFIG_PARSE_ERROR, AAX_CONFIG_DOWNLOAD_LATENCY, AAX_CONFIG_DOWNLOAD_FAILED, CUSTOM_RENDER_HANDLED, TLS_ENABLED, WIFI_PRESENT, CARRIER_NAME, CONNECTION_TYPE, AD_IS_INTERSTITIAL};
        }

        private MetricType(String str) {
            this(str, i, str, false);
        }

        private MetricType(String str, boolean z) {
            this.a = str;
            this.b = z;
        }

        public String getAaxName() {
            return this.a;
        }

        public boolean isAdTypeSpecific() {
            return this.b;
        }
    }

    static {
        a = Metrics.class.getSimpleName();
        b = new Metrics();
    }

    private Metrics() {
        this.c = new MetricsCollector();
    }

    protected static void a() {
        b = new Metrics();
    }

    protected static void a(Metrics metrics) {
        b = metrics;
    }

    private void a(WebRequest webRequest) {
        ThreadUtils.executeRunnable(new AnonymousClass_1(webRequest));
    }

    public static Metrics getInstance() {
        return b;
    }

    public MetricsCollector getMetricsCollector() {
        return this.c;
    }

    public void submitAndResetMetrics(AdData adData) {
        AdMetrics adMetrics = new AdMetrics(adData);
        if (adMetrics.canSubmit()) {
            MetricsCollector metricsCollector = this.c;
            this.c = new MetricsCollector();
            adMetrics.addGlobalMetrics(metricsCollector);
            a(adMetrics.getAaxWebRequestAndResetAdMetrics());
        } else {
            adData.resetMetricsCollector();
        }
    }
}