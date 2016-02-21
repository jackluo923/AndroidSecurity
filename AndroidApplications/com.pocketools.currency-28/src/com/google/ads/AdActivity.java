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
    public static final String BASE_URL_PARAM = "baseurl";
    public static final String HTML_PARAM = "html";
    public static final String INTENT_ACTION_PARAM = "i";
    public static final String ORIENTATION_PARAM = "o";
    public static final String TYPE_PARAM = "m";
    public static final String URL_PARAM = "u";
    private static final a a;
    private static final Object b;
    private static AdActivity c;
    private static d d;
    private static AdActivity e;
    private static AdActivity f;
    private static final StaticMethodWrapper g;
    private AdWebView h;
    private ViewGroup i;
    private boolean j;
    private long k;
    private RelativeLayout l;
    private AdActivity m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private AdVideoView r;

    public static class StaticMethodWrapper {
        public boolean isShowing() {
            boolean z;
            synchronized (b) {
                z = e != null;
            }
            return z;
        }

        public void launchAdActivity(d adManager, e adOpener) {
            synchronized (b) {
                if (d == null) {
                    d = adManager;
                } else if (d != adManager) {
                    b.b("Tried to launch a new AdActivity with a different AdManager.");
                    return;
                }
                Activity activity = (Activity) adManager.g().c.a();
                if (activity == null) {
                    b.e("activity was null while launching an AdActivity.");
                } else {
                    Intent intent = new Intent(activity.getApplicationContext(), AdActivity.class);
                    intent.putExtra("com.google.ads.AdOpener", adOpener.a());
                    try {
                        b.a("Launching AdActivity.");
                        activity.startActivity(intent);
                    } catch (ActivityNotFoundException e) {
                        b.b("Activity not found.", e);
                    }
                }
            }
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
        this.i = null;
        this.m = null;
    }

    private LayoutParams a(int i, int i2, int i3, int i4) {
        LayoutParams layoutParams = new LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        return layoutParams;
    }

    private void a(String str) {
        b.b(str);
        finish();
    }

    private void a(String str, Throwable th) {
        b.b(str, th);
        finish();
    }

    private void d() {
        if (!this.j) {
            if (this.h != null) {
                a.b(this.h);
                this.h.setAdActivity(null);
                this.h.setIsExpandedMraid(false);
                if (!(this.o || this.l == null || this.i == null)) {
                    if (this.p && !this.q) {
                        b.a("Disabling hardware acceleration on collapsing MRAID WebView.");
                        this.h.b();
                    } else if (!this.p && this.q) {
                        b.a("Re-enabling hardware acceleration on collapsing MRAID WebView.");
                        this.h.c();
                    }
                    this.l.removeView(this.h);
                    this.i.addView(this.h);
                }
            }
            if (this.r != null) {
                this.r.e();
                this.r = null;
            }
            if (this == c) {
                c = null;
            }
            f = this.m;
            synchronized (b) {
                if (!(d == null || !this.o || this.h == null)) {
                    if (this.h == d.j()) {
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
            this.j = true;
            b.a("AdActivity is closing.");
        }
    }

    public static boolean isShowing() {
        return g.isShowing();
    }

    public static void launchAdActivity(d adManager, e adOpener) {
        g.launchAdActivity(adManager, adOpener);
    }

    protected View a(int i) {
        View imageButton = new ImageButton(getApplicationContext());
        imageButton.setImageResource(17301527);
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        imageButton.setPadding(0, 0, 0, 0);
        int applyDimension = (int) TypedValue.applyDimension(1, (float) i, getResources().getDisplayMetrics());
        View frameLayout = new FrameLayout(getApplicationContext());
        frameLayout.addView(imageButton, applyDimension, applyDimension);
        return frameLayout;
    }

    protected AdVideoView a(Activity activity) {
        return new AdVideoView(activity, this.h);
    }

    protected void a(WebView webView, boolean z, int i, boolean z2) {
        requestWindowFeature(1);
        Window window = getWindow();
        window.setFlags(1024, 1024);
        if (AdUtil.a >= 11) {
            if (this.p) {
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
            this.i = (ViewGroup) parent;
            this.i.removeView(webView);
            if (webView.d() != null) {
                a("Interstitial created with an AdWebView that is already in use by another AdActivity.");
            } else {
                setRequestedOrientation(i);
                webView.setAdActivity(this);
                View a = a(z2 ? AdSize.PORTRAIT_AD_HEIGHT : AdSize.LANDSCAPE_AD_HEIGHT);
                this.l.addView(webView, -1, -1);
                ViewGroup.LayoutParams layoutParams = new LayoutParams(-2, -2);
                if (z2) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                } else {
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                }
                this.l.addView(a, layoutParams);
                this.l.setKeepScreenOn(true);
                setContentView(this.l);
                this.l.getRootView().setBackgroundColor(-16777216);
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
        this.k = SystemClock.elapsedRealtime();
        this.n = true;
        synchronized (b) {
            if (c == null) {
                c = this;
                dVar.u();
            }
        }
    }

    protected void a(HashMap<String, String> hashMap, d dVar) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.putExtras(getIntent().getExtras());
        intent.putExtra("com.google.circles.platform.intent.extra.ENTITY", (String) hashMap.get(URL_PARAM));
        intent.putExtra("com.google.circles.platform.intent.extra.ENTITY_TYPE", ag.b.a.c);
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

    protected void b(HashMap<String, String> hashMap, d dVar) {
        if (hashMap == null) {
            a("Could not get the paramMap in launchIntent()");
        } else {
            String str = (String) hashMap.get(URL_PARAM);
            if (str == null) {
                a("Could not get the URL parameter in launchIntent().");
            } else {
                Intent intent;
                String str2 = (String) hashMap.get(INTENT_ACTION_PARAM);
                String str3 = (String) hashMap.get(TYPE_PARAM);
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

    public AdVideoView getAdVideoView() {
        return this.r;
    }

    public AdWebView getOpeningAdWebView() {
        if (this.m != null) {
            return this.m.h;
        }
        synchronized (b) {
            if (d == null) {
                b.e("currentAdManager was null while trying to get the opening AdWebView.");
                return null;
            } else {
                AdWebView j = d.j();
                if (j != this.h) {
                    return j;
                } else {
                    return null;
                }
            }
        }
    }

    public void moveAdVideoView(int x, int y, int width, int height) {
        if (this.r != null) {
            this.r.setLayoutParams(a(x, y, width, height));
            this.r.requestLayout();
        }
    }

    public void newAdVideoView(int x, int y, int width, int height) {
        if (this.r == null) {
            this.r = a(this);
            this.l.addView(this.r, 0, a(x, y, width, height));
            synchronized (b) {
                if (d == null) {
                    b.e("currentAdManager was null while trying to get the opening AdWebView.");
                } else {
                    d.k().b(false);
                }
            }
        }
    }

    public void onActivityResult(int reqCode, int resCode, Intent data) {
        super.onActivityResult(reqCode, resCode, data);
        if (!(getOpeningAdWebView() == null || data == null || data.getExtras() == null || data.getExtras().getString("com.google.circles.platform.result.extra.CONFIRMATION") == null || data.getExtras().getString("com.google.circles.platform.result.extra.ACTION") == null)) {
            String string = data.getExtras().getString("com.google.circles.platform.result.extra.CONFIRMATION");
            String string2 = data.getExtras().getString("com.google.circles.platform.result.extra.ACTION");
            if (string.equals("yes")) {
                if (string2.equals("insert")) {
                    ae.a(getOpeningAdWebView(), true);
                } else if (string2.equals("delete")) {
                    ae.a(getOpeningAdWebView(), false);
                }
            }
        }
        finish();
    }

    public void onClick(View v) {
        finish();
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.j = false;
        synchronized (b) {
            if (d != null) {
                d dVar = d;
                if (e == null) {
                    e = this;
                    dVar.t();
                }
                if (this.m == null && f != null) {
                    this.m = f;
                }
                f = this;
                if ((dVar.g().a() && e == this) || (dVar.g().b() && this.m == e)) {
                    dVar.v();
                }
                boolean p = dVar.p();
                l.a aVar = (l.a) ((l) dVar.g().a.a()).a.a();
                this.q = AdUtil.a >= ((Integer) aVar.a.a()).intValue();
                this.p = AdUtil.a >= ((Integer) aVar.b.a()).intValue();
                this.l = null;
                this.n = false;
                this.o = true;
                this.r = null;
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
                        this.l = new RelativeLayout(getApplicationContext());
                        if (b.equals("webapp")) {
                            int b2;
                            this.h = new AdWebView(dVar.g(), null);
                            WebViewClient a = i.a(dVar, a.c, true, !p);
                            a.d(true);
                            if (p) {
                                a.a(true);
                            }
                            this.h.setWebViewClient(a);
                            b = (String) c.get(URL_PARAM);
                            String str = (String) c.get(BASE_URL_PARAM);
                            String str2 = (String) c.get(HTML_PARAM);
                            if (b != null) {
                                this.h.loadUrl(b);
                            } else if (str2 != null) {
                                this.h.loadDataWithBaseURL(str, str2, "text/html", "utf-8", null);
                            } else {
                                a("Could not get the URL or HTML parameter to show a web app.");
                                return;
                            }
                            b = (String) c.get(ORIENTATION_PARAM);
                            if ("p".equals(b)) {
                                b2 = AdUtil.b();
                            } else if ("l".equals(b)) {
                                b2 = AdUtil.a();
                            } else if (this == e) {
                                b2 = dVar.m();
                            } else {
                                b2 = -1;
                            }
                            a(this.h, false, b2, p);
                        } else if (b.equals("interstitial") || b.equals("expand")) {
                            this.h = dVar.j();
                            int m = dVar.m();
                            if (b.equals("expand")) {
                                this.h.setIsExpandedMraid(true);
                                this.o = false;
                                if (this.p && !this.q) {
                                    b.a("Re-enabling hardware acceleration on expanding MRAID WebView.");
                                    this.h.c();
                                }
                            }
                            a(this.h, true, m, p);
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
        if (this.l != null) {
            this.l.removeAllViews();
        }
        if (isFinishing()) {
            d();
            if (this.o && this.h != null) {
                this.h.stopLoading();
                this.h.destroy();
                this.h = null;
            }
        }
        super.onDestroy();
    }

    public void onPause() {
        if (isFinishing()) {
            d();
        }
        super.onPause();
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        if (this.n && hasFocus && SystemClock.elapsedRealtime() - this.k > 250) {
            b.d("Launcher AdActivity got focus and is closing.");
            finish();
        }
        super.onWindowFocusChanged(hasFocus);
    }
}