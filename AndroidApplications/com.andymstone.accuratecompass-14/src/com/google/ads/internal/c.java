package com.google.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import com.andymstone.core.o;
import com.google.ads.AdRequest;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.ads.l;
import com.google.ads.searchads.SearchAdRequest;
import com.google.ads.util.AdUtil;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;

public class c implements Runnable {
    boolean a;
    private String b;
    private String c;
    private String d;
    private String e;
    private boolean f;
    private f g;
    private d h;
    private AdRequest i;
    private WebView j;
    private String k;
    private LinkedList l;
    private String m;
    private AdSize n;
    private volatile boolean o;
    private boolean p;
    private ErrorCode q;
    private boolean r;
    private int s;
    private Thread t;
    private boolean u;
    private d v;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ com.google.ads.c a;

        AnonymousClass_1(com.google.ads.c cVar) {
            this.a = cVar;
        }

        public void run() {
            if (c.this.j != null) {
                c.this.j.stopLoading();
                c.this.j.destroy();
            }
            c.this.h.a(c.this.m);
            if (c.this.n != null) {
                ((h) c.this.h.h().k.a()).b(c.this.n);
            }
            c.this.h.a(this.a);
        }
    }

    /* synthetic */ class AnonymousClass_2 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[com.google.ads.internal.c.d.values().length];
            try {
                a[com.google.ads.internal.c.d.b.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[com.google.ads.internal.c.d.a.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[com.google.ads.internal.c.d.c.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            a[com.google.ads.internal.c.d.d.ordinal()] = 4;
        }
    }

    class a implements Runnable {
        private final d a;
        private final WebView b;
        private final f c;
        private final ErrorCode d;
        private final boolean e;

        public a(d dVar, WebView webView, f fVar, ErrorCode errorCode, boolean z) {
            this.a = dVar;
            this.b = webView;
            this.c = fVar;
            this.d = errorCode;
            this.e = z;
        }

        public void run() {
            if (this.b != null) {
                this.b.stopLoading();
                this.b.destroy();
            }
            if (this.c != null) {
                this.c.a();
            }
            if (this.e) {
                AdWebView k = this.a.k();
                k.stopLoading();
                k.setVisibility(o.MyAlertDialog_MAD_messagePadding);
            }
            this.a.a(this.d);
        }
    }

    class b extends Exception {
        public b(String str) {
            super(str);
        }
    }

    class c implements Runnable {
        private final String b;
        private final String c;
        private final WebView d;

        public c(WebView webView, String str, String str2) {
            this.d = webView;
            this.b = str;
            this.c = str2;
        }

        public void run() {
            if (this.c != null) {
                this.d.loadDataWithBaseURL(this.b, this.c, "text/html", "utf-8", null);
            } else {
                this.d.loadUrl(this.b);
            }
        }
    }

    public enum d {
        ONLINE_USING_BUFFERED_ADS("online_buffered"),
        ONLINE_SERVER_REQUEST("online_request"),
        OFFLINE_USING_BUFFERED_ADS("offline_buffered"),
        OFFLINE_EMPTY("offline_empty");
        public String e;

        static {
            String str = "online_buffered";
            a = new com.google.ads.internal.c.d("ONLINE_USING_BUFFERED_ADS", 0, "online_buffered");
            str = "online_request";
            b = new com.google.ads.internal.c.d("ONLINE_SERVER_REQUEST", 1, "online_request");
            str = "offline_buffered";
            c = new com.google.ads.internal.c.d("OFFLINE_USING_BUFFERED_ADS", 2, "offline_buffered");
            str = "offline_empty";
            d = new com.google.ads.internal.c.d("OFFLINE_EMPTY", 3, "offline_empty");
            f = new com.google.ads.internal.c.d[]{a, b, c, d};
        }

        private d(String str) {
            this.e = str;
        }
    }

    class e implements Runnable {
        private final d a;
        private final WebView b;
        private final LinkedList c;
        private final int d;
        private final boolean e;
        private final String f;
        private final AdSize g;

        public e(d dVar, WebView webView, LinkedList linkedList, int i, boolean z, String str, AdSize adSize) {
            this.a = dVar;
            this.b = webView;
            this.c = linkedList;
            this.d = i;
            this.e = z;
            this.f = str;
            this.g = adSize;
        }

        public void run() {
            if (this.b != null) {
                this.b.stopLoading();
                this.b.destroy();
            }
            this.a.a(this.c);
            this.a.a(this.d);
            this.a.a(this.e);
            this.a.a(this.f);
            if (this.g != null) {
                ((h) this.a.h().k.a()).b(this.g);
                this.a.k().setAdSize(this.g);
            }
            this.a.B();
        }
    }

    protected c() {
        this.v = d.b;
    }

    public c(d dVar) {
        this.v = d.b;
        this.h = dVar;
        this.k = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.l = new LinkedList();
        this.q = null;
        this.r = false;
        this.s = -1;
        this.f = false;
        this.p = false;
        this.m = null;
        this.n = null;
        if (((Activity) dVar.h().e.a()) != null) {
            this.j = new AdWebView(dVar.h(), null);
            this.j.setWebViewClient(i.a(dVar, a.b, false, false));
            this.j.setVisibility(o.MyAlertDialog_MAD_messagePadding);
            this.j.setWillNotDraw(true);
            this.g = new f(this, dVar);
        } else {
            this.j = null;
            this.g = null;
            com.google.ads.util.b.e("activity was null while trying to create an AdLoader.");
        }
    }

    static void a(String str, com.google.ads.c cVar, com.google.ads.d dVar) {
        if (str != null && !str.contains("no-store") && !str.contains("no-cache")) {
            Matcher matcher = Pattern.compile("max-age\\s*=\\s*(\\d+)").matcher(str);
            if (matcher.find()) {
                try {
                    dVar.a(cVar, Integer.parseInt(matcher.group(1)));
                    com.google.ads.util.b.c(String.format(Locale.US, "Caching gWhirl configuration for: %d seconds", new Object[]{Integer.valueOf(i)}));
                } catch (NumberFormatException e) {
                    com.google.ads.util.b.b("Caught exception trying to parse cache control directive. Overflow?", e);
                }
            } else {
                com.google.ads.util.b.c("Unrecognized cacheControlDirective: '" + str + "'. Not caching configuration.");
            }
        }
    }

    private void b(String str, String str2) {
        this.h.a(new c(this.j, str2, str));
    }

    private String d() {
        return this.i instanceof SearchAdRequest ? "AFMA_buildAdURL" : "AFMA_buildAdURL";
    }

    private String e() {
        return this.i instanceof SearchAdRequest ? "AFMA_getSdkConstants();" : "AFMA_getSdkConstants();";
    }

    private String f() {
        return this.i instanceof SearchAdRequest ? "http://www.gstatic.com/safa/" : "http://media.admob.com/";
    }

    private String g() {
        return this.i instanceof SearchAdRequest ? "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>" : "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>";
    }

    private String h() {
        return this.i instanceof SearchAdRequest ? "</script></head><body></body></html>" : "</script></head><body></body></html>";
    }

    private void i() {
        WebView k = this.h.k();
        this.h.l().c(true);
        this.h.m().h();
        this.h.a(new c(k, this.b, this.c));
    }

    private void j() {
        this.h.a(new e(this.h, this.j, this.l, this.s, this.p, this.m, this.n));
    }

    public String a(Map map, Activity activity) {
        int i = 0;
        Context applicationContext = activity.getApplicationContext();
        g m = this.h.m();
        long m2 = m.m();
        if (m2 > 0) {
            map.put("prl", Long.valueOf(m2));
        }
        m2 = m.n();
        if (m2 > 0) {
            map.put("prnl", Long.valueOf(m2));
        }
        String l = m.l();
        if (l != null) {
            map.put("ppcl", l);
        }
        l = m.k();
        if (l != null) {
            map.put("pcl", l);
        }
        m2 = m.j();
        if (m2 > 0) {
            map.put("pcc", Long.valueOf(m2));
        }
        map.put("preqs", Long.valueOf(m.o()));
        map.put("oar", Long.valueOf(m.p()));
        map.put("bas_on", Long.valueOf(m.s()));
        map.put("bas_off", Long.valueOf(m.v()));
        if (m.y()) {
            map.put("aoi_timeout", "true");
        }
        if (m.A()) {
            map.put("aoi_nofill", "true");
        }
        l = m.D();
        if (l != null) {
            map.put("pit", l);
        }
        map.put("ptime", Long.valueOf(g.E()));
        m.a();
        m.i();
        if (this.h.h().b()) {
            map.put("format", "interstitial_mb");
        } else {
            AdSize b = ((h) this.h.h().k.a()).b();
            if (b.c()) {
                map.put("smart_w", "full");
            }
            if (b.d()) {
                map.put("smart_h", "auto");
            }
            if (b.e()) {
                Map hashMap = new HashMap();
                hashMap.put("w", Integer.valueOf(b.a()));
                hashMap.put("h", Integer.valueOf(b.b()));
                map.put("ad_frame", hashMap);
            } else {
                map.put("format", b.toString());
            }
        }
        map.put("slotname", this.h.h().d.a());
        map.put("js", "afma-sdk-a-v6.2.1");
        try {
            int i2 = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0).versionCode;
            CharSequence f = AdUtil.f(applicationContext);
            if (!TextUtils.isEmpty(f)) {
                map.put("mv", f);
            }
            map.put("msid", applicationContext.getPackageName());
            map.put("app_name", i2 + ".android." + applicationContext.getPackageName());
            map.put("isu", AdUtil.a(applicationContext));
            Object d = AdUtil.d(applicationContext);
            l = "net";
            if (d == null) {
                d = "null";
            }
            map.put(l, d);
            String e = AdUtil.e(applicationContext);
            if (!(e == null || e.length() == 0)) {
                map.put("cap", e);
            }
            map.put("u_audio", Integer.valueOf(AdUtil.g(applicationContext).ordinal()));
            DisplayMetrics a = AdUtil.a(activity);
            map.put("u_sd", Float.valueOf(a.density));
            map.put("u_h", Integer.valueOf(AdUtil.a(applicationContext, a)));
            map.put("u_w", Integer.valueOf(AdUtil.b(applicationContext, a)));
            map.put("hl", Locale.getDefault().getLanguage());
            if (!(this.h.h().i == null || this.h.h().i.a() == null)) {
                AdView adView = (AdView) this.h.h().i.a();
                if (adView.getParent() != null) {
                    int i3;
                    int[] iArr = new int[2];
                    adView.getLocationOnScreen(iArr);
                    int i4 = iArr[0];
                    int i5 = iArr[1];
                    DisplayMetrics displayMetrics = ((Context) this.h.h().f.a()).getResources().getDisplayMetrics();
                    i3 = (!adView.isShown() || adView.getWidth() + i4 <= 0 || adView.getHeight() + i5 <= 0 || i4 > displayMetrics.widthPixels || i5 > displayMetrics.heightPixels) ? 0 : 1;
                    Map hashMap2 = new HashMap();
                    hashMap2.put("x", Integer.valueOf(i4));
                    hashMap2.put("y", Integer.valueOf(i5));
                    hashMap2.put("width", Integer.valueOf(adView.getWidth()));
                    hashMap2.put("height", Integer.valueOf(adView.getHeight()));
                    hashMap2.put("visible", Integer.valueOf(i3));
                    map.put("ad_pos", hashMap2);
                }
            }
            StringBuilder stringBuilder = new StringBuilder();
            AdSize[] adSizeArr = (AdSize[]) this.h.h().l.a();
            if (adSizeArr != null) {
                i4 = adSizeArr.length;
                while (i < i4) {
                    AdSize adSize = adSizeArr[i];
                    if (stringBuilder.length() != 0) {
                        stringBuilder.append("|");
                    }
                    stringBuilder.append(adSize.a() + "x" + adSize.b());
                    i++;
                }
                map.put("sz", stringBuilder.toString());
            }
            TelephonyManager telephonyManager = (TelephonyManager) applicationContext.getSystemService("phone");
            map.put("carrier", telephonyManager.getNetworkOperator());
            map.put("gnt", Integer.valueOf(telephonyManager.getNetworkType()));
            if (AdUtil.c()) {
                map.put("simulator", Integer.valueOf(1));
            }
            map.put("session_id", com.google.ads.b.a().b().toString());
            map.put("seq_num", com.google.ads.b.a().c().toString());
            l = AdUtil.a(map);
            e = ((Boolean) ((com.google.ads.l.a) ((l) this.h.h().a.a()).a.a()).l.a()).booleanValue() ? g() + d() + "(" + l + ");" + h() : g() + e() + d() + "(" + l + ");" + h();
            com.google.ads.util.b.c("adRequestUrlHtml: " + e);
            return e;
        } catch (NameNotFoundException e2) {
            throw new b("NameNotFoundException");
        }
    }

    protected void a() {
        com.google.ads.util.b.a("AdLoader cancelled.");
        if (this.j != null) {
            this.j.stopLoading();
            this.j.destroy();
        }
        if (this.t != null) {
            this.t.interrupt();
            this.t = null;
        }
        if (this.g != null) {
            this.g.a();
        }
        this.o = true;
    }

    public synchronized void a(int i) {
        this.s = i;
    }

    public synchronized void a(ErrorCode errorCode) {
        this.q = errorCode;
        notify();
    }

    protected void a(ErrorCode errorCode, boolean z) {
        this.h.a(new a(this.h, this.j, this.g, errorCode, z));
    }

    protected void a(AdRequest adRequest) {
        this.i = adRequest;
        this.o = false;
        this.t = new Thread(this);
        this.t.start();
    }

    public synchronized void a(AdSize adSize) {
        this.n = adSize;
    }

    public synchronized void a(d dVar) {
        this.v = dVar;
    }

    protected synchronized void a(String str) {
        this.l.add(str);
    }

    protected synchronized void a(String str, String str2) {
        this.b = str2;
        this.c = str;
        notify();
    }

    protected synchronized void a(boolean z) {
        this.f = z;
    }

    protected void b() {
        boolean z = false;
        try {
            if (TextUtils.isEmpty(this.e)) {
                com.google.ads.util.b.b("Got a mediation response with no content type. Aborting mediation.");
                a(ErrorCode.d, false);
            } else if (this.e.startsWith("application/json")) {
                com.google.ads.c a = com.google.ads.c.a(this.c);
                a(this.d, a, this.h.i());
                this.h.a(new AnonymousClass_1(a));
            } else {
                com.google.ads.util.b.b("Got a mediation response with a content type: '" + this.e + "'. Expected something starting with 'application/json'. Aborting mediation.");
                a(ErrorCode.d, false);
            }
        } catch (JSONException e) {
            com.google.ads.util.b.b("AdLoader can't parse gWhirl server configuration.", e);
            a(ErrorCode.d, z);
        }
    }

    protected synchronized void b(String str) {
        this.e = str;
    }

    public synchronized void b(boolean z) {
        this.p = z;
    }

    protected synchronized void c_() {
        this.r = true;
        notify();
    }

    protected synchronized void c_(String str) {
        this.d = str;
    }

    public synchronized void c_(boolean z) {
        this.u = z;
    }

    public synchronized void d(String str) {
        this.k = str;
        notify();
    }

    public synchronized void d(boolean z) {
        this.a = z;
    }

    public synchronized void e(String str) {
        this.m = str;
    }

    public void run() {
        synchronized (this) {
            try {
                if (this.j == null || this.g == null) {
                    com.google.ads.util.b.e("adRequestWebView was null while trying to load an ad.");
                    a(ErrorCode.d, false);
                } else {
                    Activity activity = (Activity) this.h.h().e.a();
                    if (activity == null) {
                        com.google.ads.util.b.e("activity was null while forming an ad request.");
                        a(ErrorCode.d, false);
                    } else {
                        long elapsedRealtime;
                        long o = this.h.o();
                        long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        Map a = this.i.a((Context) this.h.h().f.a());
                        Object obj = a.get("extras");
                        if (obj instanceof Map) {
                            Map map = (Map) obj;
                            Object obj2 = map.get("_adUrl");
                            if (obj2 instanceof String) {
                                this.b = (String) obj2;
                            }
                            obj2 = map.get("_requestUrl");
                            if (obj2 instanceof String) {
                                this.k = (String) obj2;
                            }
                            obj2 = map.get("_orientation");
                            if (obj2 instanceof String) {
                                if (obj2.equals("p")) {
                                    this.s = 1;
                                } else if (obj2.equals("l")) {
                                    this.s = 0;
                                }
                            }
                            obj = map.get("_norefresh");
                            if (obj instanceof String && obj.equals("t")) {
                                this.h.d();
                            }
                        }
                        if (this.b == null) {
                            if (this.k == null) {
                                try {
                                    b(a(a, activity), f());
                                    elapsedRealtime = o - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                    if (elapsedRealtime > 0) {
                                        try {
                                            wait(elapsedRealtime);
                                        } catch (InterruptedException e) {
                                            com.google.ads.util.b.a("AdLoader InterruptedException while getting the URL: " + e);
                                        }
                                    }
                                    if (this.o) {
                                        return;
                                    } else if (this.q != null) {
                                        a(this.q, false);
                                        return;
                                    } else if (this.k == null) {
                                        com.google.ads.util.b.c("AdLoader timed out after " + o + "ms while getting the URL.");
                                        a(ErrorCode.c, false);
                                        return;
                                    }
                                } catch (b e2) {
                                    com.google.ads.util.b.c("Caught internal exception: " + e2);
                                    a(ErrorCode.d, false);
                                }
                            }
                            g m = this.h.m();
                            switch (AnonymousClass_2.a[this.v.ordinal()]) {
                                case o.MyAlertDialog_myAlertDialogAccentColor:
                                    m.r();
                                    m.u();
                                    m.x();
                                    com.google.ads.util.b.c("Request scenario: Online server request.");
                                    if (this.a) {
                                        this.b = this.k;
                                        com.google.ads.util.b.a("Using loadUrl.  adBaseUrl: " + this.b);
                                    } else {
                                        com.google.ads.util.b.a("Not using loadUrl().");
                                        this.g.a(this.u);
                                        this.g.a(this.k);
                                        elapsedRealtime = o - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                        if (elapsedRealtime > 0) {
                                            try {
                                                wait(elapsedRealtime);
                                            } catch (InterruptedException e3) {
                                                com.google.ads.util.b.a("AdLoader InterruptedException while getting the ad server's response: " + e3);
                                            }
                                        }
                                        if (!this.o) {
                                            return;
                                        } else if (this.q == null) {
                                            a(this.q, false);
                                            return;
                                        } else if (this.c == null) {
                                            com.google.ads.util.b.c("AdLoader timed out after " + o + "ms while waiting for the ad server's response.");
                                            a(ErrorCode.c, false);
                                            return;
                                        }
                                    }
                                case o.MyAlertDialog_myAlertDialogButtonDrawable:
                                    m.t();
                                    com.google.ads.util.b.c("Request scenario: Online using buffered ads.");
                                    if (this.a) {
                                        com.google.ads.util.b.a("Not using loadUrl().");
                                        this.g.a(this.u);
                                        this.g.a(this.k);
                                        elapsedRealtime = o - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                        if (elapsedRealtime > 0) {
                                            wait(elapsedRealtime);
                                        }
                                        if (!this.o) {
                                            return;
                                        } else if (this.q == null) {
                                            a(this.q, false);
                                            return;
                                        } else if (this.c == null) {
                                            com.google.ads.util.b.c("AdLoader timed out after " + o + "ms while waiting for the ad server's response.");
                                            a(ErrorCode.c, false);
                                            return;
                                        }
                                    } else {
                                        this.b = this.k;
                                        com.google.ads.util.b.a("Using loadUrl.  adBaseUrl: " + this.b);
                                    }
                                    break;
                                case o.MyAlertDialog_MAD_titleStyle:
                                    m.w();
                                    m.q();
                                    com.google.ads.util.b.c("Request scenario: Offline using buffered ads.");
                                    if (this.a) {
                                        this.b = this.k;
                                        com.google.ads.util.b.a("Using loadUrl.  adBaseUrl: " + this.b);
                                    } else {
                                        com.google.ads.util.b.a("Not using loadUrl().");
                                        this.g.a(this.u);
                                        this.g.a(this.k);
                                        elapsedRealtime = o - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                        if (elapsedRealtime > 0) {
                                            wait(elapsedRealtime);
                                        }
                                        if (!this.o) {
                                            return;
                                        } else if (this.q == null) {
                                            a(this.q, false);
                                            return;
                                        } else if (this.c == null) {
                                            com.google.ads.util.b.c("AdLoader timed out after " + o + "ms while waiting for the ad server's response.");
                                            a(ErrorCode.c, false);
                                            return;
                                        }
                                    }
                                case o.MyAlertDialog_MAD_buttonBarStyle:
                                    m.q();
                                    com.google.ads.util.b.c("Request scenario: Offline with no buffered ads.");
                                    com.google.ads.util.b.c("Network is unavailable.  Aborting ad request.");
                                    a(ErrorCode.c, false);
                                    return;
                                default:
                                    if (this.a) {
                                        com.google.ads.util.b.a("Not using loadUrl().");
                                        this.g.a(this.u);
                                        this.g.a(this.k);
                                        elapsedRealtime = o - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                        if (elapsedRealtime > 0) {
                                            wait(elapsedRealtime);
                                        }
                                        if (!this.o) {
                                            return;
                                        } else if (this.q == null) {
                                            a(this.q, false);
                                            return;
                                        } else if (this.c == null) {
                                            com.google.ads.util.b.c("AdLoader timed out after " + o + "ms while waiting for the ad server's response.");
                                            a(ErrorCode.c, false);
                                            return;
                                        }
                                    } else {
                                        this.b = this.k;
                                        com.google.ads.util.b.a("Using loadUrl.  adBaseUrl: " + this.b);
                                    }
                                    break;
                            }
                        }
                        if (!this.a && this.f) {
                            this.h.b(true);
                            b();
                            return;
                        } else if (this.e != null && (this.e.startsWith("application/json") || this.e.startsWith("text/javascript"))) {
                            com.google.ads.util.b.b("Expected HTML but received " + this.e + ".");
                            a(ErrorCode.d, false);
                            return;
                        } else if (this.h.h().l.a() != null) {
                            if (this.n == null) {
                                com.google.ads.util.b.b("Multiple supported ad sizes were specified, but the server did not respond with a size.");
                                a(ErrorCode.d, false);
                                return;
                            } else if (!Arrays.asList((Object[]) this.h.h().l.a()).contains(this.n)) {
                                com.google.ads.util.b.b("The ad server did not respond with a supported AdSize: " + this.n);
                                a(ErrorCode.d, false);
                                return;
                            }
                        } else if (this.n != null) {
                            com.google.ads.util.b.e("adSize was expected to be null in AdLoader.");
                            this.n = null;
                        }
                        this.h.b(false);
                        i();
                        elapsedRealtime = o - SystemClock.elapsedRealtime() - elapsedRealtime2;
                        if (elapsedRealtime > 0) {
                            try {
                                wait(elapsedRealtime);
                            } catch (InterruptedException e4) {
                                com.google.ads.util.b.a("AdLoader InterruptedException while loading the HTML: " + e4);
                            }
                        }
                        if (this.r) {
                            j();
                        } else {
                            com.google.ads.util.b.c("AdLoader timed out after " + o + "ms while loading the HTML.");
                            a(ErrorCode.c, true);
                        }
                    }
                }
            } catch (Throwable th) {
                com.google.ads.util.b.b("An unknown error occurred in AdLoader.", th);
                a(ErrorCode.d, true);
            }
        }
    }
}