package com.google.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import com.google.ads.AdRequest;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.l;
import com.google.ads.searchads.SearchAdRequest;
import com.google.ads.util.AdUtil;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;

public class c implements Runnable {
    private String a;
    private String b;
    private String c;
    private String d;
    private boolean e;
    private f f;
    private d g;
    private AdRequest h;
    private WebView i;
    private String j;
    private LinkedList<String> k;
    private String l;
    private volatile boolean m;
    private boolean n;
    private ErrorCode o;
    private boolean p;
    private int q;
    private Thread r;
    private boolean s;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ com.google.ads.c a;

        AnonymousClass_1(com.google.ads.c cVar) {
            this.a = cVar;
        }

        public void run() {
            c.this.g.a(this.a);
        }
    }

    private static class a implements Runnable {
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
                AdWebView j = this.a.j();
                j.stopLoading();
                j.setVisibility(8);
            }
            this.a.a(this.d);
        }
    }

    private class b extends Exception {
        public b(String str) {
            super(str);
        }
    }

    private class c implements Runnable {
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

    private class d extends Exception {
        public d(String str) {
            super(str);
        }
    }

    private static class e implements Runnable {
        private final d a;
        private final LinkedList<String> b;
        private final int c;
        private final boolean d;
        private final String e;

        public e(d dVar, LinkedList<String> linkedList, int i, boolean z, String str) {
            this.a = dVar;
            this.b = linkedList;
            this.c = i;
            this.d = z;
            this.e = str;
        }

        public void run() {
            this.a.a(this.b);
            this.a.a(this.c);
            this.a.a(this.d);
            if (!TextUtils.isEmpty(this.e)) {
                this.a.a(this.e);
            }
            this.a.B();
        }
    }

    protected c() {
    }

    public c(d dVar) {
        this.g = dVar;
        this.j = null;
        this.a = null;
        this.b = null;
        this.c = null;
        this.k = new LinkedList();
        this.o = null;
        this.p = false;
        this.q = -1;
        this.e = false;
        this.n = false;
        this.l = null;
        if (((Activity) dVar.g().c.a()) != null) {
            this.i = new AdWebView(dVar.g(), null);
            this.i.setWebViewClient(i.a(dVar, a.b, false, false));
            this.i.setVisibility(8);
            this.i.setWillNotDraw(true);
            this.f = new f(this, dVar);
        } else {
            this.i = null;
            this.f = null;
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

    private String d() {
        return this.h instanceof SearchAdRequest ? "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>" : "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>";
    }

    private void e() {
        WebView j = this.g.j();
        this.g.k().c(true);
        this.g.a(new c(j, this.a, this.b));
    }

    private void f() {
        this.g.a(new e(this.g, this.k, this.q, this.n, this.l));
    }

    private void f(String str) {
        this.g.a(new c(this.i, null, str));
    }

    public String a(Map map, Activity activity) throws b, d {
        Context applicationContext = activity.getApplicationContext();
        g l = this.g.l();
        long h = l.h();
        if (h > 0) {
            map.put("prl", Long.valueOf(h));
        }
        String g = l.g();
        if (g != null) {
            map.put("ppcl", g);
        }
        g = l.f();
        if (g != null) {
            map.put("pcl", g);
        }
        h = l.e();
        if (h > 0) {
            map.put("pcc", Long.valueOf(h));
        }
        map.put("preqs", Long.valueOf(l.i()));
        g = l.j();
        if (g != null) {
            map.put("pai", g);
        }
        if (l.k()) {
            map.put("aoi_timeout", "true");
        }
        if (l.m()) {
            map.put("aoi_nofill", "true");
        }
        g = l.p();
        if (g != null) {
            map.put("pit", g);
        }
        map.put("ptime", Long.valueOf(g.q()));
        l.a();
        l.d();
        if (this.g.g().b()) {
            map.put("format", "interstitial_mb");
        } else {
            AdSize b = ((h) this.g.g().i.a()).b();
            if (b.isFullWidth()) {
                map.put("smart_w", "full");
            }
            if (b.isAutoHeight()) {
                map.put("smart_h", "auto");
            }
            if (b.isCustomAdSize()) {
                Map hashMap = new HashMap();
                hashMap.put("w", Integer.valueOf(b.getWidth()));
                hashMap.put("h", Integer.valueOf(b.getHeight()));
                map.put("ad_frame", hashMap);
            } else {
                map.put("format", b.toString());
            }
        }
        map.put("slotname", this.g.g().b.a());
        map.put("js", "afma-sdk-a-v6.0.1");
        try {
            int i = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0).versionCode;
            CharSequence f = AdUtil.f(applicationContext);
            if (!TextUtils.isEmpty(f)) {
                map.put("mv", f);
            }
            map.put("msid", applicationContext.getPackageName());
            map.put("app_name", i + ".android." + applicationContext.getPackageName());
            map.put("isu", AdUtil.a(applicationContext));
            String d = AdUtil.d(applicationContext);
            if (d == null) {
                throw new d("NETWORK_ERROR");
            }
            map.put("net", d);
            d = AdUtil.e(applicationContext);
            if (!(d == null || d.length() == 0)) {
                map.put("cap", d);
            }
            map.put("u_audio", Integer.valueOf(AdUtil.g(applicationContext).ordinal()));
            DisplayMetrics a = AdUtil.a(activity);
            map.put("u_sd", Float.valueOf(a.density));
            map.put("u_h", Integer.valueOf(AdUtil.a(applicationContext, a)));
            map.put("u_w", Integer.valueOf(AdUtil.b(applicationContext, a)));
            map.put("hl", Locale.getDefault().getLanguage());
            map.put("carrier", ((TelephonyManager) applicationContext.getSystemService("phone")).getNetworkOperator());
            if (AdUtil.c()) {
                map.put("simulator", Integer.valueOf(1));
            }
            map.put("session_id", com.google.ads.b.a().b().toString());
            map.put("seq_num", com.google.ads.b.a().c().toString());
            String a2 = AdUtil.a(map);
            d = ((Boolean) ((com.google.ads.l.a) ((l) this.g.g().a.a()).a.a()).l.a()).booleanValue() ? d() + "AFMA_buildAdURL" + "(" + a2 + ");" + "</script></head><body></body></html>" : d() + "AFMA_getSdkConstants();" + "AFMA_buildAdURL" + "(" + a2 + ");" + "</script></head><body></body></html>";
            com.google.ads.util.b.c("adRequestUrlHtml: " + d);
            return d;
        } catch (NameNotFoundException e) {
            throw new b("NameNotFoundException");
        }
    }

    protected void a() {
        com.google.ads.util.b.a("AdLoader cancelled.");
        this.i.stopLoading();
        this.i.destroy();
        if (this.r != null) {
            this.r.interrupt();
            this.r = null;
        }
        this.f.a();
        this.m = true;
    }

    public synchronized void a(int i) {
        this.q = i;
    }

    public synchronized void a(ErrorCode errorCode) {
        this.o = errorCode;
        notify();
    }

    protected void a(ErrorCode errorCode, boolean z) {
        this.f.a();
        this.g.a(new a(this.g, this.i, this.f, errorCode, z));
    }

    protected void a(AdRequest adRequest) {
        this.h = adRequest;
        this.m = false;
        this.r = new Thread(this);
        this.r.start();
    }

    protected synchronized void a(String str) {
        this.k.add(str);
    }

    protected synchronized void a(String str, String str2) {
        this.a = str2;
        this.b = str;
        notify();
    }

    protected synchronized void a(boolean z) {
        this.e = z;
    }

    protected void b() {
        boolean z = false;
        try {
            if (TextUtils.isEmpty(this.d)) {
                com.google.ads.util.b.b("Got a mediation response with no content type. Aborting mediation.");
                a(ErrorCode.INTERNAL_ERROR, false);
            } else if (this.d.startsWith("application/json")) {
                com.google.ads.c a = com.google.ads.c.a(this.b);
                a(this.c, a, this.g.h());
                this.g.a(new AnonymousClass_1(a));
            } else {
                com.google.ads.util.b.b("Got a mediation response with a content type: '" + this.d + "'. Expected something starting with 'application/json'. Aborting mediation.");
                a(ErrorCode.INTERNAL_ERROR, false);
            }
        } catch (JSONException e) {
            com.google.ads.util.b.b("AdLoader can't parse gWhirl server configuration.", e);
            a(ErrorCode.INTERNAL_ERROR, z);
        }
    }

    protected synchronized void b(String str) {
        this.d = str;
    }

    public synchronized void b(boolean z) {
        this.n = z;
    }

    protected synchronized void c_() {
        this.p = true;
        notify();
    }

    protected synchronized void c_(String str) {
        this.c = str;
    }

    public void c_(boolean z) {
        this.s = z;
    }

    public synchronized void d(String str) {
        this.j = str;
        notify();
    }

    public void e(String str) {
        this.l = str;
    }

    public void run() {
        synchronized (this) {
            try {
                if (this.i == null || this.f == null) {
                    com.google.ads.util.b.e("adRequestWebView was null while trying to load an ad.");
                    a(ErrorCode.INTERNAL_ERROR, false);
                } else {
                    Activity activity = (Activity) this.g.g().c.a();
                    if (activity == null) {
                        com.google.ads.util.b.e("activity was null while forming an ad request.");
                        a(ErrorCode.INTERNAL_ERROR, false);
                    } else {
                        long elapsedRealtime;
                        long n = this.g.n();
                        long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        Map requestMap = this.h.getRequestMap((Context) this.g.g().d.a());
                        Object obj = requestMap.get("extras");
                        if (obj instanceof Map) {
                            Map map = (Map) obj;
                            Object obj2 = map.get("_adUrl");
                            if (obj2 instanceof String) {
                                this.a = (String) obj2;
                            }
                            obj2 = map.get("_orientation");
                            if (obj2 instanceof String) {
                                if (obj2.equals("p")) {
                                    this.q = 1;
                                } else if (obj2.equals("l")) {
                                    this.q = 0;
                                }
                            }
                            obj = map.get("_norefresh");
                            if (obj instanceof String && obj.equals("t")) {
                                this.g.d();
                            }
                        }
                        if (this.a == null) {
                            try {
                                f(a(requestMap, activity));
                                elapsedRealtime = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                if (elapsedRealtime > 0) {
                                    try {
                                        wait(elapsedRealtime);
                                    } catch (InterruptedException e) {
                                        com.google.ads.util.b.a("AdLoader InterruptedException while getting the URL: " + e);
                                    }
                                }
                                if (this.m) {
                                    return;
                                } else if (this.o != null) {
                                    a(this.o, false);
                                    return;
                                } else if (this.j == null) {
                                    com.google.ads.util.b.c("AdLoader timed out after " + n + "ms while getting the URL.");
                                    a(ErrorCode.NETWORK_ERROR, false);
                                    return;
                                } else {
                                    this.f.a(this.s);
                                    this.f.a(this.j);
                                    elapsedRealtime = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                                    if (elapsedRealtime > 0) {
                                        try {
                                            wait(elapsedRealtime);
                                        } catch (InterruptedException e2) {
                                            com.google.ads.util.b.a("AdLoader InterruptedException while getting the ad server's response: " + e2);
                                        }
                                    }
                                    if (this.m) {
                                        return;
                                    } else if (this.o != null) {
                                        a(this.o, false);
                                        return;
                                    } else if (this.b == null) {
                                        com.google.ads.util.b.c("AdLoader timed out after " + n + "ms while waiting for the ad server's response.");
                                        a(ErrorCode.NETWORK_ERROR, false);
                                        return;
                                    }
                                }
                            } catch (d e3) {
                                com.google.ads.util.b.c("Unable to connect to network: " + e3);
                                a(ErrorCode.NETWORK_ERROR, false);
                            } catch (b e4) {
                                com.google.ads.util.b.c("Caught internal exception: " + e4);
                                a(ErrorCode.INTERNAL_ERROR, false);
                            }
                        }
                        if (this.e) {
                            this.g.b(true);
                            b();
                        } else if (this.d == null || !(this.d.startsWith("application/json") || this.d.startsWith("text/javascript"))) {
                            this.g.b(false);
                            e();
                            elapsedRealtime = n - SystemClock.elapsedRealtime() - elapsedRealtime2;
                            if (elapsedRealtime > 0) {
                                try {
                                    wait(elapsedRealtime);
                                } catch (InterruptedException e5) {
                                    com.google.ads.util.b.a("AdLoader InterruptedException while loading the HTML: " + e5);
                                }
                            }
                            if (this.p) {
                                f();
                            } else {
                                com.google.ads.util.b.c("AdLoader timed out after " + n + "ms while loading the HTML.");
                                a(ErrorCode.NETWORK_ERROR, true);
                            }
                        } else {
                            com.google.ads.util.b.b("Expected HTML but received " + this.d + ".");
                            a(ErrorCode.INTERNAL_ERROR, false);
                        }
                    }
                }
            } catch (Throwable th) {
                com.google.ads.util.b.b("An unknown error occurred in AdLoader.", th);
                a(ErrorCode.INTERNAL_ERROR, true);
            }
        }
    }
}