package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdActivity;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import com.zeptolab.zbuild.ZBuildConfig;

public final class bo extends com.google.android.gms.internal.bw.a {
    private final Activity nd;
    private bq ne;
    private bs nf;
    private dd ng;
    private b nh;
    private bt ni;
    private FrameLayout nj;
    private CustomViewCallback nk;
    private boolean nl;
    private boolean nm;
    private RelativeLayout nn;

    private static final class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    private static final class b {
        public final int index;
        public final LayoutParams np;
        public final ViewGroup nq;

        public b(dd ddVar) {
            this.np = ddVar.getLayoutParams();
            ViewParent parent = ddVar.getParent();
            if (parent instanceof ViewGroup) {
                this.nq = (ViewGroup) parent;
                this.index = this.nq.indexOfChild(ddVar);
                this.nq.removeView(ddVar);
                ddVar.n(true);
            } else {
                throw new a("Could not get the parent of the WebView for an overlay.");
            }
        }
    }

    public bo(Activity activity) {
        this.nl = false;
        this.nm = false;
        this.nd = activity;
    }

    private static RelativeLayout.LayoutParams a(int i, int i2, int i3, int i4) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
        layoutParams.addRule(ZBuildConfig.$minsdk);
        return layoutParams;
    }

    public static void a(Context context, bq bqVar) {
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", bqVar.kN.pX);
        bq.a(intent, bqVar);
        intent.addFlags(AccessibilityEventCompat.TYPE_GESTURE_DETECTION_END);
        context.startActivity(intent);
    }

    private void as() {
        if (this.nd.isFinishing() && !this.nm) {
            this.nm = true;
            if (this.nd.isFinishing()) {
                if (this.ng != null) {
                    this.ng.aY();
                    this.nn.removeView(this.ng);
                    if (this.nh != null) {
                        this.ng.n(false);
                        this.nh.nq.addView(this.ng, this.nh.index, this.nh.np);
                    }
                }
                if (this.ne != null && this.ne.nt != null) {
                    this.ne.nt.S();
                }
            }
        }
    }

    private void h(boolean z) {
        this.nd.requestWindowFeature(1);
        Window window = this.nd.getWindow();
        window.setFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        setRequestedOrientation(this.ne.orientation);
        if (VERSION.SDK_INT >= 11) {
            da.s("Enabling hardware acceleration on the AdActivity window.");
            cw.a(window);
        }
        this.nn = new RelativeLayout(this.nd);
        this.nn.setBackgroundColor(-16777216);
        this.nd.setContentView(this.nn);
        boolean bi = this.ne.nu.bb().bi();
        if (z) {
            this.ng = dd.a(this.nd, this.ne.nu.Q(), true, bi, null, this.ne.kN);
            this.ng.bb().a(null, null, this.ne.nv, this.ne.nz, true);
            this.ng.bb().a(new com.google.android.gms.internal.de.a() {
                public void a(dd ddVar) {
                    ddVar.aZ();
                }
            });
            if (this.ne.mZ != null) {
                this.ng.loadUrl(this.ne.mZ);
            } else if (this.ne.ny != null) {
                this.ng.loadDataWithBaseURL(this.ne.nw, this.ne.ny, WebRequest.CONTENT_TYPE_HTML, HTMLEncoder.ENCODE_NAME_DEFAULT, null);
            } else {
                throw new a("No URL or HTML to display in ad overlay.");
            }
        } else {
            this.ng = this.ne.nu;
            this.ng.setContext(this.nd);
        }
        this.ng.a(this);
        this.nn.addView(this.ng, -1, -1);
        if (!z) {
            this.ng.aZ();
        }
        f(bi);
    }

    public void a(View view, CustomViewCallback customViewCallback) {
        this.nj = new FrameLayout(this.nd);
        this.nj.setBackgroundColor(-16777216);
        this.nj.addView(view, -1, -1);
        this.nd.setContentView(this.nj);
        this.nk = customViewCallback;
    }

    public bs ap() {
        return this.nf;
    }

    public void aq() {
        if (this.ne != null) {
            setRequestedOrientation(this.ne.orientation);
        }
        if (this.nj != null) {
            this.nd.setContentView(this.nn);
            this.nj.removeAllViews();
            this.nj = null;
        }
        if (this.nk != null) {
            this.nk.onCustomViewHidden();
            this.nk = null;
        }
    }

    public void ar() {
        this.nn.removeView(this.ni);
        f(true);
    }

    public void b(int i, int i2, int i3, int i4) {
        if (this.nf != null) {
            this.nf.setLayoutParams(a(i, i2, i3, i4));
        }
    }

    public void c(int i, int i2, int i3, int i4) {
        if (this.nf == null) {
            this.nf = new bs(this.nd, this.ng);
            this.nn.addView(this.nf, 0, a(i, i2, i3, i4));
            this.ng.bb().o(false);
        }
    }

    public void close() {
        this.nd.finish();
    }

    public void f(boolean z) {
        this.ni = new bt(this.nd, z ? ApiEventType.API_MRAID_CLOSE_VIDEO : ApiEventType.API_MRAID_PLAY_AUDIO);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
        layoutParams.addRule(z ? R.styleable.MapAttrs_uiZoomGestures : ZBuildConfig.$minsdk);
        this.ni.g(this.ne.nx);
        this.nn.addView(this.ni, layoutParams);
    }

    public void g(boolean z) {
        if (this.ni != null) {
            this.ni.g(z);
        }
    }

    public void onCreate(Bundle bundle) {
        boolean z = false;
        if (bundle != null) {
            z = bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        }
        this.nl = z;
        try {
            this.ne = bq.a(this.nd.getIntent());
            if (this.ne == null) {
                throw new a("Could not get info for ad overlay.");
            }
            if (bundle == null) {
                if (this.ne.nt != null) {
                    this.ne.nt.T();
                }
                if (!(this.ne.nA == 1 || this.ne.ns == null)) {
                    this.ne.ns.O();
                }
            }
            switch (this.ne.nA) {
                case GoogleScorer.CLIENT_GAMES:
                    h(false);
                case GoogleScorer.CLIENT_PLUS:
                    this.nh = new b(this.ne.nu);
                    h(false);
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    h(true);
                case GoogleScorer.CLIENT_APPSTATE:
                    if (this.nl) {
                        this.nd.finish();
                    } else if (!bl.a(this.nd, this.ne.nr, this.ne.nz)) {
                        this.nd.finish();
                    }
                default:
                    throw new a("Could not determine ad overlay type.");
            }
        } catch (a e) {
            da.w(e.getMessage());
            this.nd.finish();
        }
    }

    public void onDestroy() {
        if (this.nf != null) {
            this.nf.destroy();
        }
        if (this.ng != null) {
            this.nn.removeView(this.ng);
        }
        as();
    }

    public void onPause() {
        if (this.nf != null) {
            this.nf.pause();
        }
        aq();
        if (this.ng != null) {
            if (!this.nd.isFinishing() || this.nh == null) {
                cv.a(this.ng);
            }
        }
        as();
    }

    public void onRestart() {
    }

    public void onResume() {
        if (this.ne != null && this.ne.nA == 4) {
            if (this.nl) {
                this.nd.finish();
            } else {
                this.nl = true;
            }
        }
        if (this.ng != null) {
            cv.b(this.ng);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.nl);
    }

    public void onStart() {
    }

    public void onStop() {
        as();
    }

    public void setRequestedOrientation(int i) {
        this.nd.setRequestedOrientation(i);
    }
}