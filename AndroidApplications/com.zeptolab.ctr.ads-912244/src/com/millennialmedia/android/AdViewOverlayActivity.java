package com.millennialmedia.android;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;

class AdViewOverlayActivity extends MMBaseActivity {
    private static final String f = "AdViewOverlayActivity";
    boolean a;
    boolean b;
    private AdViewOverlayView d;
    private OverlaySettings e;

    AdViewOverlayActivity() {
    }

    private void a(String str) {
        if (DeviceInfo.ORIENTATION_LANDSCAPE.equalsIgnoreCase(str)) {
            setRequestedOrientation(0);
        } else if (DeviceInfo.ORIENTATION_PORTRAIT.equalsIgnoreCase(str)) {
            setRequestedOrientation(1);
        }
    }

    private void g() {
        if (this.c.getRequestedOrientation() == 0) {
            setRequestedOrientation(0);
        } else if (this.c.getRequestedOrientation() == 8) {
            setRequestedOrientation(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        } else if (this.c.getRequestedOrientation() == 9) {
            setRequestedOrientation(ZBuildConfig.$minsdk);
        } else {
            setRequestedOrientation(1);
        }
    }

    protected void a(Bundle bundle) {
        if (this.d != null) {
            bundle.putInt("adViewId", this.d.getId());
        }
        super.a(bundle);
    }

    void a(boolean z) {
        this.e.t = z;
        if (z) {
            c_();
        } else {
            g();
        }
    }

    void b() {
        this.e.o = DeviceInfo.ORIENTATION_PORTRAIT;
        this.e.t = false;
        setRequestedOrientation(1);
    }

    protected void b(Bundle bundle) {
        super.b(bundle);
    }

    void c() {
        this.e.o = DeviceInfo.ORIENTATION_LANDSCAPE;
        this.e.t = false;
        setRequestedOrientation(0);
    }

    void c_() {
        setRequestedOrientation(-1);
    }

    protected void d() {
        this.b = false;
        MMLog.b(f, "Overlay onResume");
        if (this.d != null) {
            if (this.a) {
                this.d.q();
            }
            this.d.addBlackView();
            if (!(this.d.i == null || this.d.i.n == null || this.d.i.n.c == null)) {
                this.d.i.n.c.onResumeWebView();
            }
        }
        super.d();
    }

    protected void e() {
        this.b = true;
        MMLog.b(f, "Overlay onPause");
        Audio a = Audio.a(this.c);
        if (a != null) {
            synchronized (this) {
                a.b();
            }
        }
        if (this.d != null) {
            this.d.p();
            if (!(this.d.i == null || this.d.i.n == null || this.d.i.n.c == null)) {
                this.d.i.n.c.onPauseWebView();
            }
        }
        setResult(0);
        super.e();
    }

    protected void f() {
        super.f();
    }

    public void finish() {
        if (this.d != null) {
            if (!this.d.d()) {
                this.d.k();
            }
            this.d.j();
        }
        this.d = null;
        super.finish();
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (this.d != null) {
            this.d.i();
        }
        super.onConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle) {
        setTheme(16973840);
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getWindow().clearFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        getWindow().addFlags(AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT);
        getWindow().addFlags(16777216);
        Intent intent = getIntent();
        this.e = (OverlaySettings) intent.getParcelableExtra("settings");
        if (this.e == null) {
            this.e = new OverlaySettings();
        }
        this.e.a();
        if (this.e.o != null) {
            a(this.e.o);
        }
        if (this.e.t) {
            c_();
        } else {
            g();
        }
        if (!(intent == null || intent.getData() == null)) {
            MMLog.a(f, String.format("Path: %s", new Object[]{uri.getLastPathSegment()}));
        }
        View relativeLayout = new RelativeLayout(this.c);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        relativeLayout.setId(885394873);
        relativeLayout.setLayoutParams(layoutParams);
        this.d = new AdViewOverlayView(this, this.e);
        relativeLayout.addView(this.d);
        setContentView(relativeLayout);
        if (getLastNonConfigurationInstance() == null) {
            if (this.e.b()) {
                if (!(this.d.i == null || this.d.i.n == null || this.d.i.n.c == null)) {
                    this.d.i.n.c.s();
                }
                if (this.e.d()) {
                    this.d.b(this.e.p);
                }
            } else if (!this.e.b()) {
                this.d.a(this.e.u, this.e.v);
            }
        }
        this.e.o = null;
    }

    protected void onDestroy() {
        super.onDestroy();
        MMLog.b(f, "Overlay onDestroy");
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getRepeatCount() != 0 || this.d == null) {
            return super.onKeyDown(i, keyEvent);
        }
        this.d.c();
        return true;
    }

    public Object onRetainNonConfigurationInstance() {
        return this.d != null ? this.d.a() : null;
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.a = z;
        if (!this.b && z) {
            this.d.q();
        }
    }
}