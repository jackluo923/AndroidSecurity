package com.google.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.google.ads.b.ad;
import com.google.ads.b.c;
import com.google.ads.b.e;
import com.google.ads.b.h;
import com.google.ads.b.w;
import com.google.ads.b.x;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AdActivity extends Activity implements OnClickListener {
    private static final h a;
    private static final Object b;
    private static AdActivity c;
    private static w d;
    private static AdActivity e;
    private static AdActivity f;
    private static final b g;
    private e h;
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
    private c t;

    static {
        a = (h) h.a.a();
        b = new Object();
        c = null;
        d = null;
        e = null;
        f = null;
        g = new b();
    }

    public AdActivity() {
        this.k = null;
        this.o = null;
    }

    private void a(WebView webView, boolean z, int i, boolean z2, boolean z3) {
        requestWindowFeature(1);
        Window window = getWindow();
        window.setFlags(1024, 1024);
        if (AdUtil.a >= 11) {
            if (this.r) {
                g.a("Enabling hardware acceleration on the AdActivity window.");
                window.setFlags(16777216, 16777216);
            } else {
                g.a("Disabling hardware acceleration on the AdActivity WebView.");
                webView.g();
            }
        }
        ViewParent parent = webView.getParent();
        if (parent == null || !z2) {
            a("Interstitial created with an AdWebView that has a parent.");
        } else if (parent instanceof ViewGroup) {
            this.k = (ViewGroup) parent;
            this.k.removeView(webView);
            if (webView.i() != null) {
                a("Interstitial created with an AdWebView that is already in use by another AdActivity.");
            } else {
                setRequestedOrientation(i);
                webView.a(this);
                this.j = (int) TypedValue.applyDimension(1, (float) (z2 ? ActivityChooserModel.DEFAULT_HISTORY_MAX_LENGTH : 32), getResources().getDisplayMetrics());
                this.i = new FrameLayout(getApplicationContext());
                this.i.setMinimumWidth(this.j);
                this.i.setMinimumHeight(this.j);
                this.i.setOnClickListener(this);
                a(z3);
                View view = this.i;
                this.n.addView(webView, -1, -1);
                LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                if (z2) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                } else {
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                }
                this.n.addView(view, layoutParams);
                this.n.setKeepScreenOn(true);
                setContentView(this.n);
                this.n.getRootView().setBackgroundColor(-16777216);
                if (z) {
                    h hVar = a;
                    h.a(webView);
                }
            }
        } else {
            a("MRAID banner was not a child of a ViewGroup.");
        }
    }

    public static void a(w wVar, x xVar) {
        b bVar = g;
        b.a(wVar, xVar);
    }

    private void a(String str) {
        g.b(str);
        finish();
    }

    public static boolean b() {
        b bVar = g;
        return b.a();
    }

    private static RelativeLayout.LayoutParams c(int i, int i2, int i3, int i4) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        return layoutParams;
    }

    public static boolean c() {
        b bVar = g;
        return b.b();
    }

    private void h() {
        if (!this.l) {
            if (this.h != null) {
                h hVar = a;
                h.b(this.h);
                this.h.a(null);
                this.h.d(false);
                if (!(this.q || this.n == null || this.k == null)) {
                    if (this.r && !this.s) {
                        g.a("Disabling hardware acceleration on collapsing MRAID WebView.");
                        this.h.g();
                    } else if (!this.r && this.s) {
                        g.a("Re-enabling hardware acceleration on collapsing MRAID WebView.");
                        this.h.h();
                    }
                    this.n.removeView(this.h);
                    this.k.addView(this.h);
                }
            }
            if (this.t != null) {
                this.t.d();
                this.t = null;
            }
            if (this == c) {
                c = null;
            }
            f = this.o;
            synchronized (b) {
                if (!(d == null || !this.q || this.h == null)) {
                    if (this.h == d.j()) {
                        d.a();
                    }
                    this.h.stopLoading();
                }
                if (this == e) {
                    e = null;
                    if (d != null) {
                        d.q();
                        d = null;
                    } else {
                        g.e("currentAdManager is null while trying to destroy AdActivity.");
                    }
                }
            }
            this.l = true;
            g.a("AdActivity is closing.");
        }
    }

    public final c a() {
        return this.t;
    }

    public final void a(int i, int i2, int i3, int i4) {
        if (this.t != null) {
            this.t.setLayoutParams(c(i, i2, i3, i4));
            this.t.requestLayout();
        }
    }

    public final void a(boolean z) {
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

    public final void b(int i, int i2, int i3, int i4) {
        if (this.t == null) {
            this.t = new c(this, this.h);
            this.n.addView(this.t, 0, c(i, i2, i3, i4));
            synchronized (b) {
                if (d == null) {
                    g.e("currentAdManager was null while trying to get the opening AdWebView.");
                } else {
                    d.k().b();
                }
            }
        }
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
                w wVar = d;
                if (e == null) {
                    e = this;
                    wVar.r();
                }
                if (this.o == null && f != null) {
                    this.o = f;
                }
                f = this;
                if ((wVar.g().a() && e == this) || (wVar.g().b() && this.o == e)) {
                    wVar.u();
                }
                boolean o = wVar.o();
                bp bpVar = (bp) ((bo) wVar.g().d.a()).b.a();
                this.s = AdUtil.a >= ((Integer) bpVar.b.a()).intValue();
                this.r = AdUtil.a >= ((Integer) bpVar.d.a()).intValue();
                this.n = null;
                this.p = false;
                this.q = true;
                this.t = null;
                Bundle bundleExtra = getIntent().getBundleExtra("com.google.ads.AdOpener");
                if (bundleExtra == null) {
                    a("Could not get the Bundle used to create AdActivity.");
                } else {
                    x xVar = new x(bundleExtra);
                    String b = xVar.b();
                    HashMap c = xVar.c();
                    String str;
                    String str2;
                    if (!b.equals("intent")) {
                        this.n = new RelativeLayout(getApplicationContext());
                        int b2;
                        boolean z2;
                        if (b.equals("webapp")) {
                            this.h = new e(wVar.g(), null);
                            WebViewClient a = ad.a(wVar, h.d, true, !o);
                            a.d();
                            if (o) {
                                a.a();
                            }
                            this.h.setWebViewClient(a);
                            b = (String) c.get("u");
                            str = (String) c.get("baseurl");
                            str2 = (String) c.get("html");
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
                                b2 = wVar.m();
                            } else {
                                b2 = -1;
                            }
                            e eVar = this.h;
                            z2 = c != null && "1".equals(c.get("custom_close"));
                            a(eVar, false, b2, o, z2);
                        } else if (b.equals("interstitial") || b.equals("expand")) {
                            this.h = wVar.j();
                            b2 = wVar.m();
                            if (b.equals("expand")) {
                                this.h.d(true);
                                this.q = false;
                                if (c != null && "1".equals(c.get("custom_close"))) {
                                    z = true;
                                }
                                if (!this.r || this.s) {
                                    z2 = z;
                                } else {
                                    g.a("Re-enabling hardware acceleration on expanding MRAID WebView.");
                                    this.h.h();
                                    z2 = z;
                                }
                            } else {
                                z2 = this.h.j();
                            }
                            a(this.h, true, b2, o, z2);
                        } else {
                            a(new StringBuilder("Unknown AdOpener, <action: ").append(b).append(">").toString());
                        }
                    } else if (c == null) {
                        a("Could not get the paramMap in launchIntent()");
                    } else {
                        int i;
                        int i2;
                        Intent intent = new Intent();
                        b = (String) c.get("u");
                        str = (String) c.get("m");
                        str2 = (String) c.get("i");
                        String str3 = (String) c.get("p");
                        String str4 = (String) c.get("c");
                        String str5 = (String) c.get("f");
                        String str6 = (String) c.get("e");
                        i = !TextUtils.isEmpty(b);
                        i2 = !TextUtils.isEmpty(str);
                        if (i != 0 && i2 != 0) {
                            intent.setDataAndType(Uri.parse(b), str);
                        } else if (i != 0) {
                            intent.setData(Uri.parse(b));
                        } else if (i2 != 0) {
                            intent.setType(str);
                        }
                        if (!TextUtils.isEmpty(str2)) {
                            intent.setAction(str2);
                        } else if (i != 0) {
                            intent.setAction("android.intent.action.VIEW");
                        }
                        if (!TextUtils.isEmpty(str3) && AdUtil.a >= 4) {
                            intent.setPackage(str3);
                        }
                        if (!TextUtils.isEmpty(str4)) {
                            String[] split = str4.split("/");
                            if (split.length < 2) {
                                g.e(new StringBuilder("Warning: Could not parse component name from open GMSG: ").append(str4).toString());
                            }
                            intent.setClassName(split[0], split[1]);
                        }
                        if (!TextUtils.isEmpty(str5)) {
                            int parseInt;
                            try {
                                parseInt = Integer.parseInt(str5);
                            } catch (NumberFormatException e) {
                                g.e(new StringBuilder("Warning: Could not parse flags from open GMSG: ").append(str5).toString());
                                parseInt = 0;
                            }
                            intent.addFlags(parseInt);
                        }
                        if (!TextUtils.isEmpty(str6)) {
                            try {
                                JSONObject jSONObject = new JSONObject(str6);
                                JSONArray names = jSONObject.names();
                                int i3;
                                while (i3 < names.length()) {
                                    str2 = names.getString(i3);
                                    JSONObject jSONObject2 = jSONObject.getJSONObject(str2);
                                    int i4 = jSONObject2.getInt("t");
                                    str5 = "v";
                                    switch (i4) {
                                        case IcsToast.LENGTH_LONG:
                                            intent.putExtra(str2, jSONObject2.getBoolean(str5));
                                            break;
                                        case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                                            intent.putExtra(str2, jSONObject2.getDouble(str5));
                                            break;
                                        case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                                            intent.putExtra(str2, jSONObject2.getInt(str5));
                                            break;
                                        case ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT:
                                            intent.putExtra(str2, jSONObject2.getLong(str5));
                                            break;
                                        case FragmentManagerImpl.ANIM_STYLE_FADE_ENTER:
                                            intent.putExtra(str2, jSONObject2.getString(str5));
                                            break;
                                        default:
                                            g.e(new StringBuilder("Warning: Unknown type in extras from open GMSG: ").append(str2).append(" (type: ").append(i4).append(")").toString());
                                            break;
                                    }
                                    i3++;
                                }
                            } catch (JSONException e2) {
                                g.e(new StringBuilder("Warning: Could not parse extras from open GMSG: ").append(str6).toString());
                            }
                        }
                        if (intent.filterEquals(new Intent())) {
                            a("Tried to launch empty intent.");
                        } else {
                            try {
                                g.a(new StringBuilder("Launching an intent from AdActivity: ").append(intent).toString());
                                startActivity(intent);
                                this.h = null;
                                this.m = SystemClock.elapsedRealtime();
                                this.p = true;
                                synchronized (b) {
                                    if (c == null) {
                                        c = this;
                                        wVar.s();
                                    }
                                }
                            } catch (ActivityNotFoundException e3) {
                                Throwable th = e3;
                                g.b(th.getMessage(), th);
                                finish();
                            }
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
            h();
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
            h();
        }
        super.onPause();
    }

    public void onWindowFocusChanged(boolean z) {
        if (this.p && z && SystemClock.elapsedRealtime() - this.m > 250) {
            g.d("Launcher AdActivity got focus and is closing.");
            finish();
        }
        super.onWindowFocusChanged(z);
    }
}