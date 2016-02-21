package com.amazon.device.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.webkit.WebView;
import com.amazon.device.ads.AdError.ErrorCode;
import com.amazon.device.ads.AdProperties.AdType;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

public class InterstitialAd implements Ad {
    protected static final String a = "amazon.mobile.ads.interstitial";
    protected static final String b = "action";
    protected static final String c = "dismissed";
    protected static final String d = "finished";
    protected static final String e = "uniqueIdentifier";
    protected static final String f = "creative";
    protected static final String g = "This interstitial ad has been destroyed and can no longer be used. Create a new InterstitialAd object to load a new ad.";
    protected static final String h = "An interstitial ad is currently showing. Please wait for the user to dismiss the ad before loading an ad.";
    protected static final String i = "An interstitial ad is ready to show. Please call showAd() to show the ad before loading another ad.";
    protected static final String j = "An interstitial ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad.";
    protected static final String k = "This interstitial ad has expired. Please load another ad.";
    protected static final String l = "Another interstitial ad is currently showing. Please wait for the InterstitialAdListener.onAdDismissed callback of the other ad.";
    protected static final String m = "The interstitial ad cannot be shown because it has been destroyed. Create a new InterstitialAd object to load a new ad.";
    protected static final String n = "The interstitial ad cannot be shown because it has already been displayed to the user. Please call loadAd(AdTargetingOptions) to load a new ad.";
    protected static final String o = "The interstitial ad cannot be shown because it has not loaded successfully. Please call loadAd(AdTargetingOptions) to load an ad first.";
    protected static final String p = "The interstitial ad cannot be shown because it is still loading. Please wait for the AdListener.onAdLoaded() callback before showing the ad.";
    protected static final String q = "The interstitial ad cannot be shown because it is already displayed on the screen. Please wait for the InterstitialAdListener.onAdDismissed() callback and then load a new ad.";
    private static final String r = "InterstitialAd";
    private static final AtomicBoolean s;
    private BroadcastReceiver A;
    private boolean B;
    private final AtomicBoolean C;
    private final AtomicBoolean D;
    private Timer E;
    private MraidView F;
    private final Activity t;
    private final String u;
    private IAdLoaderCallback v;
    private AdListener w;
    private State x;
    private AdData y;
    private int z;

    class AnonymousClass_4 implements Runnable {
        final /* synthetic */ MraidView a;

        AnonymousClass_4(MraidView mraidView) {
            this.a = mraidView;
        }

        public void run() {
            this.a.destroy();
        }
    }

    class AnonymousClass_6 implements Runnable {
        final /* synthetic */ AdError a;

        AnonymousClass_6(AdError adError) {
            this.a = adError;
        }

        public void run() {
            InterstitialAd.this.a(this.a);
            InterstitialAd.this.x();
        }
    }

    class AnonymousClass_8 implements Runnable {
        final /* synthetic */ MetricType a;
        final /* synthetic */ long b;

        AnonymousClass_8(MetricType metricType, long j) {
            this.a = metricType;
            this.b = j;
        }

        public void run() {
            InterstitialAd.this.x();
            if (this.a != null) {
                InterstitialAd.this.b().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(this.a, this.b);
            }
        }
    }

    class InterstitialAdLoaderCallback implements IAdLoaderCallback {
        private final InterstitialAd b;

        public InterstitialAdLoaderCallback(InterstitialAd interstitialAd) {
            this.b = interstitialAd;
        }

        public void adFailed(AdError adError) {
            if (!InterstitialAd.this.b(true)) {
                InterstitialAd.this.c(adError);
            }
        }

        public void adShown() {
            WebRequest.executeWebRequestInThread(InterstitialAd.this.b().j());
        }

        public int getTimeout() {
            return this.b.getTimeout();
        }

        public void handleResponse() {
            InterstitialAd.this.i();
        }
    }

    enum State {
        READY_TO_LOAD,
        LOADING,
        READY_TO_SHOW,
        SHOWING,
        DISMISSED;

