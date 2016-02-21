package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.ref.WeakReference;

abstract class MMLayout extends RelativeLayout implements TransparentFix, MMAd {
    public static final String KEY_HEIGHT = "height";
    public static final String KEY_WIDTH = "width";
    private static final String a = "MMLayout";
    private static boolean c = false;
    private static final int d = 50;
    static final String m = "top-left";
    static final String n = "top-right";
    static final String o = "top-center";
    static final String p = "center";
    static final String q = "bottom-left";
    static final String r = "bottom-right";
    static final String s = "bottom-center";
    private GestureDetector b;
    MMAdImpl i;
    String j;
    boolean k;
    View l;
    RelativeLayout t;
    InlineVideoView u;
    View v;

    class MMLayoutMMAdImpl extends MMAdImpl {
        public MMLayoutMMAdImpl(Context context) {
            super(context);
        }

        public void addView(MMWebView mMWebView, LayoutParams layoutParams) {
            MMLog.d(a, "MMLayout adding view (" + mMWebView + ") to " + this);
            MMLayout.this.addView(mMWebView, layoutParams);
        }

        /* synthetic */ MMAd d() {
            return s();
        }

        int e() {
            return MMLayout.this.getId();
        }

        public void removeView(MMWebView mMWebView) {
            MMLayout.this.removeView(mMWebView);
        }

        MMLayout s() {
            return MMLayout.this;
        }

        public void setClickable(boolean z) {
            MMLayout.this.setClickable(z);
        }
    }

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ String a;

        AnonymousClass_1(String str) {
            this.a = str;
        }

