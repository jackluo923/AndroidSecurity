package com.google.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.ads.internal.AdVideoView;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.a;
import com.google.ads.internal.d;
import com.google.ads.internal.e;
import com.google.ads.internal.i;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.google.ads.util.g;
import java.util.HashMap;

public class AdActivity extends Activity implements OnClickListener {
    private static final a a;
    private static final Object b;
    private static AdActivity c;
    private static d d;
    private static AdActivity e;
    private static AdActivity f;
    private static final StaticMethodWrapper g;
    private AdWebView h;
    private FrameLayout i;
    private int j;
    private ViewGroup k;
    private boolean l;
    private long m;
    private RelativeLayout n;
    private AdActivity o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private AdVideoView t;

    public class StaticMethodWrapper {
        public void a(d dVar, e eVar) {
            synchronized (b) {
                if (d == null) {
                    d = dVar;
                } else if (d != dVar) {
                    b.b("Tried to launch a new AdActivity with a different AdManager.");
                    return;
                }
                Activity activity = (Activity) dVar.h().e.a();
                if (activity == null) {
                    b.e("activity was null while launching an AdActivity.");
                } else {
                    Intent intent = new Intent(activity.getApplicationContext(), AdActivity.class);
                    intent.putExtra("com.google.ads.AdOpener", eVar.a());
                    try {
                        b.a("Launching AdActivity.");
                        activity.startActivity(intent);
                    } catch (ActivityNotFoundException e) {
                        b.b("Activity not found.", e);
                    }
                }
            }
        }

        public boolean a() {
            boolean z;
            synchronized (b) {
                z = e != null;
            }
            return z;
        }
    }

    static {
        a = (a) a.a.b();
        b = new Object();
        c = null;
        d = null;
        e = null;
        f = null;
        g = new StaticMethodWrapper();
    }

    public AdActivity() {
        this.k = null;
        this.o = null;
    }

    public static void a(d dVar, e eVar) {
        g.a(dVar, eVar);
    }

    private void a(String str) {
        b.b(str);
        finish();
    }

    private void a(String str, Throwable th) {
        b.b(str, th);
        finish();
    }

    private LayoutParams c(int i, int i2, int i3, int i4) {
        LayoutParams layoutParams = new LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        return layoutParams;
    }

    public static boolean c() {
        return g.a();
    }

    private void g() {
        if (!this.l) {
            if (this.h != null) {
                a.b(this.h);
                this.h.setAdActivity(null);
                this.h.setIsExpandedMraid(false);
                if (!(this.q || this.n == null || this.k == null)) {
                    if (this.r && !this.s) {
                        b.a("Disabling hardware acceleration on collapsing MRAID WebView.");
                        this.h.b();
                    } else if (!this.r && this.s) {
                        b.a("Re-enabling hardware acceleration on collapsing MRAID WebView.");
                        this.h.c();
                    }
                    this.n.removeView(this.h);
                    this.k.addView(this.h);
                }
            }
            if (this.t != null) {
                this.t.e();
                this.t = null;
            }
            if (this == c) {
                c = null;
            }
            f = this.o;
            synchronized (b) {
                if (!(d == null || !this.q || this.h == null)) {
                    if (this.h == d.k()) {
                        d.a();
                    }
                    this.h.stopLoading();
                }
                if (this == e) {
                    e = null;
                    if (d != null) {
                        d.s();
                        d = null;
                    } else {
                        b.e("currentAdManager is null while trying to destroy AdActivity.");
                    }
                }
            }
            this.l = true;
            b.a("AdActivity is closing.");
        }
    }

    protected View a(int i, boolean z) {
        this.j = (int) TypedValue.applyDimension(1, (float) i, getResources().getDisplayMetrics());
        this.i = new FrameLayout(getApplicationContext());
        this.i.setMinimumWidth(this.j);
        this.i.setMinimumHeight(this.j);
        this.i.setOnClickListener(this);
        a(z);
        return this.i;
    }

    public AdVideoView a() {
        return this.t;
    }

    protected AdVideoView a(Activity activity) {
        return new AdVideoView(activity, this.h);
    }

    public void a(int i, int i2, int i3, int i4) {
        if (this.t != null) {
            this.t.setLayoutParams(c(i, i2, i3, i4));
            this.t.requestLayout();
        }
    }

