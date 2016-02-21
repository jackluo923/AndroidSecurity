package com.amazon.device.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.WindowManager;
import android.webkit.WebViewDatabase;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.amazon.device.ads.AdError.ErrorCode;
import com.inmobi.commons.analytics.bootstrapper.ThinICEConfig;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.Locale;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class AdLayout extends FrameLayout implements Ad {
    public static final int DEFAULT_TIMEOUT = 20000;
    private static final String a = "AdLayout";
    private static ScheduledThreadPoolExecutor q;
    private BroadcastReceiver b;
    private boolean c;
    private Context d;
    private AdSize e;
    private IAdController f;
    private boolean g;
    private boolean h;
    private int i;
    private AtomicBoolean j;
    private AdReadyToLoadListener k;
    private boolean l;
    private View m;
    private boolean n;
    private long o;
    private boolean p;

    private static class OnLayoutChangeListenerUtil {

        final class AnonymousClass_1 implements OnLayoutChangeListener {
            final /* synthetic */ AdLayout a;
            final /* synthetic */ AdReadyToLoadListener b;

            AnonymousClass_1(AdLayout adLayout, AdReadyToLoadListener adReadyToLoadListener) {
                this.a = adLayout;
                this.b = adReadyToLoadListener;
            }

            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (this.a.j.getAndSet(false)) {
                    this.a.b();
                    this.a.c(this.b);
                    this.a.m.removeOnLayoutChangeListener(this);
                }
            }
        }

        private OnLayoutChangeListenerUtil() {
        }

        @TargetApi(11)
        protected static void a(AdLayout adLayout, AdReadyToLoadListener adReadyToLoadListener) {
            adLayout.m.addOnLayoutChangeListener(new AnonymousClass_1(adLayout, adReadyToLoadListener));
        }
    }

    static {
        q = new ScheduledThreadPoolExecutor(1);
        q.setKeepAliveTime(ThinICEConfig.SAMPLE_INTERVAL_DEFAULT, TimeUnit.SECONDS);
    }

    public AdLayout(Activity activity) {
        this(activity, AdSize.SIZE_AUTO);
    }

    public AdLayout(Context context, AdSize adSize) {
        super(context);
        this.g = false;
        this.h = false;
        this.i = 8;
        this.j = new AtomicBoolean(false);
        this.k = null;
        this.l = false;
        this.m = null;
        this.n = false;
        this.o = 0;
        a(context, adSize);
    }

    public AdLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = false;
        this.h = false;
        this.i = 8;
        this.j = new AtomicBoolean(false);
        this.k = null;
        this.l = false;
        this.m = null;
        this.n = false;
        this.o = 0;
        a(context, attributeSet);
    }

    public AdLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = false;
        this.h = false;
        this.i = 8;
        this.j = new AtomicBoolean(false);
        this.k = null;
        this.l = false;
        this.m = null;
        this.n = false;
        this.o = 0;
        a(context, attributeSet);
    }

    AdLayout(IAdController iAdController) {
        super(null);
        this.g = false;
        this.h = false;
        this.i = 8;
        this.j = new AtomicBoolean(false);
        this.k = null;
        this.l = false;
        this.m = null;
        this.n = false;
        this.o = 0;
        this.f = iAdController;
        a(null, null);
    }

    private static String a(AttributeSet attributeSet, String str, String str2) {
        return attributeSet.getAttributeValue(str, str2);
    }

    private void a(Context context, AttributeSet attributeSet) {
        String str = "adSize";
        str = "http://schemas.android.com/apk/lib/com.amazon.device.ads";
        str = a(attributeSet, "http://schemas.android.com/apk/lib/com.amazon.device.ads", "adSize");
        if (str == null) {
            str = a(attributeSet, "http://schemas.android.com/apk/res/" + context.getPackageName(), "adSize");
            if (str != null) {
                Log.w(true, a, "DEPRECATED - Please use the XML namespace \"http://schemas.android.com/apk/lib/com.amazon.device.ads\" for specifying AdLayout properties.");
                if (str.toLowerCase(Locale.US).equals("custom")) {
                    str = "Using \"custom\" or \"CUSTOM\" for the \"adSize\" property is no longer supported. Please specifiy a size or remove the property to use Auto Ad Size.";
                    Log.e(true, a, str);
                    throw new IllegalArgumentException(str);
                }
            }
        }
        a(context, b(str));
    }

    private void a(Context context, AdSize adSize) {
        InternalAdRegistration.getInstance().contextReceived(context);
        if (adSize == null) {
            adSize = AdSize.SIZE_AUTO;
        }
        this.e = adSize;
        this.d = context;
        if (isInEditMode()) {
            View textView = new TextView(this.d);
            textView.setText(a);
            textView.setLayoutParams(new LayoutParams(-1, -1));
            textView.setGravity(ZBuildConfig.$targetsdk);
            addView(textView);
        } else {
            this.c = getVisibility() == 0;
            setHorizontalScrollBarEnabled(false);
            setVerticalScrollBarEnabled(false);
            if (a(this.d)) {
                Log.e(true, a, "Disabling ads. Local cache file is inaccessible so ads will fail if we try to create a WebView. Details of this Android bug found at: http://code.google.com/p/android/issues/detail?id=10789");
            } else {
                if (this.f == null) {
                    this.f = a(this.e, this.d);
                }
                this.n = AdUtils.checkDefinedActivities(this.d);
            }
        }
    }

    private static AdSize b(String str) {
        int i = 0;
        AdSize adSize = AdSize.SIZE_AUTO;
        if (str != null) {
            String toLowerCase = str.toLowerCase(Locale.US);
            if (!toLowerCase.equals("auto")) {
                int parseInt;
                String[] split = toLowerCase.split("x");
                if (split.length == 2) {
                    parseInt = Utils.parseInt(split[0], 0);
                    i = Utils.parseInt(split[1], 0);
                } else {
                    parseInt = 0;
                }
                return new AdSize(parseInt, i);
            }
        }
        return adSize;
    }

    private void d(AdReadyToLoadListener adReadyToLoadListener) {
        if (getLayoutParams() == null) {
            String str = "Can't load an ad because layout parameters are blank. Use setLayoutParams() to specify dimensions for this AdLayout.";
            Metrics.getInstance().getMetricsCollector().incrementMetric(MetricType.AD_FAILED_NULL_LAYOUT_PARAMS);
            a(str);
        } else if (Utils.isAtLeastAndroidAPI(R.styleable.MapAttrs_uiZoomGestures)) {
            g();
            if (i()) {
                a("Ad load failed because root view could not be obtained from the activity.");
            } else if (h()) {
                b(adReadyToLoadListener);
                setOnLayoutChangeListenerForRoot(adReadyToLoadListener);
            } else {
                b();
                c(adReadyToLoadListener);
            }
        } else {
            b();
            c(adReadyToLoadListener);
        }
    }

    private void j() {
        if (!this.g) {
            this.g = true;
            this.b = new BroadcastReceiver() {
                public void onReceive(Context context, Intent intent) {
                    if (intent.getAction().equals("android.intent.action.SCREEN_OFF") && AdLayout.this.c) {
                        AdLayout.this.f.sendCommand("close", null);
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.d.getApplicationContext().registerReceiver(this.b, intentFilter);
        }
    }

    private void k() {
        if (this.g) {
            this.g = false;
            this.d.getApplicationContext().unregisterReceiver(this.b);
        }
    }

    int a(AdReadyToLoadListener adReadyToLoadListener) {
        this.o = System.nanoTime();
        if (this.f.isAdLoading() || this.j.get()) {
            Log.e(a, "Can't load an ad because ad loading is already in progress");
            return -1;
        } else if (this.f.isAdExpanded()) {
            Log.e(a, "Can't load an ad because another ad is currently expanded");
            return -1;
        } else if (!this.n) {
            a("Ads cannot load unless \"com.amazon.device.ads.AdActivity\" is correctly declared as an activity in AndroidManifest.xml. Consult the online documentation for more info.");
            return 1;
        } else if (!c(this.d)) {
            a("Ads cannot load because the INTERNET permission is missing from the app's manifest.");
            return 1;
        } else if (InternalAdRegistration.getInstance().getRegistrationInfo().getAppKey() == null) {
            a("Can't load an ad because Application Key has not been set. Did you forget to call AdRegistration.setAppKey( ... )?");
            return 1;
        } else if (b(this.d)) {
            if (this.e.isAuto()) {
                Log.d(a, "Ad size to be determined automatically.");
            }
            f();
            if (isLayoutRequested() && this.e.isAuto() && !e()) {
                b(adReadyToLoadListener);
            } else if (e()) {
                d(adReadyToLoadListener);
            } else {
                c(adReadyToLoadListener);
            }
            return 0;
        } else {
            String str = "We will be unable to create a WebView for rendering an ad due to an unknown issue with the WebView.";
            Metrics.getInstance().getMetricsCollector().incrementMetric(MetricType.AD_FAILED_UNKNOWN_WEBVIEW_ISSUE);
            a(str);
            return 1;
        }
    }

    int a(boolean z) {
        int i = z ? getLayoutParams().width : getLayoutParams().height;
        if (i == -1) {
            return i() ? b(z) : c(z);
        } else if (i == -2) {
            return 0;
        } else {
            return i;
        }
    }

    IAdController a(AdSize adSize, Context context) {
        return new AdController(this, adSize, context);
    }

    void a(String str) {
        Log.e(a, str);
        ((IAdLoaderCallback) this.f).adFailed(new AdError(ErrorCode.REQUEST_ERROR, str));
    }

    boolean a() {
        return this.p;
    }

    boolean a(Context context) {
        return WebViewDatabase.getInstance(context) == null;
    }

    int b(boolean z) {
        WindowManager windowManager = (WindowManager) this.d.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return z ? displayMetrics.widthPixels : displayMetrics.heightPixels;
    }

    void b() {
        this.f.setWindowDimensions(a(true), a(false));
    }

    void b(AdReadyToLoadListener adReadyToLoadListener) {
        this.j.set(true);
        this.k = adReadyToLoadListener;
        c();
    }

    boolean b(Context context) {
        return WebViewFactory.isWebViewOk(context);
    }

    int c(boolean z) {
        return z ? this.m.getWidth() : this.m.getHeight();
    }

    void c() {
        q.schedule(new Runnable() {
            public void run() {
                AdLayout.this.d();
            }
        }, (long) getTimeout(), TimeUnit.MILLISECONDS);
    }

    void c(AdReadyToLoadListener adReadyToLoadListener) {
        this.f.prepareAd(this.o);
        adReadyToLoadListener.onAdReady(this);
    }

    protected boolean c(Context context) {
        return PermissionChecker.a().passesInternetPermissionCheck(context);
    }

    public boolean collapseAd() {
        return this.f.sendCommand("close", null);
    }

    void d() {
        if (this.j.getAndSet(false)) {
            String str = "Can't load an ad because the view size cannot be determined.";
            Metrics.getInstance().getMetricsCollector().incrementMetric(MetricType.AD_FAILED_LAYOUT_NOT_RUN);
            a(str);
        }
    }

    public void destroy() {
        Log.d(a, "Destroying the AdLayout");
        k();
        this.f.destroy();
    }

    boolean e() {
        return this.l;
    }

    void f() {
        this.l = getParent() == null;
    }

    void g() {
        this.m = ((Activity) this.d).getWindow().getDecorView().findViewById(16908290).getRootView();
    }

    View getActivityRootView() {
        return this.m;
    }

    AdController getAdController() {
        return (AdController) this.f;
    }

    public AdSize getAdSize() {
        return this.e;
    }

    boolean getNeedsToLoadAdOnLayout() {
        return this.j.get();
    }

    public int getTimeout() {
        return this.f.getTimeout();
    }

    boolean h() {
        return this.m.isLayoutRequested();
    }

    boolean i() {
        return this.m == null;
    }

    public boolean isAdLoading() {
        return isLoading();
    }

    public boolean isLoading() {
        return this.f.isAdLoading();
    }

    public boolean loadAd() {
        return loadAd(new AdTargetingOptions());
    }

    public boolean loadAd(AdTargetingOptions adTargetingOptions) {
        if (adTargetingOptions == null) {
            adTargetingOptions = new AdTargetingOptions();
        }
        return AdLoader.a(this.f.getTimeout(), adTargetingOptions, new AdSlot[]{new AdSlot(this, adTargetingOptions)})[0];
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            this.h = true;
            j();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.h = false;
        k();
        this.f.prepareToGoAway();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        super.onLayout(z, i, i2, i3, i4);
        if (!isInEditMode()) {
            this.f.setWindowDimensions(i5, i6);
            if (this.j.getAndSet(false)) {
                c(this.k);
                this.k = null;
            }
        }
    }

    protected void onWindowVisibilityChanged(int i) {
        if (this.h && this.i != i) {
            if (i != 0) {
                this.c = false;
                k();
            } else if (i == 0) {
                this.c = true;
            }
        }
    }

    void setIsParentViewMissingAtLoadTime(boolean z) {
        this.l = z;
    }

    public void setListener(AdListener adListener) {
        this.f.setListener(adListener);
    }

    void setNeedsToLoadAdOnLayout(boolean z) {
        this.j.set(z);
    }

    void setOnLayoutChangeListenerForRoot(AdReadyToLoadListener adReadyToLoadListener) {
        OnLayoutChangeListenerUtil.a(this, adReadyToLoadListener);
    }

    void setShouldDisableWebViewHardwareAcceleration(boolean z) {
        this.p = z;
    }

    public void setTimeout(int i) {
        this.f.setTimeout(i);
    }
}