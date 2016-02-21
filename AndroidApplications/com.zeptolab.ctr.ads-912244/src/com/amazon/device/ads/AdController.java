package com.amazon.device.ads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.amazon.device.ads.AdError.ErrorCode;
import java.util.Map;

class AdController implements IAdController, IAdLoaderCallback {
    private static final String a = "AdController";
    private AdData b;
    private final AdLayout c;
    private final Context d;
    private final AdSize e;
    private int f;
    private AdListener g;
    private AdRenderer h;
    private WebView i;
    private int j;
    private int k;
    private boolean l;

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ AdProperties a;

        AnonymousClass_2(AdProperties adProperties) {
            this.a = adProperties;
        }

        public void run() {
            AdController.this.g.onAdLoaded(AdController.this.c, this.a);
            AdController.this.a(true);
        }
    }

    class AnonymousClass_3 implements Runnable {
        final /* synthetic */ AdError a;
        final /* synthetic */ boolean b;

        AnonymousClass_3(AdError adError, boolean z) {
            this.a = adError;
            this.b = z;
        }

        public void run() {
            AdController.this.g.onAdFailedToLoad(AdController.this, this.a);
            AdController.this.a(this.b);
        }
    }

    protected AdController() {
        this.f = 20000;
        this.c = null;
        this.d = null;
        this.e = null;
    }

    AdController(AdLayout adLayout, AdSize adSize, Context context) {
        this.f = 20000;
        this.c = adLayout;
        this.d = context;
        this.e = adSize;
        this.g = a();
    }

    protected static String a(int i, int i2) {
        return Integer.toString(i) + "x" + Integer.toString(i2);
    }

    private void a(AAXCreative aAXCreative) {
        this.h = a(aAXCreative, this.h);
        String str;
        if (this.h == null) {
            str = "No renderer returned, not loading an ad";
            Log.d(a, "No renderer returned, not loading an ad");
            adFailed(new AdError(ErrorCode.INTERNAL_ERROR, "No renderer returned, not loading an ad"));
        } else {
            this.h.initialize();
            c().a(true);
            long nanoTime = System.nanoTime();
            c().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START, nanoTime);
            c().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_RENDER, nanoTime);
            c().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_RENDER_FAILED, nanoTime);
            if (!this.h.d()) {
                h();
                str = "Ad could not render";
                Log.d(a, "Ad could not render");
                adFailed(new AdError(ErrorCode.INTERNAL_ERROR, "Ad could not render"));
            }
        }
    }

    private void a(boolean z) {
        if (z) {
            Metrics.getInstance().submitAndResetMetrics(c());
        }
    }

    private void h() {
        if (this.h != null) {
            this.h.g();
            this.h.h();
            this.h = null;
        }
    }

    private void i() {
        j();
        DeviceInfo.setUserAgentString(this.i.getSettings().getUserAgentString());
    }

    private void j() {
        this.i = WebViewFactory.getInstance().createWebView(this.d);
    }

    private void k() {
        if (this.i != null) {
            this.i.destroy();
            this.i = null;
        }
        this.l = false;
    }

    protected AdListener a() {
        return new DefaultAdListener(a);
    }

    protected AdRenderer a(AAXCreative aAXCreative, AdRenderer adRenderer) {
        AdRendererFactory adRendererFactory = new AdRendererFactory();
        if (adRendererFactory.shouldCreateNewRenderer(aAXCreative, adRenderer)) {
            Log.d(a, "Creating new renderer");
            if (adRenderer != null) {
                adRenderer.h();
            }
            if (this.i == null) {
                j();
            }
            adRenderer = adRendererFactory.getAdRenderer(aAXCreative, this.b, this, this.i, this.d);
            this.i = null;
            return adRenderer;
        } else {
            Log.d(a, "Re-using renderer");
            adRenderer.a(this.b);
            return adRenderer;
        }
    }

    protected void a(AdData adData) {
        this.b = adData;
    }

    protected void a(AdError adError) {
        k();
        a(adError, false);
    }

    protected void a(AdError adError, boolean z) {
        new Handler(this.d.getMainLooper()).post(new AnonymousClass_3(adError, z));
    }

    public void adClosedExpansion() {
        new Handler(this.d.getMainLooper()).post(new Runnable() {
            public void run() {
                AdController.this.g.onAdCollapsed(AdController.this.c);
            }
        });
    }

    public void adExpanded() {
        new Handler(this.d.getMainLooper()).post(new Runnable() {
            public void run() {
                AdController.this.g.onAdExpanded(AdController.this.c);
            }
        });
    }

    public void adFailed(AdError adError) {
        if (c() == null || c().getMetricsCollector().isMetricsCollectorEmpty()) {
            a(adError);
        } else {
            b(adError);
        }
    }

    public void adLoaded(AdProperties adProperties) {
        long nanoTime = System.nanoTime();
        adShown();
        c().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL, nanoTime);
        c().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL_SUCCESS, nanoTime);
        c().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_RENDER, nanoTime);
        e();
        c().a(false);
        this.l = false;
        new Handler(this.d.getMainLooper()).post(new AnonymousClass_2(adProperties));
    }

    public void adShown() {
        WebRequest.executeWebRequestInThread(c().j());
    }

    protected AdListener b() {
        return this.g;
    }

    protected void b(AdError adError) {
        k();
        c(adError);
        a(adError, true);
    }

    protected AdData c() {
        return this.b;
    }

    protected void c(AdError adError) {
        long nanoTime = System.nanoTime();
        c().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_RENDER_FAILED, nanoTime);
        if (adError.getCode() != ErrorCode.NO_FILL) {
            c().getMetricsCollector().incrementMetric(MetricType.AD_LOAD_FAILED);
        }
        if (c().k()) {
            c().getMetricsCollector().incrementMetric(MetricType.AD_COUNTER_RENDERING_FATAL);
            c().a(false);
        }
        c().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE, nanoTime);
        c().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL, nanoTime);
        c().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL_FAILURE, nanoTime);
        e();
    }

    protected void d() {
        a(new AdData(this.e));
    }

    public void destroy() {
        h();
    }

    protected void e() {
        AdUtils.setConnectionMetrics(c());
        if (getAdLayout().e()) {
            c().getMetricsCollector().incrementMetric(MetricType.AD_COUNTER_PARENT_VIEW_MISSING);
        }
        if (getWindowHeight() == 0) {
            c().getMetricsCollector().incrementMetric(MetricType.ADLAYOUT_HEIGHT_ZERO);
        }
        if (this.h != null) {
            c().getMetricsCollector().setMetricString(MetricType.VIEWPORT_SCALE, this.h.getScalingMultiplierDescription());
        }
    }

    protected Context f() {
        return this.d;
    }

    protected AdRenderer g() {
        return this.h;
    }

    public AdLayout getAdLayout() {
        return this.c;
    }

    public AdSize getAdSize() {
        return this.e;
    }

    public String getMaxSize() {
        return this.e.isAuto() ? a(getWindowWidth(), getWindowHeight()) : null;
    }

    public UrlExecutor getSpecialUrlExecutor() {
        return new AmazonMobileExecutor(this.h, this.d);
    }

    public int getTimeout() {
        return this.f;
    }

    public int getWindowHeight() {
        return this.j;
    }

    public int getWindowWidth() {
        return this.k;
    }

    public void handleResponse() {
        if (this.h != null) {
            this.h.g();
        }
        String str;
        if (this.b == null) {
            str = "We are unable to load the ad due to an internal error.";
            Log.d(a, "We are unable to load the ad due to an internal error.");
            adFailed(new AdError(ErrorCode.INTERNAL_ERROR, "We are unable to load the ad due to an internal error."));
        } else {
            if (!(this.b.d() == null || this.b.d().isEmpty())) {
                AAXCreative a = AAXCreative.a(this.b.d());
                if (a != null) {
                    a(a);
                    return;
                }
            }
            str = "There were no valid creative types returned, and we are unable to load the ad.";
            Log.d(a, "There were no valid creative types returned, and we are unable to load the ad.");
            adFailed(new AdError(ErrorCode.INTERNAL_ERROR, "There were no valid creative types returned, and we are unable to load the ad."));
        }
    }

    public boolean isAdExpanded() {
        return this.h == null ? false : this.h.a(AdState.valueOf("EXPANDED"));
    }

    public boolean isAdLoading() {
        return this.l;
    }

    public void prepareAd(long j) {
        d();
        c().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL, j);
        c().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL_FAILURE, j);
        c().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL_SUCCESS, j);
        c().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(MetricType.AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START, j);
        if (this.e.isAuto()) {
            c().setMaxSize(getMaxSize());
        }
        this.l = true;
        if (DeviceInfo.getUserAgentString() == null) {
            Looper mainLooper = Looper.getMainLooper();
            if (Thread.currentThread() == mainLooper.getThread()) {
                i();
            } else {
                new Handler(mainLooper).post(new Runnable() {
                    public void run() {
                        if (DeviceInfo.getUserAgentString() == null) {
                            AdController.this.i();
                        }
                    }
                });
            }
        }
    }

    public void prepareToGoAway() {
        if (this.h != null) {
            this.h.e();
        }
    }

    public boolean sendCommand(String str, Map map) {
        return this.h != null ? this.h.a(str, map) : false;
    }

    public void setListener(AdListener adListener) {
        if (adListener == null) {
            this.g = a();
        } else {
            this.g = adListener;
        }
    }

    public void setTimeout(int i) {
        this.f = i;
    }

    public void setWindowDimensions(int i, int i2) {
        this.k = i;
        this.j = i2;
    }

    public boolean shouldDisableWebViewHardwareAcceleration() {
        return getAdLayout().a();
    }
}