        public void run() {
            MMLayout.this.a(this.a);
        }
    }

    class AnonymousClass_3 implements Runnable {
        final /* synthetic */ InlineParams a;

        AnonymousClass_3(InlineParams inlineParams) {
            this.a = inlineParams;
        }

        public void run() {
            if (MMLayout.this.u != null) {
                MMLayout.this.u.c(this.a);
            }
        }
    }

    private static class LayoutGestureListener extends SimpleOnGestureListener {
        WeakReference a;

        public LayoutGestureListener(MMLayout mMLayout) {
            this.a = new WeakReference(mMLayout);
        }

        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (motionEvent == null || motionEvent2 == null || Math.abs((int) (motionEvent2.getX() - motionEvent.getX())) <= 200 || Math.abs(f) <= Math.abs(f2)) {
                return false;
            }
            if (f <= 0.0f) {
                MMLayout mMLayout = (MMLayout) this.a.get();
                if (mMLayout != null) {
                    MMSDK.a(mMLayout.i);
                }
            } else if (MMSDK.a == 0) {
                MMLog.c(a, "Enabling debug and verbose logging.");
                MMSDK.a = 3;
            } else {
                MMLog.c(a, "Disabling debug and verbose logging.");
                MMSDK.a = 0;
            }
            return true;
        }
    }

    protected MMLayout(Context context) {
        super(context);
        a(context);
    }

    @Deprecated
    protected MMLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a() {
        if (this.v != null) {
            ViewParent parent = this.v.getParent();
            if (parent != null && parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.v);
                this.v = null;
            }
        }
        this.v = new View(getContext());
        this.v.setBackgroundColor(-16777216);
        this.v.setLayoutParams(new LayoutParams(-1, -1));
        if (this.t != null && this.v.getParent() == null) {
            this.t.addView(this.v);
        }
    }

    private void a(String str) {
        if (this.l == null) {
            this.l = new View(getContext());
            float f = getContext().getResources().getDisplayMetrics().density;
            ViewGroup.LayoutParams layoutParams = new LayoutParams((int) (50.0f * f), (int) (f * 50.0f));
            if (n.equals(str)) {
                layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
            } else if (o.equals(str)) {
                layoutParams.addRule(MMException.REQUEST_NOT_FILLED);
            } else if (q.equals(str)) {
                layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
            } else if (s.equals(str)) {
                layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
                layoutParams.addRule(MMException.REQUEST_NOT_FILLED);
            } else if (r.equals(str)) {
                layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
                layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
            } else if (p.equals(str)) {
                layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
            }
            this.l.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    MMLayout.this.b();
                }
            });
            addView(this.l, layoutParams);
        }
    }

    protected final void a(Context context) {
        try {
            MMLog.c(a, "Initializing MMLayout.");
            MMSDK.f(context);
            MMSDK.g(context);
        } catch (Exception e) {
            Throwable th = e;
            MMLog.e(a, "There was an exception initializing the MMAdView. ", th);
            th.printStackTrace();
        }
        this.b = new GestureDetector(context.getApplicationContext(), new LayoutGestureListener(this));
        if (!c) {
            MMLog.b(a, "********** Millennial Device Id *****************");
            MMLog.b(a, MMSDK.d(context));
            MMLog.b(a, "Use the above identifier to register this device and receive test ads. Test devices can be registered and administered through your account at http://mmedia.com.");
            MMLog.b(a, "*************************************************");
            AdCache.b(context);
            c = true;
        }
    }

    void a(String str, String str2) {
        if (!MMSDK.a(getContext())) {
            MMLog.e(a, "No network available, can't load overlay.");
        } else if (this.i.n != null) {
            this.i.n.b(str, str2);
        }
    }

    boolean a(InlineParams inlineParams) {
        MMSDK.a(new AnonymousClass_3(inlineParams));
        return false;
    }

    public void addBlackView() {
        a();
        if (this.v != null) {
            this.v.setVisibility(0);
        }
    }

    void b() {
    }

    void b(InlineParams inlineParams) {
        if (this.u != null) {
            ViewGroup viewGroup = (ViewGroup) this.u.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.u);
            }
            if (this.u.isPlaying()) {
                this.u.stopPlayback();
            }
            this.u = null;
        }
        this.u = new InlineVideoView(this);
        this.u.b(inlineParams);
        ViewGroup.LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop, -1);
        this.u.setLayoutParams(layoutParams);
        e();
    }

    void c(String str) {
        if (!MMSDK.a(getContext())) {
            MMLog.e(a, "No network available, can't load overlay.");
        } else if (this.i.n != null) {
            this.i.n.a(str);
        }
    }

    void e() {
        if (!(this.t == null || this.t.getParent() == null)) {
            ((ViewGroup) this.t.getParent()).removeView(this.t);
        }
        this.t = new RelativeLayout(getContext());
        this.t.setId(892934232);
        if (this.u.getParent() != null) {
            ((ViewGroup) this.u.getParent()).removeView(this.u);
        }
        this.t.addView(this.u);
        if (this.v != null) {
            if (this.v.getParent() == null) {
                this.t.addView(this.v);
            }
            this.v.bringToFront();
        }
        addView(this.t, this.u.getCustomLayoutParams());
    }

    protected void finalize() {
        if (getId() == -1) {
            this.i.l = true;
            MMLog.b(a, "finalize() for " + this.i);
            MMAdImplController.e(this.i);
        }
    }

    void g() {
    }

    public String getApid() {
        return this.i.getApid();
    }

    public boolean getIgnoresDensityScaling() {
        return this.i.getIgnoresDensityScaling();
    }

    public RequestListener getListener() {
        return this.i.getListener();
    }

    public MMRequest getMMRequest() {
        return this.i.getMMRequest();
    }

    void h() {
    }

    void l() {
        if (this.l != null && this.l.getParent() != null && this.l.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.l.getParent()).removeView(this.l);
            this.l = null;
        }
    }

    void m() {
        if (this.u != null) {
            this.u.f();
            this.u = null;
        }
    }

    void n() {
        if (this.u != null) {
            this.u.g();
        }
    }

    void o() {
        if (this.u != null) {
            this.u.h();
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            MMLog.b(a, "onAttachedToWindow for " + this.i);
            if (getId() == -1) {
                MMLog.d(a, "MMAd missing id from getId(). Performance will be affected for configuration changes.");
            }
            if (!this.k) {
                MMAdImplController.b(this.i);
            }
            if (this.t != null) {
                this.t.bringToFront();
            }
            if (this.i != null && this.i.n != null && this.i.n.c != null) {
                this.i.n.c.D();
            }
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        MMLog.b(a, "onDetachedFromWindow for" + this.i);
        Context context = getContext();
        if (this.i.h == "i" && context != null && context instanceof Activity && ((Activity) context).isFinishing()) {
            this.i.l = true;
        }
        if (!this.k) {
            MMAdImplController.e(this.i);
        }
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        Bundle bundle = (Bundle) parcelable;
        long j = this.i.k;
        this.i.k = bundle.getLong("MMAdImplId");
        this.i.q = bundle.getLong("MMAdImplLinkedId");
        MMLog.b(a, "onRestoreInstanceState replacing adImpl-" + j + " with " + this.i + " id=" + getId());
        String string = bundle.getString("inlineVideoViewGson");
        if (string != null) {
            b(InlineParams.a(string));
        }
        super.onRestoreInstanceState(bundle.getParcelable("super"));
    }

    protected Parcelable onSaveInstanceState() {
        super.onSaveInstanceState();
        MMLog.b(a, "onSaveInstanceState saving - " + this.i + " id=" + getId());
        Parcelable bundle = new Bundle();
        bundle.putParcelable("super", super.onSaveInstanceState());
        bundle.putLong("MMAdImplId", this.i.k);
        bundle.putLong("MMAdImplLinkedId", this.i.q);
        if (this.u != null) {
            if (this.u.isPlaying()) {
                this.u.e.h = this.u.getCurrentPosition();
            }
            bundle.putString("inlineVideoViewGson", this.u.a());
        }
        return bundle;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.b.onTouchEvent(motionEvent) || !isClickable() || super.onTouchEvent(motionEvent);
    }

    @Deprecated
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            if (this.u != null) {
                this.u.j();
            }
        } else if (this.u != null) {
            this.u.i();
        }
        MMLog.b(a, String.format("Window Focus Changed. For %s, Window in focus?: %b Controllers: %s", new Object[]{this.i, Boolean.valueOf(z), MMAdImplController.d()}));
        if (!(this.i == null || this.i.n == null || this.i.n.c == null)) {
            if (z) {
                this.i.n.c.onResumeWebView();
                this.i.n.c.r();
            } else {
                BridgeMMSpeechkit.a();
                this.i.n.c.q();
                this.i.n.c.onPauseWebView();
            }
        }
        if (!z && getContext() instanceof Activity) {
            Activity activity = (Activity) getContext();
            if (activity == null || (activity.isFinishing() && this.i != null)) {
                this.i.l = true;
                if (!(this.i.n == null || this.i.n.c == null)) {
                    this.i.n.c.p();
                    MMAdImplController.e(this.i);
                }
            }
        }
        Audio a = Audio.a(getContext());
        if (a != null) {
            synchronized (this) {
                a.b();
            }
        }
    }

    void p() {
        if (this.u != null) {
            this.u.i();
        }
    }

    void q() {
        if (this.u != null) {
            this.u.j();
        }
    }

    boolean r() {
        return this.u != null && this.u.k();
    }

    public void removeBlackView() {
        if (this.v != null) {
            this.v.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        }
    }

    public void setApid(String str) {
        this.i.setApid(str);
    }

    void setCloseArea(String str) {
        post(new AnonymousClass_1(str));
    }

    public void setIgnoresDensityScaling(boolean z) {
        this.i.setIgnoresDensityScaling(z);
    }

    public void setListener(RequestListener requestListener) {
        this.i.setListener(requestListener);
    }

    public void setMMRequest(MMRequest mMRequest) {
        this.i.setMMRequest(mMRequest);
    }

    void setMediaPlaybackRequiresUserGesture(boolean z) {
        try {
            WebView.class.getMethod("setMediaPlaybackRequiresUserGesture", new Class[]{Boolean.TYPE}).invoke(this, new Object[]{Boolean.valueOf(z)});
        } catch (Exception e) {
        }
    }

    void setVideoSource(String str) {
        if (this.u != null) {
            this.u.a(str);
        }
    }
}