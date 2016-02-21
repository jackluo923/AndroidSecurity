package com.millennialmedia.android;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Toast;
import com.brightcove.player.media.MediaService;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

class MMWebView extends WebView {
    static final String a = "PROPERTY_BANNER_TYPE";
    static final String b = "PROPERTY_STATE";
    static final String c = "PROPERTY_EXPANDING";
    static final String d = "interface";
    private static final String t = "MMWebView";
    long e;
    volatile boolean f;
    volatile String g;
    boolean h;
    final String i;
    final GestureDetector j;
    volatile boolean k;
    String l;
    int m;
    volatile boolean n;
    int o;
    int p;
    volatile boolean q;
    boolean r;
    boolean s;
    private HttpMMHeaders u;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ MMAdImpl a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        AnonymousClass_1(MMAdImpl mMAdImpl, String str, String str2) {
            this.a = mMAdImpl;
            this.b = str;
            this.c = str2;
        }

        public void run() {
            if (HandShake.a(MMWebView.this.getContext()).e) {
                MMWebView.this.c();
            } else if (MMWebView.this.m == 0) {
                MMWebView.this.b();
            } else {
                MMWebView.this.a();
            }
            MMAd d = this.a.d();
            if (d != null && d instanceof MMLayout) {
                ((MMLayout) d).m();
            }
            MMWebView.this.h = true;
            MMWebView.this.loadDataWithBaseURL(this.b, this.c, WebRequest.CONTENT_TYPE_HTML, HTMLEncoder.ENCODE_NAME_DEFAULT, null);
        }
    }

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        AnonymousClass_2(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        public void run() {
            if (HandShake.a(MMWebView.this.getContext()).e) {
                MMWebView.this.c();
            } else if (MMWebView.this.m == 0) {
                MMWebView.this.b();
            } else {
                MMWebView.this.a();
            }
            MMWebView.this.h = true;
            MMWebView.this.loadDataWithBaseURL(this.a, this.b, WebRequest.CONTENT_TYPE_HTML, HTMLEncoder.ENCODE_NAME_DEFAULT, null);
        }
    }

    class AnonymousClass_3 implements Callable {
        final /* synthetic */ MMAdImpl a;

        AnonymousClass_3(MMAdImpl mMAdImpl) {
            this.a = mMAdImpl;
        }

        public Void call() {
            try {
                MMWebView.this.buildDrawingCache();
                Bitmap drawingCache = MMWebView.this.getDrawingCache();
                if (drawingCache != null) {
                    this.a.a(Bitmap.createBitmap(drawingCache));
                }
                MMWebView.this.destroyDrawingCache();
            } catch (Exception e) {
                MMLog.e(t, "Animation exception: ", e);
            }
            return null;
        }
    }

    class AnonymousClass_4 implements Runnable {
        final /* synthetic */ MMAdView a;
        final /* synthetic */ DTOResizeParameters b;

        AnonymousClass_4(MMAdView mMAdView, DTOResizeParameters dTOResizeParameters) {
            this.a = mMAdView;
            this.b = dTOResizeParameters;
        }

        private void a() {
            if (MMWebView.this.F()) {
                LayoutParams layoutParams = MMWebView.this.getLayoutParams();
                MMWebView.this.p = layoutParams.width;
                MMWebView.this.o = layoutParams.height;
                if (MMWebView.this.p <= 0) {
                    MMWebView.this.p = MMWebView.this.getWidth();
                }
                if (MMWebView.this.o <= 0) {
                    MMWebView.this.o = MMWebView.this.getHeight();
                }
            }
        }

        private void a(DTOResizeParameters dTOResizeParameters) {
            MMAdView mMAdView = this.a;
            mMAdView.getClass();
            BannerBounds bannerBounds = new BannerBounds(dTOResizeParameters);
            a();
            bannerBounds.a(MMWebView.this.getLayoutParams());
        }

        public void run() {
            synchronized (MMWebView.this) {
                MMWebView.this.h = true;
                this.a.a(this.b);
                a(this.b);
                MMWebView.this.loadUrl("javascript:MMJS.sdk.setState('resized');");
                MMWebView.this.g = "resized";
            }
        }
    }

    class AnonymousClass_5 implements Runnable {
        final /* synthetic */ MMAdView a;

        AnonymousClass_5(MMAdView mMAdView) {
            this.a = mMAdView;
        }

        void a() {
            if (MMSDK.d() && !MMWebView.this.F()) {
                LayoutParams layoutParams = MMWebView.this.getLayoutParams();
                layoutParams.width = MMWebView.this.p;
                layoutParams.height = MMWebView.this.o;
                MMWebView.this.p = -50;
                MMWebView.this.o = -50;
                MMWebView.this.requestLayout();
            }
        }

        public void run() {
            synchronized (MMWebView.this) {
                this.a.a();
                a();
                MMWebView.this.o();
                MMWebView.this.h = true;
                MMWebView.this.invalidate();
            }
        }
    }

    class AnonymousClass_6 implements Runnable {
        final /* synthetic */ String a;

        AnonymousClass_6(String str) {
            this.a = str;
        }

        public void run() {
            MMWebView.this.loadUrl(this.a);
        }
    }

    private static class BannerGestureListener extends SimpleOnGestureListener {
        WeakReference a;

        public BannerGestureListener(MMWebView mMWebView) {
            this.a = new WeakReference(mMWebView);
        }

        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            MMWebView mMWebView = (MMWebView) this.a.get();
            if (mMWebView != null) {
                MMAdView h = mMWebView.h();
                if (h != null) {
                    Event.a(h.i);
                }
            }
            return false;
        }
    }

    private static class MyWebChromeClient extends WebChromeClient {
        private static final String b = "mm_use_geo_location";
        WeakReference a;

        class AnonymousClass_1 implements OnClickListener {
            final /* synthetic */ Callback a;
            final /* synthetic */ String b;

            AnonymousClass_1(Callback callback, String str) {
                this.a = callback;
                this.b = str;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                MyWebChromeClient.this.a(false);
                this.a.invoke(this.b, false, false);
            }
        }

        class AnonymousClass_2 implements OnClickListener {
            final /* synthetic */ Callback a;
            final /* synthetic */ String b;

            AnonymousClass_2(Callback callback, String str) {
                this.a = callback;
                this.b = str;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                MyWebChromeClient.this.a(true);
                this.a.invoke(this.b, true, true);
            }
        }

        MyWebChromeClient(MMWebView mMWebView) {
            this.a = new WeakReference(mMWebView);
        }

        private String a(Context context) {
            ApplicationInfo applicationInfo;
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            try {
                applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
            } catch (NameNotFoundException e) {
                applicationInfo = null;
            }
            return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "This app");
        }

        private void a(boolean z) {
            MMWebView mMWebView = (MMWebView) this.a.get();
            if (mMWebView != null) {
                Editor edit = mMWebView.getContext().getSharedPreferences("MillennialMediaSettings", 0).edit();
                edit.putBoolean(b, z);
                edit.commit();
            }
        }

        private boolean a() {
            MMWebView mMWebView = (MMWebView) this.a.get();
            if (mMWebView == null) {
                return false;
            }
            return !mMWebView.getContext().getSharedPreferences("MillennialMediaSettings", 0).contains(b);
        }

        private boolean b() {
            MMWebView mMWebView = (MMWebView) this.a.get();
            return mMWebView != null ? mMWebView.getContext().getSharedPreferences("MillennialMediaSettings", 0).getBoolean(b, false) : false;
        }

        public void onConsoleMessage(String str, int i, String str2) {
            super.onConsoleMessage(str, i, str2);
        }

        public void onGeolocationPermissionsShowPrompt(String str, Callback callback) {
            if (!a()) {
                callback.invoke(str, false, false);
            } else if (b()) {
                callback.invoke(str, true, true);
            } else {
                MMWebView mMWebView = (MMWebView) this.a.get();
                if (mMWebView != null) {
                    Context j = mMWebView.j();
                    if (j != null) {
                        Builder builder = new Builder(j);
                        builder.setTitle(a(j));
                        builder.setMessage("Would like to use your Current Location.").setPositiveButton("Allow", new AnonymousClass_2(callback, str)).setNegativeButton("Don't Allow", new AnonymousClass_1(callback, str));
                        builder.create().show();
                    }
                }
            }
        }

        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            MMWebView mMWebView = (MMWebView) this.a.get();
            if (mMWebView != null && mMWebView.getContext() != mMWebView.getContext().getApplicationContext()) {
                return super.onJsAlert(webView, str, str2, jsResult);
            }
            Toast.makeText(mMWebView.getContext(), str2, 0).show();
            return true;
        }

        public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
            MMWebView mMWebView = (MMWebView) this.a.get();
            if (mMWebView != null && mMWebView.getContext() != mMWebView.getContext().getApplicationContext()) {
                return super.onJsBeforeUnload(webView, str, str2, jsResult);
            }
            Toast.makeText(mMWebView.getContext(), str2, 0).show();
            return true;
        }

        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            MMWebView mMWebView = (MMWebView) this.a.get();
            if (mMWebView != null && mMWebView.getContext() != mMWebView.getContext().getApplicationContext()) {
                return super.onJsConfirm(webView, str, str2, jsResult);
            }
            Toast.makeText(mMWebView.getContext(), str2, 0).show();
            return true;
        }

        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            MMWebView mMWebView = (MMWebView) this.a.get();
            if (mMWebView != null && mMWebView.getContext() != mMWebView.getContext().getApplicationContext()) {
                return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
            }
            Toast.makeText(mMWebView.getContext(), str2, 0).show();
            return true;
        }
    }

    private static class WebTouchListener implements OnTouchListener {
        WeakReference a;

        WebTouchListener(MMWebView mMWebView) {
            this.a = new WeakReference(mMWebView);
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            MMWebView mMWebView = (MMWebView) this.a.get();
            boolean z = motionEvent.getAction() == 2;
            if (mMWebView == null) {
                return z;
            }
            return z && mMWebView.g();
        }
    }

    public MMWebView(Context context, long j) {
        super(context);
        this.h = true;
        this.o = -50;
        this.p = -50;
        this.q = false;
        this.r = false;
        this.s = false;
        setWillNotDraw(false);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setOnTouchListener(new WebTouchListener(this));
        this.g = "loading";
        this.e = j;
        MMLog.a(t, String.format("Assigning WebView internal id: %d", new Object[]{Long.valueOf(this.e)}));
        setId((int) (15063 + this.e));
        if (HandShake.a(context).e) {
            c();
        } else {
            a();
        }
        setWebChromeClient(new MyWebChromeClient(this));
        WebSettings settings = getSettings();
        this.i = settings.getUserAgentString();
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(-1);
        settings.setDefaultTextEncodingName(HTMLEncoder.ENCODE_NAME_DEFAULT);
        settings.setLoadWithOverviewMode(true);
        settings.setGeolocationEnabled(true);
        if (VERSION.SDK_INT >= 17) {
            MMLog.c(t, "Disabling user gesture requirement for media playback");
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        this.j = new GestureDetector(context.getApplicationContext(), new BannerGestureListener(this));
    }

    private boolean E() {
        int parseInt = Integer.parseInt(VERSION.SDK);
        return "Nexus S".equals(Build.MODEL) && "samsung".equals(Build.MANUFACTURER) && (parseInt == 16 || parseInt == 17);
    }

    private boolean F() {
        return this.p == -50 && this.o == -50;
    }

    private boolean G() {
        return l() == null;
    }

    boolean A() {
        if (this.r) {
            return C();
        }
        this.r = true;
        return G() && this.q;
    }

    boolean B() {
        if (this.s) {
            return C();
        }
        this.s = true;
        return G() && this.q;
    }

    boolean C() {
        return hasWindowFocus() && G();
    }

    void D() {
        this.h = true;
    }

    void a() {
        if (VERSION.SDK_INT >= 11) {
            MMLog.c(t, "Disabling acceleration");
            setLayerType(0, null);
        }
    }

    void a(double d) {
        loadUrl("javascript:MMJS.sdk.microphoneAudioLevelChange(" + d + ")");
    }

    synchronized void a(DTOResizeParameters dTOResizeParameters) {
        if (MMSDK.d()) {
            MMAdView h = h();
            this.n = false;
            MMLog.b(t, "New DTOResizeParameters = " + dTOResizeParameters);
            if (h != null) {
                MMSDK.a(new AnonymousClass_4(h, dTOResizeParameters));
            }
        }
    }

    void a(HttpMMHeaders httpMMHeaders) {
        this.u = httpMMHeaders;
    }

    void a(MMAdImpl mMAdImpl) {
        Runnable futureTask = new FutureTask(new AnonymousClass_3(mMAdImpl));
        MMSDK.a(futureTask);
        try {
            futureTask.get();
        } catch (InterruptedException e) {
        } catch (ExecutionException e2) {
        }
    }

    void a(String str) {
        loadUrl("javascript:MMJS.sdk.microphoneStateChange('" + str + "')");
    }

    void a(String str, String str2, Context context) {
        if (str != null && str2 != null) {
            String a;
            String substring = str2.substring(0, str2.lastIndexOf("/") + 1);
            d();
            if (MRaid.d(context)) {
                a = MRaid.a(context, str);
            } else {
                MMLog.e(t, "MMJS is not downloaded");
                a = str;
            }
            if (MMSDK.a >= 5) {
                MMLog.a(t, String.format("Received ad with base url %s.", new Object[]{str2}));
                MMLog.a(t, str);
            }
            MMSDK.a(new AnonymousClass_2(substring, a));
        }
    }

    void a(String str, String str2, MMAdImpl mMAdImpl) {
        if (str != null && str2 != null && mMAdImpl != null) {
            b(mMAdImpl);
            d();
            String substring = str2.substring(0, str2.lastIndexOf("/") + 1);
            if (MMSDK.a >= 5) {
                MMLog.a(t, String.format("Received ad with base url %s.", new Object[]{substring}));
                MMLog.a(t, str);
            }
            if (mMAdImpl.h()) {
                a(mMAdImpl);
            }
            if (mMAdImpl.f) {
                str = "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>" + str;
            }
            if (MRaid.d(mMAdImpl.j())) {
                str = MRaid.a(mMAdImpl.j(), str);
            } else {
                MMLog.e(t, "MMJS is not downloaded");
            }
            MMSDK.a(new AnonymousClass_1(mMAdImpl, substring, str));
        }
    }

    void a(Map map) {
        map.put(a, f() ? "true" : "false");
        map.put(b, this.g);
        map.put(c, String.valueOf(this.e));
    }

    boolean a(long j) {
        ViewParent parent = getParent();
        if (parent == null) {
            return false;
        }
        MMLog.d(t, "Id check for parent: " + j + " versus " + ((MMLayout) parent).i.k);
        return j == ((MMLayout) parent).i.k ? 1 : false;
    }

    void b() {
        if (!E()) {
            try {
                WebView.class.getMethod("setLayerType", new Class[]{Integer.TYPE, Paint.class}).invoke(this, new Object[]{Integer.valueOf(1), null});
                MMLog.b(t, "Enable softwareAcceleration");
            } catch (Exception e) {
            }
        }
    }

    synchronized void b(MMAdImpl mMAdImpl) {
        if (MMSDK.d() && x() && mMAdImpl != null) {
            MMAd d = mMAdImpl.d();
            if (d instanceof MMAdView) {
                MMAdView mMAdView = (MMAdView) d;
                this.n = true;
                MMSDK.a(new AnonymousClass_5(mMAdView));
            }
        }
    }

    boolean b(String str) {
        return (!TextUtils.isEmpty(this.l) && str.equals(this.l + "?")) || str.equals(this.l + "#");
    }

    void c() {
        if (!E()) {
            try {
                WebView.class.getMethod("setLayerType", new Class[]{Integer.TYPE, Paint.class}).invoke(this, new Object[]{Integer.valueOf(GoogleScorer.CLIENT_PLUS), null});
                MMLog.b(t, "Enabled hardwareAcceleration");
            } catch (Exception e) {
            }
        }
    }

    void d() {
        BridgeMMSpeechkit.a();
        this.r = false;
        this.s = false;
    }

    String e() {
        return this.i;
    }

    boolean f() {
        return getParent() != null ? ((ViewGroup) getParent()) instanceof MMAdView : false;
    }

    boolean g() {
        return getParent() instanceof MMAdView;
    }

    MMAdView h() {
        return getParent() instanceof MMAdView ? (MMAdView) getParent() : null;
    }

    MMLayout i() {
        return getParent() instanceof MMLayout ? (MMLayout) getParent() : null;
    }

    synchronized Activity j() {
        Activity activity;
        ViewParent parent = getParent();
        if (parent != null && parent instanceof ViewGroup) {
            Context context = ((ViewGroup) parent).getContext();
            if (context != null && context instanceof MMActivity) {
                MMActivity mMActivity = (MMActivity) context;
            }
        }
        activity = null;
        return activity;
    }

    synchronized AdViewOverlayView k() {
        AdViewOverlayView adViewOverlayView;
        ViewParent parent = getParent();
        adViewOverlayView = (parent == null || !parent instanceof AdViewOverlayView) ? null : (AdViewOverlayView) parent;
        return adViewOverlayView;
    }

    synchronized MMAdView l() {
        MMAdView mMAdView;
        ViewParent parent = getParent();
        mMAdView = (parent == null || !parent instanceof MMAdView) ? null : (MMAdView) parent;
        return mMAdView;
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.l = str;
        try {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } catch (Exception e) {
            MMLog.e(t, "Error hit when calling through to loadDataWithBaseUrl", e);
        }
    }

    public void loadUrl(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.startsWith(MediaService.DEFAULT_MEDIA_DELIVERY)) {
                this.l = str;
            }
            MMLog.a(t, "loadUrl @@" + str);
            if (MMSDK.a()) {
                try {
                    super.loadUrl(str);
                } catch (Exception e) {
                }
            } else {
                MMSDK.a(new AnonymousClass_6(str));
            }
        }
    }

    void m() {
        loadUrl("javascript:MMJS.sdk.setPlacementType('interstitial');");
    }

    void n() {
        loadUrl("javascript:MMJS.sdk.setPlacementType('inline');");
    }

    void o() {
        loadUrl("javascript:MMJS.sdk.setState('default')");
        this.g = "default";
        this.h = true;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = MeasureSpec.getSize(i2);
        int size2 = MeasureSpec.getSize(i);
        int measuredHeight = getMeasuredHeight();
        if (measuredHeight != 0) {
            size = measuredHeight;
        }
        if (this.k) {
            setMeasuredDimension(1, 1);
        } else {
            setMeasuredDimension(size2, size);
        }
    }

    public void onPauseWebView() {
        if (VERSION.SDK_INT >= 11) {
            try {
                WebView.class.getMethod("onPause", new Class[0]).invoke(this, new Object[0]);
            } catch (Exception e) {
                MMLog.d(t, "No onPause()");
            }
        }
    }

    public void onResumeWebView() {
        if (!f() && VERSION.SDK_INT >= 19) {
            Activity j = j();
            if (j != null) {
                j.setRequestedOrientation(MMException.REQUEST_NOT_FILLED);
            }
        }
        if (VERSION.SDK_INT >= 11) {
            try {
                WebView.class.getMethod("onResume", new Class[0]).invoke(this, new Object[0]);
            } catch (Exception e) {
                MMLog.d(t, "No onResume()");
            }
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (getContext().getResources().getDisplayMetrics() != null && this.h) {
            v();
            if (!(getHeight() == 1 && getWidth() == 1)) {
                MMSDK.a(new Runnable() {
                    public void run() {
                        MMWebView.this.h = false;
                    }
                }, 800);
            }
        }
        super.onSizeChanged(i, i2, i3, i4);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            requestFocus();
        }
        if (this.j != null) {
            this.j.onTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() == 1) {
            MMLog.a(t, String.format("Ad clicked: action=%d x=%f y=%f", new Object[]{Integer.valueOf(motionEvent.getAction()), Float.valueOf(motionEvent.getX()), Float.valueOf(motionEvent.getY())}));
        }
        return super.onTouchEvent(motionEvent);
    }

    void p() {
        loadUrl("javascript:MMJS.sdk.setState('hidden')");
        this.g = "hidden";
    }

    void q() {
        loadUrl("javascript:MMJS.sdk.setViewable(false)");
        this.q = false;
    }

    void r() {
        loadUrl("javascript:MMJS.sdk.setViewable(true)");
        this.q = true;
    }

    void s() {
        loadUrl("javascript:MMJS.sdk.setState('expanded');");
        this.g = "expanded";
        this.r = false;
        this.s = false;
        this.h = true;
    }

    public void setBackgroundColor(int i) {
        this.m = i;
        if (i == 0) {
            b();
        }
        super.setBackgroundColor(i);
    }

    void t() {
        loadUrl("javascript:MMJS.sdk.ready();");
    }

    public String toString() {
        return "MMWebView originally from(" + this.e + ") MRaidState(" + this.g + ")." + super.toString();
    }

    void u() {
        loadUrl("javascript:MMJS.sdk.setAdProperties(" + new AdProperties(getContext()).getAdProperties(this) + ");");
    }

    void v() {
        loadUrl("javascript:MMJS.sdk.setAdSize(" + Utils.a(this) + ");");
    }

    void w() {
        ViewParent parent = getParent();
        if (parent != null && parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this);
        }
    }

    boolean x() {
        return "resized".equals(this.g);
    }

    HttpMMHeaders y() {
        return this.u;
    }

    String z() {
        return (this.u == null || TextUtils.isEmpty(this.u.g)) ? "DEFAULT_AD_ID" : this.u.g;
    }
}