        static {
            READY_TO_LOAD = new State("READY_TO_LOAD", 0);
            LOADING = new State("LOADING", 1);
            READY_TO_SHOW = new State("READY_TO_SHOW", 2);
            SHOWING = new State("SHOWING", 3);
            DISMISSED = new State("DISMISSED", 4);
            a = new State[]{READY_TO_LOAD, LOADING, READY_TO_SHOW, SHOWING, DISMISSED};
        }
    }

    static {
        s = new AtomicBoolean(false);
    }

    public InterstitialAd(Activity activity) {
        this(activity, z());
    }

    InterstitialAd(Activity activity, String str) {
        this.w = null;
        this.y = null;
        this.z = 20000;
        this.A = null;
        this.C = new AtomicBoolean(false);
        this.D = new AtomicBoolean(false);
        if (activity == null) {
            throw new IllegalArgumentException("InterstitialAd requires a non-null Activity");
        }
        this.t = activity;
        this.u = str;
        this.v = new InterstitialAdLoaderCallback(this);
        y();
    }

    private void A() {
        b().getMetricsCollector().setAdType(AdType.INTERSTITIAL);
        b().getMetricsCollector().incrementMetric(MetricType.AD_IS_INTERSTITIAL);
        AdUtils.setConnectionMetrics(b());
    }

    static void a() {
        s.set(false);
    }

    private void b(String str) {
        Log.e(r, str);
        o().adFailed(new AdError(ErrorCode.REQUEST_ERROR, str));
    }

