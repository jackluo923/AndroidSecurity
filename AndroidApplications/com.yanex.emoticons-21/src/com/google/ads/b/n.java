package com.google.ads.b;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.actionbarsherlock.view.MenuItem;
import com.google.ads.AdView;
import com.google.ads.ag;
import com.google.ads.ai;
import com.google.ads.aw;
import com.google.ads.ax;
import com.google.ads.az;
import com.google.ads.bn;
import com.google.ads.bo;
import com.google.ads.bp;
import com.google.ads.bq;
import com.google.ads.d;
import com.google.ads.d.a;
import com.google.ads.e;
import com.google.ads.g;
import com.google.ads.util.AdUtil;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;

public final class n implements Runnable {
    boolean a;
    private String b;
    private String c;
    private String d;
    private String e;
    private boolean f;
    private y g;
    private d h;
    private WebView i;
    private bn j;
    private String k;
    private String l;
    private LinkedList m;
    private String n;
    private g o;
    private boolean p;
    private volatile boolean q;
    private boolean r;
    private e s;
    private boolean t;
    private int u;
    private Thread v;
    private boolean w;
    private u x;

    protected n() {
        this.p = false;
        this.x = u.b;
    }

    public n(bn bnVar) {
        this.p = false;
        this.x = u.b;
        this.j = bnVar;
        this.k = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.m = new LinkedList();
        this.s = null;
        this.t = false;
        this.u = -1;
        this.f = false;
        this.r = false;
        this.n = null;
        this.o = null;
        if (((Activity) ((bq) bnVar.a.a()).c.a()) != null) {
            this.i = new e((bq) bnVar.a.a(), null);
            this.i.setWebViewClient(ad.a((w) ((bq) bnVar.a.a()).b.a(), h.b, false, false));
            this.i.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            this.i.setWillNotDraw(true);
            this.g = new y(bnVar);
        } else {
            this.i = null;
            this.g = null;
            com.google.ads.util.g.e("activity was null while trying to create an AdLoader.");
        }
    }