    protected void a(WebView webView, boolean z, int i, boolean z2, boolean z3) {
        requestWindowFeature(1);
        Window window = getWindow();
        window.setFlags(1024, 1024);
        if (AdUtil.a >= 11) {
            if (this.r) {
                b.a("Enabling hardware acceleration on the AdActivity window.");
                g.a(window);
            } else {
                b.a("Disabling hardware acceleration on the AdActivity WebView.");
                webView.b();
            }
        }
        ViewParent parent = webView.getParent();
        if (parent == null || !z2) {
            a("Interstitial created with an AdWebView that has a parent.");
        } else if (parent instanceof ViewGroup) {
            this.k = (ViewGroup) parent;
            this.k.removeView(webView);
            if (webView.d() != null) {
                a("Interstitial created with an AdWebView that is already in use by another AdActivity.");
            } else {
                setRequestedOrientation(i);
                webView.setAdActivity(this);
                View a = a(z2 ? 50 : 32, z3);
                this.n.addView(webView, -1, -1);
                ViewGroup.LayoutParams layoutParams = new LayoutParams(-2, -2);
                if (z2) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                } else {
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                }
                this.n.addView(a, layoutParams);
                this.n.setKeepScreenOn(true);
                setContentView(this.n);
                this.n.getRootView().setBackgroundColor(-16777216);
                if (z) {
                    a.a(webView);
                }
            }
        } else {
            a("MRAID banner was not a child of a ViewGroup.");
        }
    }

    protected void a(d dVar) {
        this.h = null;
        this.m = SystemClock.elapsedRealtime();
        this.p = true;
        synchronized (b) {
            if (c == null) {
                c = this;
                dVar.u();
            }
        }
    }

    protected void a(HashMap hashMap, d dVar) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.putExtras(getIntent().getExtras());
        intent.putExtra("com.google.circles.platform.intent.extra.ENTITY", (String) hashMap.get("u"));
        intent.putExtra("com.google.circles.platform.intent.extra.ENTITY_TYPE", ai.b.a.c);
        intent.putExtra("com.google.circles.platform.intent.extra.ACTION", (String) hashMap.get("a"));
        a(dVar);
        try {
            b.a("Launching Google+ intent from AdActivity.");
            startActivityForResult(intent, 0);
        } catch (ActivityNotFoundException e) {
            Throwable th = e;
            a(th.getMessage(), th);
        }
    }

    public void a(boolean z) {
        if (this.i != null) {
            this.i.removeAllViews();
            if (!z) {
                View imageButton = new ImageButton(this);
                imageButton.setImageResource(17301527);
                imageButton.setBackgroundColor(0);
                imageButton.setOnClickListener(this);
                imageButton.setPadding(0, 0, 0, 0);
                this.i.addView(imageButton, new FrameLayout.LayoutParams(this.j, this.j, 17));
            }
        }
    }

    public AdWebView b() {
        if (this.o != null) {
            return this.o.h;
        }
        synchronized (b) {
            if (d == null) {
                b.e("currentAdManager was null while trying to get the opening AdWebView.");
                return null;
            } else {
                AdWebView k = d.k();
                if (k != this.h) {
                    return k;
                } else {
                    return null;
                }
            }
        }
    }

    public void b(int i, int i2, int i3, int i4) {
        if (this.t == null) {
            this.t = a(this);
            this.n.addView(this.t, 0, c(i, i2, i3, i4));
            synchronized (b) {
                if (d == null) {
                    b.e("currentAdManager was null while trying to get the opening AdWebView.");
                } else {
                    d.l().b(false);
                }
            }
        }
    }

    protected void b(HashMap hashMap, d dVar) {
        if (hashMap == null) {
            a("Could not get the paramMap in launchIntent()");
        } else {
            String str = (String) hashMap.get("u");
            if (str == null) {
                a("Could not get the URL parameter in launchIntent().");
            } else {
                Intent intent;
                String str2 = (String) hashMap.get("i");
                String str3 = (String) hashMap.get("m");
                Uri parse = Uri.parse(str);
                intent = str2 == null ? new Intent("android.intent.action.VIEW", parse) : new Intent(str2, parse);
                if (str3 != null) {
                    intent.setDataAndType(parse, str3);
                }
                a(dVar);
                try {
                    b.a("Launching an intent from AdActivity: " + intent.getAction() + " - " + parse);
                    startActivity(intent);
                } catch (ActivityNotFoundException e) {
                    Throwable th = e;
                    a(th.getMessage(), th);
                }
            }
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (!(b() == null || intent == null || intent.getExtras() == null || intent.getExtras().getString("com.google.circles.platform.result.extra.CONFIRMATION") == null || intent.getExtras().getString("com.google.circles.platform.result.extra.ACTION") == null)) {
            String string = intent.getExtras().getString("com.google.circles.platform.result.extra.CONFIRMATION");
            String string2 = intent.getExtras().getString("com.google.circles.platform.result.extra.ACTION");
            if (string.equals("yes")) {
                if (string2.equals("insert")) {
                    ag.a(b(), true);
                } else if (string2.equals("delete")) {
                    ag.a(b(), false);
                }
            }
        }
        finish();
    }

    public void onClick(View view) {
        finish();
    }

    public void onCreate(Bundle bundle) {
        boolean z = false;
        super.onCreate(bundle);
        this.l = false;
        synchronized (b) {
            if (d != null) {
                d dVar = d;
                if (e == null) {
                    e = this;
                    dVar.t();
                }
                if (this.o == null && f != null) {
                    this.o = f;
                }
                f = this;
                if ((dVar.h().a() && e == this) || (dVar.h().b() && this.o == e)) {
                    dVar.v();
                }
                boolean q = dVar.q();
                l.a aVar = (l.a) ((l) dVar.h().a.a()).a.a();
                this.s = AdUtil.a >= ((Integer) aVar.a.a()).intValue();
                this.r = AdUtil.a >= ((Integer) aVar.b.a()).intValue();
                this.n = null;
                this.p = false;
                this.q = true;
                this.t = null;
                Bundle bundleExtra = getIntent().getBundleExtra("com.google.ads.AdOpener");
                if (bundleExtra == null) {
                    a("Could not get the Bundle used to create AdActivity.");
                } else {
                    e eVar = new e(bundleExtra);
                    String b = eVar.b();
                    HashMap c = eVar.c();
                    if (b.equals("plusone")) {
                        a(c, dVar);
                    } else if (b.equals("intent")) {
                        b(c, dVar);
                    } else {
                        this.n = new RelativeLayout(getApplicationContext());
                        int b2;
                        boolean z2;
                        if (b.equals("webapp")) {
                            this.h = new AdWebView(dVar.h(), null);
                            WebViewClient a = i.a(dVar, a.c, true, !q);
                            a.d(true);
                            if (q) {
                                a.a(true);
                            }
                            this.h.setWebViewClient(a);
                            b = (String) c.get("u");
                            String str = (String) c.get("baseurl");
                            String str2 = (String) c.get("html");
                            if (b != null) {
                                this.h.loadUrl(b);
                            } else if (str2 != null) {
                                this.h.loadDataWithBaseURL(str, str2, "text/html", "utf-8", null);
                            } else {
                                a("Could not get the URL or HTML parameter to show a web app.");
                                return;
                            }
                            b = (String) c.get("o");
                            if ("p".equals(b)) {
                                b2 = AdUtil.b();
                            } else if ("l".equals(b)) {
                                b2 = AdUtil.a();
                            } else if (this == e) {
                                b2 = dVar.n();
                            } else {
                                b2 = -1;
                            }
                            AdWebView adWebView = this.h;
                            z2 = c != null && "1".equals(c.get("custom_close"));
                            a(adWebView, false, b2, q, z2);
                        } else if (b.equals("interstitial") || b.equals("expand")) {
                            this.h = dVar.k();
                            b2 = dVar.n();
                            if (b.equals("expand")) {
                                this.h.setIsExpandedMraid(true);
                                this.q = false;
                                if (c != null && "1".equals(c.get("custom_close"))) {
                                    z = true;
                                }
                                if (!this.r || this.s) {
                                    z2 = z;
                                } else {
                                    b.a("Re-enabling hardware acceleration on expanding MRAID WebView.");
                                    this.h.c();
                                    z2 = z;
                                }
                            } else {
                                z2 = this.h.e();
                            }
                            a(this.h, true, b2, q, z2);
                        } else {
                            a("Unknown AdOpener, <action: " + b + ">");
                        }
                    }
                }
            } else {
                a("Could not get currentAdManager.");
            }
        }
    }

    public void onDestroy() {
        if (this.n != null) {
            this.n.removeAllViews();
        }
        if (isFinishing()) {
            g();
            if (this.q && this.h != null) {
                this.h.stopLoading();
                this.h.destroy();
                this.h = null;
            }
        }
        super.onDestroy();
    }

    public void onPause() {
        if (isFinishing()) {
            g();
        }
        super.onPause();
    }

    public void onWindowFocusChanged(boolean z) {
        if (this.p && z && SystemClock.elapsedRealtime() - this.m > 250) {
            b.d("Launcher AdActivity got focus and is closing.");
            finish();
        }
        super.onWindowFocusChanged(z);
    }
}