    private void c(AdError adError) {
        a(State.READY_TO_LOAD);
        long nanoTime = System.nanoTime();
        if (!(b() == null || b().getMetricsCollector() == null)) {
            b().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL, nanoTime);
            b().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE, nanoTime);
            b().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL_FAILURE, nanoTime);
            if (adError != null) {
                if (adError.getCode() == ErrorCode.NO_FILL || adError.getCode() == ErrorCode.NETWORK_ERROR || adError.getCode() == ErrorCode.NETWORK_TIMEOUT) {
                    b().getMetricsCollector().incrementMetric(MetricType.AD_LOAD_FAILED);
                    if (adError.getCode() == ErrorCode.NETWORK_TIMEOUT) {
                        b().getMetricsCollector().incrementMetric(MetricType.AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT);
                    }
                }
            }
        }
        b(adError);
    }

    public static boolean isAdShowing() {
        return s.get();
    }

    private void y() {
        InternalAdRegistration.getInstance().contextReceived(this.t.getApplicationContext());
        a(State.READY_TO_LOAD);
        this.w = new DefaultAdListener(r);
        this.B = AdUtils.checkDefinedActivities(this.t.getApplicationContext());
    }

    private static String z() {
        return UUID.randomUUID().toString();
    }

    int a(AdReadyToLoadListener adReadyToLoadListener) {
        int i = 1;
        long nanoTime = System.nanoTime();
        if (this.B) {
            if (!c()) {
                if (isShowing()) {
                    Log.e(r, h);
                } else if (d()) {
                    if (b() == null || !b().isExpired()) {
                        Log.e(r, i);
                    } else {
                        i = 0;
                    }
                } else if (isLoading()) {
                    Log.e(r, j);
                }
                if (i != 0) {
                    return -1;
                }
            }
            this.C.set(false);
            a(false);
            if (this.E != null) {
                this.E.purge();
            }
            this.E = new Timer();
            this.E.schedule(new TimerTask() {
                public void run() {
                    if (!InterstitialAd.this.b(true)) {
                        InterstitialAd.this.r();
                    }
                }
            }, (long) getTimeout());
            a(State.LOADING);
            a(new AdData(AdSize.a));
            b().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL, nanoTime);
            b().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL_FAILURE, nanoTime);
            b().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL_SUCCESS, nanoTime);
            b().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(MetricType.AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START, nanoTime);
            adReadyToLoadListener.onAdReady(this);
            return 0;
        } else {
            String str = "Ads cannot load unless \"com.amazon.device.ads.AdActivity\" is correctly declared as an activity in AndroidManifest.xml. Consult the online documentation for more info.";
            b("Ads cannot load unless \"com.amazon.device.ads.AdActivity\" is correctly declared as an activity in AndroidManifest.xml. Consult the online documentation for more info.");
            return 1;
        }
    }

    MraidView a(WebView webView) {
        return new MraidView(new AdView() {
            public int getHeight() {
                return 0;
            }

            public UrlExecutor getSpecialUrlExecutor() {
                return null;
            }

            public boolean isAdViewRenderable() {
                return true;
            }

            public boolean launchExternalBrowserForLink(String str) {
                return false;
            }

            public void onPageFinished() {
                long nanoTime = System.nanoTime();
                InterstitialAd.this.b().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_RENDER, nanoTime);
                InterstitialAd.this.b().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL, nanoTime);
                InterstitialAd.this.b().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_TOTAL_SUCCESS, nanoTime);
                InterstitialAd.this.p();
            }

            public boolean shouldDisableWebViewHardwareAcceleration() {
                return false;
            }
        }, this.t, webView);
    }

    void a(Intent intent) {
        if (this.u.equals(intent.getStringExtra(e)) && a.equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra(b);
            if (c.equals(stringExtra)) {
                m();
            } else if (d.equals(stringExtra)) {
                n();
            }
        }
    }

    void a(AdData adData) {
        this.y = adData;
    }

    void a(AdError adError) {
        this.w.onAdFailedToLoad(this, adError);
    }

    void a(IAdLoaderCallback iAdLoaderCallback) {
        this.v = iAdLoaderCallback;
    }

    void a(State state) {
        this.x = state;
    }

    void a(MetricType metricType, long j) {
        new Handler(this.t.getApplicationContext().getMainLooper()).post(new AnonymousClass_8(metricType, j));
    }

    void a(String str) {
        this.F.loadHtmlData("http://amazon-adsystem.amazon.com/", str);
    }

    void a(boolean z) {
        this.D.set(z);
    }

    AdData b() {
        return this.y;
    }

    void b(AdError adError) {
        new Handler(this.t.getApplicationContext().getMainLooper()).post(new AnonymousClass_6(adError));
    }

    boolean b(boolean z) {
        return this.D.getAndSet(z);
    }

    boolean c() {
        return g() == State.READY_TO_LOAD || e();
    }

    boolean d() {
        return g() == State.READY_TO_SHOW;
    }

    boolean e() {
        return g() == State.DISMISSED;
    }

    boolean f() {
        return b().isExpired();
    }

    State g() {
        return this.x;
    }

    public int getTimeout() {
        return this.z;
    }

    boolean h() {
        try {
            Intent intent = new Intent(this.t.getApplicationContext(), AdActivity.class);
            intent.putExtra("adapter", InterstitialAdActivityAdapter.class.getName());
            intent.putExtra(e, this.u);
            intent.putExtra(f, this.y.b());
            this.t.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            Log.e(r, "Failed to show the interstitial ad because AdActivity could not be found.");
            return false;
        }
    }

    void i() {
        this.C.set(true);
        String replace = AdUtils.encloseHtml(this.y.b(), true).replace("<head>", "<head>\n  <script type='text/javascript'>\n  var connectionType=\"" + this.y.getConnectionType() + "\";\n" + "  var screenWidth=" + this.y.h() + ";\n" + "  var screenHeight=" + this.y.g() + ";\n" + "  </script>\n");
        this.y.a(replace);
        WebView createWebView = WebViewFactory.getInstance().createWebView(this.t);
        createWebView.setBackgroundColor(0);
        this.F = a(createWebView);
        long nanoTime = System.nanoTime();
        b().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START, nanoTime);
        b().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(MetricType.AD_LATENCY_RENDER, nanoTime);
        a(replace);
    }

    public boolean isLoading() {
        return g() == State.LOADING;
    }

    public boolean isShowing() {
        return g() == State.SHOWING;
    }

    void j() {
        o().adShown();
    }

    void k() {
        this.A = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                InterstitialAd.this.a(intent);
            }
        };
        this.t.getApplicationContext().registerReceiver(this.A, new IntentFilter(a));
    }

    void l() {
        this.t.getApplicationContext().unregisterReceiver(this.A);
        this.A = null;
    }

    public boolean loadAd() {
        return loadAd(null);
    }

    public boolean loadAd(AdTargetingOptions adTargetingOptions) {
        return AdLoader.a(getTimeout(), adTargetingOptions, new AdSlot[]{new AdSlot(this, adTargetingOptions)})[0];
    }

    void m() {
        b().getMetricsCollector().stopMetric(MetricType.AD_SHOW_DURATION);
        a(State.DISMISSED);
        s.set(false);
        v();
        l();
    }

    void n() {
        b().getMetricsCollector().stopMetric(MetricType.AD_SHOW_LATENCY);
        j();
        a(MetricType.AD_SHOW_DURATION, System.nanoTime());
    }

    IAdLoaderCallback o() {
        return this.v;
    }

    void p() {
        if (this.F != null) {
            this.F.unregisterReceivers();
        }
        if (!b(true)) {
            this.C.set(false);
            q();
            a(State.READY_TO_SHOW);
            t();
            a(MetricType.AD_LOADED_TO_AD_SHOW_TIME, System.nanoTime());
        }
    }

    void q() {
        this.E.cancel();
    }

    void r() {
        boolean z = this.C.get();
        MraidView removeCachedMraidView = MraidView.removeCachedMraidView(this.u);
        if (removeCachedMraidView != null) {
            new Handler(this.t.getApplicationContext().getMainLooper()).post(new AnonymousClass_4(removeCachedMraidView));
        }
        if (z) {
            b().getMetricsCollector().incrementMetric(MetricType.AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT);
        }
        c(new AdError(ErrorCode.NETWORK_ERROR, "Ad Load Timed Out"));
    }

    void s() {
        this.w.onAdLoaded(this, this.y.c());
    }

    public void setListener(AdListener adListener) {
        if (adListener == null) {
            this.w = new DefaultAdListener(r);
        } else {
            this.w = adListener;
        }
    }

    public void setTimeout(int i) {
        this.z = i;
    }

    public boolean showAd() {
        long nanoTime = System.nanoTime();
        if (d()) {
            if (f()) {
                Log.w(r, k);
                a(State.READY_TO_LOAD);
                return false;
            } else if (s.getAndSet(true)) {
                Log.w(r, l);
                return false;
            } else {
                b().getMetricsCollector().stopMetricInMillisecondsFromNanoseconds(MetricType.AD_LOADED_TO_AD_SHOW_TIME, nanoTime);
                b().getMetricsCollector().startMetricInMillisecondsFromNanoseconds(MetricType.AD_SHOW_LATENCY, nanoTime);
                k();
                MraidView.cacheMraidView(this.u, this.F);
                this.F = null;
                boolean h = h();
                if (h) {
                    a(State.SHOWING);
                } else {
                    MraidView.removeCachedMraidView(this.u);
                    l();
                    a(State.READY_TO_LOAD);
                    s.set(false);
                    b().getMetricsCollector().stopMetric(MetricType.AD_LATENCY_RENDER_FAILED);
                }
                return h;
            }
        } else if (e()) {
            Log.w(r, n);
            return false;
        } else if (c()) {
            Log.w(r, o);
            return false;
        } else if (isLoading()) {
            Log.w(r, p);
            return false;
        } else if (!isShowing()) {
            return false;
        } else {
            Log.w(r, q);
            return false;
        }
    }

    void t() {
        new Handler(this.t.getApplicationContext().getMainLooper()).post(new Runnable() {
            public void run() {
                InterstitialAd.this.s();
            }
        });
    }

    void u() {
        this.w.onAdDismissed(this);
    }

    void v() {
        new Handler(this.t.getApplicationContext().getMainLooper()).post(new Runnable() {
            public void run() {
                InterstitialAd.this.u();
                InterstitialAd.this.x();
            }
        });
    }

    void w() {
        a(null, 0);
    }

    protected void x() {
        if (b() != null && b().getMetricsCollector() != null && !b().getMetricsCollector().isMetricsCollectorEmpty()) {
            A();
            Metrics.getInstance().submitAndResetMetrics(b());
        }
    }
}