    private String a(Map map, Context context) {
        int i = 0;
        Context applicationContext = context.getApplicationContext();
        ab l = ((w) ((bq) this.j.a.a()).b.a()).l();
        long m = l.m();
        if (m > 0) {
            map.put("prl", Long.valueOf(m));
        }
        m = l.n();
        if (m > 0) {
            map.put("prnl", Long.valueOf(m));
        }
        String l2 = l.l();
        if (l2 != null) {
            map.put("ppcl", l2);
        }
        l2 = l.k();
        if (l2 != null) {
            map.put("pcl", l2);
        }
        m = l.j();
        if (m > 0) {
            map.put("pcc", Long.valueOf(m));
        }
        map.put("preqs", Long.valueOf(ab.o()));
        map.put("oar", Long.valueOf(l.p()));
        map.put("bas_on", Long.valueOf(l.s()));
        map.put("bas_off", Long.valueOf(l.v()));
        if (l.y()) {
            map.put("aoi_timeout", "true");
        }
        if (l.A()) {
            map.put("aoi_nofill", "true");
        }
        l2 = l.D();
        if (l2 != null) {
            map.put("pit", l2);
        }
        map.put("ptime", Long.valueOf(ab.E()));
        l.a();
        l.i();
        if (((bq) this.j.a.a()).b()) {
            map.put("format", "interstitial_mb");
        } else {
            g c = ((ac) ((bq) this.j.a.a()).g.a()).c();
            if (c.c()) {
                map.put("smart_w", "full");
            }
            if (c.d()) {
                map.put("smart_h", "auto");
            }
            if (c.e()) {
                Map hashMap = new HashMap();
                hashMap.put("w", Integer.valueOf(c.a()));
                hashMap.put("h", Integer.valueOf(c.b()));
                map.put("ad_frame", hashMap);
            } else {
                map.put("format", c.toString());
            }
        }
        map.put("slotname", ((bq) this.j.a.a()).h.a());
        map.put("js", "afma-sdk-a-v6.4.1");
        try {
            int i2 = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0).versionCode;
            CharSequence f = AdUtil.f(applicationContext);
            if (!TextUtils.isEmpty(f)) {
                map.put("mv", f);
            }
            String str = (String) bo.a().a.a();
            if (!TextUtils.isEmpty(str)) {
                map.put("imbf", str);
            }
            map.put("msid", applicationContext.getPackageName());
            map.put("app_name", i2 + ".android." + applicationContext.getPackageName());
            map.put("isu", AdUtil.a(applicationContext));
            Object d = AdUtil.d(applicationContext);
            l2 = "net";
            if (d == null) {
                d = "null";
            }
            map.put(l2, d);
            str = AdUtil.e(applicationContext);
            if (!(str == null || str.length() == 0)) {
                map.put("cap", str);
            }
            map.put("u_audio", Integer.valueOf(AdUtil.g(applicationContext).ordinal()));
            DisplayMetrics a = AdUtil.a((Activity)context);
            map.put("u_sd", Float.valueOf(a.density));
            map.put("u_h", Integer.valueOf(AdUtil.a(applicationContext, a)));
            map.put("u_w", Integer.valueOf(AdUtil.b(applicationContext, a)));
            map.put("hl", Locale.getDefault().getLanguage());
            bq bqVar = (bq) this.j.a.a();
            ag agVar = (ag) bqVar.r.a();
            if (agVar == null) {
                agVar = ag.a("afma-sdk-a-v6.4.1", context);
                bqVar.r.a(agVar);
                bqVar.s.a(new ai(agVar));
            }
            map.put("ms", agVar.c(applicationContext));
            if (!(((bq) this.j.a.a()).j == null || ((bq) this.j.a.a()).j.a() == null)) {
                AdView adView = (AdView) ((bq) this.j.a.a()).j.a();
                if (adView.getParent() != null) {
                    int[] iArr = new int[2];
                    adView.getLocationOnScreen(iArr);
                    int i3 = iArr[0];
                    int i4 = iArr[1];
                    DisplayMetrics displayMetrics = ((Context) ((bq) this.j.a.a()).f.a()).getResources().getDisplayMetrics();
                    i2 = (!adView.isShown() || adView.getWidth() + i3 <= 0 || adView.getHeight() + i4 <= 0 || i3 > displayMetrics.widthPixels || i4 > displayMetrics.heightPixels) ? 0 : 1;
                    Map hashMap2 = new HashMap();
                    hashMap2.put("x", Integer.valueOf(i3));
                    hashMap2.put("y", Integer.valueOf(i4));
                    hashMap2.put("width", Integer.valueOf(adView.getWidth()));
                    hashMap2.put("height", Integer.valueOf(adView.getHeight()));
                    hashMap2.put("visible", Integer.valueOf(i2));
                    map.put("ad_pos", hashMap2);
                }
            }
            StringBuilder stringBuilder = new StringBuilder();
            g[] gVarArr = (g[]) ((bq) this.j.a.a()).n.a();
            if (gVarArr != null) {
                i3 = gVarArr.length;
                while (i < i3) {
                    g gVar = gVarArr[i];
                    if (stringBuilder.length() != 0) {
                        stringBuilder.append("|");
                    }
                    stringBuilder.append(gVar.a() + "x" + gVar.b());
                    i++;
                }
                map.put("sz", stringBuilder.toString());
            }
            TelephonyManager telephonyManager = (TelephonyManager) applicationContext.getSystemService("phone");
            CharSequence networkOperator = telephonyManager.getNetworkOperator();
            if (!TextUtils.isEmpty(networkOperator)) {
                map.put("carrier", networkOperator);
            }
            map.put("pt", Integer.valueOf(telephonyManager.getPhoneType()));
            map.put("gnt", Integer.valueOf(telephonyManager.getNetworkType()));
            if (AdUtil.c()) {
                map.put("simulator", Integer.valueOf(1));
            }
            map.put("session_id", aw.a().b().toString());
            map.put("seq_num", aw.a().c().toString());
            if (((ac) ((bq) this.j.a.a()).g.a()).b()) {
                map.put("swipeable", Integer.valueOf(1));
            }
            if (((Boolean) ((bq) this.j.a.a()).t.a()).booleanValue()) {
                map.put("d_imp_hdr", Integer.valueOf(1));
            }
            String a2 = AdUtil.a(map);
            if (((Boolean) ((bp) ((bo) ((bq) this.j.a.a()).d.a()).b.a()).o.a()).booleanValue()) {
                stringBuilder = new StringBuilder();
                str = c();
            } else {
                stringBuilder = new StringBuilder().append(c());
                d dVar = this.h;
                str = "AFMA_getSdkConstants();";
            }
            StringBuilder append = stringBuilder.append(str);
            d dVar2 = this.h;
            append = append.append("AFMA_buildAdURL(").append(a2).append(");");
            dVar2 = this.h;
            str = append.append("</script></head><body></body></html>").toString();
            com.google.ads.util.g.c(new StringBuilder("adRequestUrlHtml: ").append(str).toString());
            return str;
        } catch (NameNotFoundException e) {
            throw new s(this, "NameNotFoundException");
        }
    }

    private void a(e eVar, boolean z) {
        ((Handler) bo.a().c.a()).post(new r((w) ((bq) this.j.a.a()).b.a(), this.i, this.g, eVar, z));
    }

    private String c() {
        return this.h instanceof a ? "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>" : "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>";
    }

    protected final synchronized void a() {
        this.t = true;
        notify();
    }

    public final synchronized void a(int i) {
        this.u = i;
    }

    public final synchronized void a(u uVar) {
        this.x = uVar;
    }

    protected final void a(d dVar) {
        this.h = dVar;
        this.q = false;
        this.v = new Thread(this);
        this.v.start();
    }

    public final synchronized void a(e eVar) {
        this.s = eVar;
        notify();
    }

    public final synchronized void a(g gVar) {
        this.o = gVar;
    }

    protected final synchronized void a(String str) {
        this.m.add(str);
    }

    protected final synchronized void a(String str, String str2) {
        this.b = str2;
        this.c = str;
        notify();
    }

    public final synchronized void a(boolean z) {
        this.p = z;
    }

    public final synchronized void b() {
        this.r = true;
    }

    protected final synchronized void b(String str) {
        this.e = str;
    }

    protected final synchronized void b(boolean z) {
        this.f = z;
    }

    protected final synchronized void c(String str) {
        this.d = str;
    }

    public final synchronized void c(boolean z) {
        this.w = z;
    }

    public final synchronized void d(String str) {
        this.k = str;
        notify();
    }

    public final synchronized void d(boolean z) {
        this.a = z;
    }

    public final synchronized void e(String str) {
        this.l = str;
    }

    public final synchronized void f(String str) {
        this.n = str;
    }

    public final void run() {
        synchronized (this) {
            try {
                if (this.i == null || this.g == null) {
                    com.google.ads.util.g.e("adRequestWebView was null while trying to load an ad.");
                    a(e.d, false);
                } else {
                    Activity activity = (Activity) ((bq) this.j.a.a()).c.a();
                    if (activity == null) {
                        com.google.ads.util.g.e("activity was null while forming an ad request.");
                        a(e.d, false);
                    } else {
                        Object obj;
                        ad adVar;
                        WebView j;
                        long elapsedRealtime;
                        long n = ((w) ((bq) this.j.a.a()).b.a()).n();
                        long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        Map a = this.h.a((Context) ((bq) this.j.a.a()).f.a());
                        Object obj2 = a.get("extras");
                        if (obj2 instanceof Map) {
                            Map map = (Map) obj2;
                            obj = map.get("_adUrl");
                            if (obj instanceof String) {
                                this.b = (String) obj;
                            }
                            obj = map.get("_requestUrl");
                            if (obj instanceof String) {
                                this.k = (String) obj;
                            }
                            obj = map.get("_activationOverlayUrl");
                            if (obj instanceof String) {
                                this.l = (String) obj;
                            }
                            obj = map.get("_orientation");
                            if (obj instanceof String) {
                                if (obj.equals("p")) {
                                    this.u = 1;
                                } else if (obj.equals("l")) {
                                    this.u = 0;
                                }
                            }
                            obj2 = map.get("_norefresh");
                            if (obj2 instanceof String && obj2.equals("t")) {
                                ((w) ((bq) this.j.a.a()).b.a()).d();
                            }
                        }
                        if (this.b == null) {
                            if (this.k == null) {
                                try {
                                    ((Handler) bo.a().c.a()).post(new t(this, this.i, this.h instanceof a ? "http://www.gstatic.com/safa/" : "http://media.admob.com/", a(a, activity)));
                                    long elapsedRealtime3 = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                    if (elapsedRealtime3 > 0) {
                                        try {
                                            wait(elapsedRealtime3);
                                        } catch (InterruptedException e) {
                                            com.google.ads.util.g.a(new StringBuilder("AdLoader InterruptedException while getting the URL: ").append(e).toString());
                                        }
                                    }
                                    if (this.q) {
                                        return;
                                    } else if (this.s != null) {
                                        a(this.s, false);
                                        return;
                                    } else if (this.k == null) {
                                        com.google.ads.util.g.c(new StringBuilder("AdLoader timed out after ").append(n).append("ms while getting the URL.").toString());
                                        a(e.c, false);
                                        return;
                                    } else if (((ac) ((bq) this.j.a.a()).g.a()).b() && TextUtils.isEmpty(this.l)) {
                                        com.google.ads.util.g.c("AdLoader doesn't have a URL for the activation overlay");
                                        a(e.d, false);
                                        return;
                                    }
                                } catch (s e2) {
                                    com.google.ads.util.g.c(new StringBuilder("Caught internal exception: ").append(e2).toString());
                                    a(e.d, false);
                                }
                            }
                            ab l = ((w) ((bq) this.j.a.a()).b.a()).l();
                            ad e3;
                            ad adVar2;
                            boolean z;
                            long elapsedRealtime4;
                            switch (q.a[this.x.ordinal()]) {
                                case IcsToast.LENGTH_LONG:
                                    l.r();
                                    l.u();
                                    l.x();
                                    com.google.ads.util.g.c("Request scenario: Online server request.");
                                    if (this.a) {
                                        this.b = this.k;
                                        com.google.ads.util.g.a(new StringBuilder("Using loadUrl.  adBaseUrl: ").append(this.b).toString());
                                    } else {
                                        com.google.ads.util.g.a("Not using loadUrl().");
                                        this.g.a(this.w);
                                        if (((ac) ((bq) this.j.a.a()).g.a()).b()) {
                                            e3 = ((a) ((bq) this.j.a.a()).e.a()).e();
                                            e3.c();
                                            ((Handler) bo.a().c.a()).post(new o(this));
                                            adVar2 = e3;
                                        } else {
                                            z = false;
                                        }
                                        this.g.a(this.k);
                                        while (!this.q) {
                                            try {
                                                elapsedRealtime4 = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                                if (elapsedRealtime4 > 0) {
                                                    wait(elapsedRealtime4);
                                                }
                                            } catch (InterruptedException e4) {
                                                com.google.ads.util.g.a(new StringBuilder("AdLoader InterruptedException while getting the ad server's response: ").append(e4).toString());
                                            }
                                        }
                                        if (!this.q) {
                                            return;
                                        } else if (this.s == null) {
                                            a(this.s, false);
                                            return;
                                        } else if (this.c != null) {
                                            adVar = adVar2;
                                            ((w) ((bq) this.j.a.a()).b.a()).b(false);
                                            j = ((w) ((bq) this.j.a.a()).b.a()).j();
                                            ((w) ((bq) this.j.a.a()).b.a()).k().c();
                                            ((w) ((bq) this.j.a.a()).b.a()).l().h();
                                            ((Handler) bo.a().c.a()).post(new t(this, j, this.b, this.c));
                                            while (!this.q) {
                                                try {
                                                    elapsedRealtime = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                                    if (elapsedRealtime > 0) {
                                                        wait(elapsedRealtime);
                                                    }
                                                } catch (InterruptedException e5) {
                                                    com.google.ads.util.g.a(new StringBuilder("AdLoader InterruptedException while loading the HTML: ").append(e5).toString());
                                                }
                                            }
                                            if (this.t) {
                                                com.google.ads.util.g.c(new StringBuilder("AdLoader timed out after ").append(n).append("ms while loading the HTML.").toString());
                                                a(e.c, true);
                                            } else {
                                                ((Handler) bo.a().c.a()).post(new v(this, (w) ((bq) this.j.a.a()).b.a(), this.i, this.m, this.u, this.r, this.n, this.o));
                                            }
                                        } else {
                                            com.google.ads.util.g.c(new StringBuilder("AdLoader timed out after ").append(n).append("ms while waiting for the ad server's response.").toString());
                                            a(e.c, false);
                                            return;
                                        }
                                    }
                                case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                                    l.t();
                                    com.google.ads.util.g.c("Request scenario: Online using buffered ads.");
                                    if (this.a) {
                                        com.google.ads.util.g.a("Not using loadUrl().");
                                        this.g.a(this.w);
                                        if (((ac) ((bq) this.j.a.a()).g.a()).b()) {
                                            e3 = ((a) ((bq) this.j.a.a()).e.a()).e();
                                            e3.c();
                                            ((Handler) bo.a().c.a()).post(new o(this));
                                            adVar2 = e3;
                                        } else {
                                            z = false;
                                        }
                                        this.g.a(this.k);
                                        while (!this.q) {
                                            elapsedRealtime4 = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                            if (elapsedRealtime4 > 0) {
                                                wait(elapsedRealtime4);
                                            }
                                        }
                                        if (!this.q) {
                                            return;
                                        } else if (this.s == null) {
                                            a(this.s, false);
                                            return;
                                        } else if (this.c != null) {
                                            com.google.ads.util.g.c(new StringBuilder("AdLoader timed out after ").append(n).append("ms while waiting for the ad server's response.").toString());
                                            a(e.c, false);
                                            return;
                                        } else {
                                            adVar = adVar2;
                                            ((w) ((bq) this.j.a.a()).b.a()).b(false);
                                            j = ((w) ((bq) this.j.a.a()).b.a()).j();
                                            ((w) ((bq) this.j.a.a()).b.a()).k().c();
                                            ((w) ((bq) this.j.a.a()).b.a()).l().h();
                                            ((Handler) bo.a().c.a()).post(new t(this, j, this.b, this.c));
                                            while (!this.q) {
                                                elapsedRealtime = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                                if (elapsedRealtime > 0) {
                                                    wait(elapsedRealtime);
                                                }
                                            }
                                            if (this.t) {
                                                ((Handler) bo.a().c.a()).post(new v(this, (w) ((bq) this.j.a.a()).b.a(), this.i, this.m, this.u, this.r, this.n, this.o));
                                            } else {
                                                com.google.ads.util.g.c(new StringBuilder("AdLoader timed out after ").append(n).append("ms while loading the HTML.").toString());
                                                a(e.c, true);
                                            }
                                        }
                                    } else {
                                        this.b = this.k;
                                        com.google.ads.util.g.a(new StringBuilder("Using loadUrl.  adBaseUrl: ").append(this.b).toString());
                                    }
                                    break;
                                case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                                    l.w();
                                    l.q();
                                    com.google.ads.util.g.c("Request scenario: Offline using buffered ads.");
                                    if (this.a) {
                                        this.b = this.k;
                                        com.google.ads.util.g.a(new StringBuilder("Using loadUrl.  adBaseUrl: ").append(this.b).toString());
                                    } else {
                                        com.google.ads.util.g.a("Not using loadUrl().");
                                        this.g.a(this.w);
                                        if (((ac) ((bq) this.j.a.a()).g.a()).b()) {
                                            z = false;
                                        } else {
                                            e3 = ((a) ((bq) this.j.a.a()).e.a()).e();
                                            e3.c();
                                            ((Handler) bo.a().c.a()).post(new o(this));
                                            adVar2 = e3;
                                        }
                                        this.g.a(this.k);
                                        while (!this.q) {
                                            elapsedRealtime4 = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                            if (elapsedRealtime4 > 0) {
                                                wait(elapsedRealtime4);
                                            }
                                        }
                                        if (!this.q) {
                                            return;
                                        } else if (this.s == null) {
                                            a(this.s, false);
                                            return;
                                        } else if (this.c != null) {
                                            adVar = adVar2;
                                            ((w) ((bq) this.j.a.a()).b.a()).b(false);
                                            j = ((w) ((bq) this.j.a.a()).b.a()).j();
                                            ((w) ((bq) this.j.a.a()).b.a()).k().c();
                                            ((w) ((bq) this.j.a.a()).b.a()).l().h();
                                            ((Handler) bo.a().c.a()).post(new t(this, j, this.b, this.c));
                                            while (!this.q) {
                                                elapsedRealtime = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                                if (elapsedRealtime > 0) {
                                                    wait(elapsedRealtime);
                                                }
                                            }
                                            if (this.t) {
                                                com.google.ads.util.g.c(new StringBuilder("AdLoader timed out after ").append(n).append("ms while loading the HTML.").toString());
                                                a(e.c, true);
                                            } else {
                                                ((Handler) bo.a().c.a()).post(new v(this, (w) ((bq) this.j.a.a()).b.a(), this.i, this.m, this.u, this.r, this.n, this.o));
                                            }
                                        } else {
                                            com.google.ads.util.g.c(new StringBuilder("AdLoader timed out after ").append(n).append("ms while waiting for the ad server's response.").toString());
                                            a(e.c, false);
                                            return;
                                        }
                                    }
                                case ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT:
                                    l.q();
                                    com.google.ads.util.g.c("Request scenario: Offline with no buffered ads.");
                                    com.google.ads.util.g.c("Network is unavailable.  Aborting ad request.");
                                    a(e.c, false);
                                    return;
                                default:
                                    if (this.a) {
                                        com.google.ads.util.g.a("Not using loadUrl().");
                                        this.g.a(this.w);
                                        if (((ac) ((bq) this.j.a.a()).g.a()).b()) {
                                            e3 = ((a) ((bq) this.j.a.a()).e.a()).e();
                                            e3.c();
                                            ((Handler) bo.a().c.a()).post(new o(this));
                                            adVar2 = e3;
                                        } else {
                                            z = false;
                                        }
                                        this.g.a(this.k);
                                        while (!this.q && this.s == null && this.c == null) {
                                            elapsedRealtime4 = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                            if (elapsedRealtime4 > 0) {
                                                wait(elapsedRealtime4);
                                            }
                                        }
                                        if (!this.q) {
                                            return;
                                        } else if (this.s == null) {
                                            a(this.s, false);
                                            return;
                                        } else if (this.c != null) {
                                            com.google.ads.util.g.c(new StringBuilder("AdLoader timed out after ").append(n).append("ms while waiting for the ad server's response.").toString());
                                            a(e.c, false);
                                            return;
                                        } else {
                                            adVar = adVar2;
                                            if (!this.a && this.f) {
                                                ((w) ((bq) this.j.a.a()).b.a()).b(true);
                                                try {
                                                    if (TextUtils.isEmpty(this.e)) {
                                                        com.google.ads.util.g.b("Got a mediation response with no content type. Aborting mediation.");
                                                        a(e.d, false);
                                                    } else if (this.e.startsWith("application/json")) {
                                                        ax a2 = ax.a(this.c);
                                                        obj = this.d;
                                                        az h = ((w) ((bq) this.j.a.a()).b.a()).h();
                                                        if (!(obj == null || obj.contains("no-store") || obj.contains("no-cache"))) {
                                                            Matcher matcher = Pattern.compile("max-age\\s*=\\s*(\\d+)").matcher(obj);
                                                            if (matcher.find()) {
                                                                try {
                                                                    h.a(a2, Integer.parseInt(matcher.group(1)));
                                                                    com.google.ads.util.g.c(String.format(Locale.US, "Caching gWhirl configuration for: %d seconds", new Object[]{Integer.valueOf(i)}));
                                                                } catch (NumberFormatException e6) {
                                                                    com.google.ads.util.g.b("Caught exception trying to parse cache control directive. Overflow?", e6);
                                                                }
                                                            } else {
                                                                com.google.ads.util.g.c(new StringBuilder("Unrecognized cacheControlDirective: '").append(obj).append("'. Not caching configuration.").toString());
                                                            }
                                                        }
                                                        ((Handler) bo.a().c.a()).post(new p(this, a2));
                                                    } else {
                                                        com.google.ads.util.g.b(new StringBuilder("Got a mediation response with a content type: '").append(this.e).append("'. Expected something starting with 'application/json'. Aborting mediation.").toString());
                                                        a(e.d, false);
                                                    }
                                                } catch (JSONException e7) {
                                                    com.google.ads.util.g.b("AdLoader can't parse gWhirl server configuration.", e7);
                                                    a(e.d, false);
                                                }
                                                return;
                                            } else if (this.e != null && (this.e.startsWith("application/json") || this.e.startsWith("text/javascript"))) {
                                                com.google.ads.util.g.b(new StringBuilder("Expected HTML but received ").append(this.e).append(".").toString());
                                                a(e.d, false);
                                                return;
                                            } else if (((bq) this.j.a.a()).n.a() != null) {
                                                if (this.o == null) {
                                                    com.google.ads.util.g.b("Multiple supported ad sizes were specified, but the server did not respond with a size.");
                                                    a(e.d, false);
                                                    return;
                                                } else if (!Arrays.asList((Object[]) ((bq) this.j.a.a()).n.a()).contains(this.o)) {
                                                    com.google.ads.util.g.b(new StringBuilder("The ad server did not respond with a supported AdSize: ").append(this.o).toString());
                                                    a(e.d, false);
                                                    return;
                                                }
                                            } else if (this.o != null) {
                                                com.google.ads.util.g.e("adSize was expected to be null in AdLoader.");
                                                this.o = null;
                                            }
                                            ((w) ((bq) this.j.a.a()).b.a()).b(false);
                                            j = ((w) ((bq) this.j.a.a()).b.a()).j();
                                            ((w) ((bq) this.j.a.a()).b.a()).k().c();
                                            ((w) ((bq) this.j.a.a()).b.a()).l().h();
                                            ((Handler) bo.a().c.a()).post(new t(this, j, this.b, this.c));
                                            while (!this.q) {
                                                if (!this.t || (((ac) ((bq) this.j.a.a()).g.a()).b() && adVar.e())) {
                                                    elapsedRealtime = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                                    if (elapsedRealtime > 0) {
                                                        wait(elapsedRealtime);
                                                    }
                                                }
                                            }
                                            if (this.t) {
                                                ((Handler) bo.a().c.a()).post(new v(this, (w) ((bq) this.j.a.a()).b.a(), this.i, this.m, this.u, this.r, this.n, this.o));
                                            } else {
                                                com.google.ads.util.g.c(new StringBuilder("AdLoader timed out after ").append(n).append("ms while loading the HTML.").toString());
                                                a(e.c, true);
                                            }
                                        }
                                    } else {
                                        this.b = this.k;
                                        com.google.ads.util.g.a(new StringBuilder("Using loadUrl.  adBaseUrl: ").append(this.b).toString());
                                    }
                                    break;
                            }
                        }
                        adVar = null;
                        ((w) ((bq) this.j.a.a()).b.a()).b(false);
                        j = ((w) ((bq) this.j.a.a()).b.a()).j();
                        ((w) ((bq) this.j.a.a()).b.a()).k().c();
                        ((w) ((bq) this.j.a.a()).b.a()).l().h();
                        ((Handler) bo.a().c.a()).post(new t(this, j, this.b, this.c));
                        while (!this.q) {
                            elapsedRealtime = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                            if (elapsedRealtime > 0) {
                                wait(elapsedRealtime);
                            }
                        }
                        if (this.t) {
                            ((Handler) bo.a().c.a()).post(new v(this, (w) ((bq) this.j.a.a()).b.a(), this.i, this.m, this.u, this.r, this.n, this.o));
                        } else {
                            com.google.ads.util.g.c(new StringBuilder("AdLoader timed out after ").append(n).append("ms while loading the HTML.").toString());
                            a(e.c, true);
                        }
                    }
                }
            } catch (Throwable th) {
                com.google.ads.util.g.b("An unknown error occurred in AdLoader.", th);
                a(e.d, true);
            }
        }
    }
}