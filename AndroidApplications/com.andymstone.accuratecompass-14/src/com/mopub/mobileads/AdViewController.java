package com.mopub.mobileads;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout.LayoutParams;
import com.andymstone.core.o;
import com.mopub.mobileads.MoPubView.LocationAwareness;
import com.mopub.mobileads.factories.AdFetcherFactory;
import com.mopub.mobileads.factories.HtmlBannerWebViewFactory;
import com.mopub.mobileads.factories.HtmlInterstitialWebViewFactory;
import com.mopub.mobileads.factories.HttpClientFactory;
import com.mopub.mobileads.util.Dips;
import com.mopub.mobileads.util.HttpResponses;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;

public class AdViewController {
    private static final LayoutParams a;
    private static WeakHashMap b;
    private final Context c;
    private MoPubView d;
    private Map e;
    private final AdUrlGenerator f;
    private boolean g;
    private final String h;
    private AdFetcher i;
    private final Runnable j;
    private String k;
    private String l;
    private String m;
    private int n;
    private int o;
    private int p;
    private String q;
    private String r;
    private Location s;
    private boolean t;
    private String u;
    private boolean v;
    private Handler w;
    private boolean x;
    private String y;
    private String z;

    static {
        a = new LayoutParams(-2, -2, 17);
        b = new WeakHashMap();
    }

    public AdViewController(Context context, MoPubView moPubView) {
        this.c = context;
        this.d = moPubView;
        this.e = new HashMap();
        this.f = new AdUrlGenerator(context);
        this.g = true;
        this.j = new Runnable() {
            public void run() {
                AdViewController.this.b();
            }
        };
        this.h = new WebView(context).getSettings().getUserAgentString();
        this.i = AdFetcherFactory.a(this, this.h);
        HtmlBannerWebViewFactory.a(context);
        HtmlInterstitialWebViewFactory.a(context);
        this.w = new Handler();
    }

    protected static void a(View view) {
        b.put(view, Boolean.valueOf(true));
    }

    private static boolean c(View view) {
        return b.get(view) != null;
    }

    private LayoutParams d(View view) {
        return (!c(view) || this.n <= 0 || this.o <= 0) ? a : new LayoutParams(Dips.b((float) this.n, this.c), Dips.b((float) this.o, this.c), 17);
    }

    private void u() {
        this.w.removeCallbacks(this.j);
    }

    private String v() {
        return this.t ? "testing.ads.mopub.com" : "ads.mopub.com";
    }

    private boolean w() {
        if (this.c.checkCallingPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
            return true;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.c.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private Location x() {
        LocationAwareness locationAwareness = a().getLocationAwareness();
        int locationPrecision = a().getLocationPrecision();
        if (locationAwareness == LocationAwareness.c) {
            return null;
        }
        LocationManager locationManager = (LocationManager) this.c.getSystemService("location");
        try {
            Location lastKnownLocation = locationManager.getLastKnownLocation("gps");
        } catch (SecurityException e) {
            Log.d("MoPub", "Failed to retrieve GPS location: access appears to be disabled.");
            lastKnownLocation = null;
        } catch (IllegalArgumentException e2) {
            Log.d("MoPub", "Failed to retrieve GPS location: device has no GPS provider.");
            lastKnownLocation = null;
        }
        try {
            Location lastKnownLocation2 = locationManager.getLastKnownLocation("network");
        } catch (SecurityException e3) {
            Log.d("MoPub", "Failed to retrieve network location: access appears to be disabled.");
            lastKnownLocation2 = null;
        } catch (IllegalArgumentException e4) {
            Log.d("MoPub", "Failed to retrieve network location: device has no network provider.");
            lastKnownLocation2 = null;
        }
        if (lastKnownLocation == null && lastKnownLocation2 == null) {
            return null;
        }
        if (lastKnownLocation == null || lastKnownLocation2 == null) {
            if (lastKnownLocation == null) {
                lastKnownLocation = lastKnownLocation2;
            }
        } else if (lastKnownLocation.getTime() <= lastKnownLocation2.getTime()) {
            lastKnownLocation = lastKnownLocation2;
        }
        if (locationAwareness == LocationAwareness.b) {
            lastKnownLocation.setLatitude(BigDecimal.valueOf(lastKnownLocation.getLatitude()).setScale(locationPrecision, o.MyAlertDialog_MAD_textAppearanceMedium).doubleValue());
            lastKnownLocation.setLongitude(BigDecimal.valueOf(lastKnownLocation.getLongitude()).setScale(locationPrecision, o.MyAlertDialog_MAD_textAppearanceMedium).doubleValue());
        }
        return lastKnownLocation;
    }

    public MoPubView a() {
        return this.d;
    }

    public void a(int i) {
        if (this.i != null) {
            this.i.a(i);
        }
    }

    public void a(Location location) {
        this.s = location;
    }

    void a(MoPubErrorCode moPubErrorCode) {
        this.x = false;
        Log.v("MoPub", new StringBuilder("MoPubErrorCode: ").append(moPubErrorCode == null ? "" : moPubErrorCode.toString()).toString());
        if (this.y != null) {
            Log.d("MoPub", new StringBuilder("Loading failover url: ").append(this.y).toString());
            a(this.y);
        } else {
            b(MoPubErrorCode.a);
        }
    }

    void a(String str) {
        if (str != null) {
            Log.d("MoPub", new StringBuilder("Loading url: ").append(str).toString());
            if (this.x) {
                Log.i("MoPub", new StringBuilder("Already loading an ad for ").append(this.q).append(", wait to finish.").toString());
            } else {
                this.z = str;
                this.y = null;
                this.x = true;
                f(this.z);
            }
        }
    }

    void a(Map map) {
        this.e = map != null ? new HashMap(map) : new HashMap();
    }

    void a(HttpResponse httpResponse) {
        String a = HttpResponses.a(httpResponse, "X-Networktype");
        if (a != null) {
            Log.i("MoPub", new StringBuilder("Fetching ad network type: ").append(a).toString());
        }
        this.k = HttpResponses.a(httpResponse, "X-Launchpage");
        this.l = HttpResponses.a(httpResponse, "X-Clickthrough");
        b(HttpResponses.a(httpResponse, "X-Failurl"));
        this.m = HttpResponses.a(httpResponse, "X-Imptracker");
        this.n = HttpResponses.b(httpResponse, "X-Width");
        this.o = HttpResponses.b(httpResponse, "X-Height");
        if (httpResponse.containsHeader("X-Refreshtime")) {
            this.p = HttpResponses.b(httpResponse, "X-Refreshtime") * 1000;
            this.p = Math.max(this.p, 10000);
        } else {
            this.p = 0;
        }
    }

    public void a(boolean z) {
        this.g = z;
        Log.d("MoPub", new StringBuilder("Automatic refresh for ").append(this.q).append(" set to: ").append(z).append(".").toString());
        if (this.g) {
            s();
        } else {
            u();
        }
    }

    public void b() {
        if (this.q == null) {
            Log.d("MoPub", "Can't load an ad in this ad view because the ad unit ID is null. Did you forget to call setAdUnitId()?");
        } else if (w()) {
            if (this.s == null) {
                this.s = x();
            }
            a(r());
        } else {
            Log.d("MoPub", "Can't load an ad because there is no network connectivity.");
            s();
        }
    }

    void b(int i) {
        this.p = i;
    }

    void b(View view) {
        a().removeAllViews();
        a().addView(view, d(view));
    }

    void b(MoPubErrorCode moPubErrorCode) {
        Log.i("MoPub", "Ad failed to load.");
        c();
        s();
        a().a(moPubErrorCode);
    }

    void b(String str) {
        this.y = str;
    }

    public void b(boolean z) {
        this.t = z;
    }

    void c() {
        this.x = false;
    }

    public void c(String str) {
        this.r = str;
    }

    public String d() {
        return this.r;
    }

    public void d(String str) {
        this.q = str;
    }

    public Location e() {
        return this.s;
    }

    public void e(String str) {
        this.l = str;
    }

    public String f() {
        return this.q;
    }

    void f(String str) {
        if (this.i != null) {
            this.i.a(str);
        }
    }

    public int g() {
        return this.n;
    }

    public int h() {
        return this.o;
    }

    public String i() {
        return this.l;
    }

    public String j() {
        return this.u;
    }

    public boolean k() {
        return this.g;
    }

    public boolean l() {
        return this.t;
    }

    boolean m() {
        return this.v;
    }

    void n() {
        if (!this.v) {
            a(false);
            u();
            this.i.b();
            this.i = null;
            HtmlBannerWebViewFactory.a();
            HtmlInterstitialWebViewFactory.a();
            this.e = null;
            this.u = null;
            this.d = null;
            this.v = true;
        }
    }

    int o() {
        return this.p;
    }

    void p() {
        new Thread(new Runnable() {
            public void run() {
                if (AdViewController.this.m != null) {
                    DefaultHttpClient a = HttpClientFactory.a();
                    try {
                        HttpUriRequest httpGet = new HttpGet(AdViewController.this.m);
                        httpGet.addHeader("User-Agent", AdViewController.this.h);
                        a.execute(httpGet);
                        a.getConnectionManager().shutdown();
                    } catch (Exception e) {
                        Log.d("MoPub", new StringBuilder("Impression tracking failed : ").append(AdViewController.this.m).toString(), e);
                        a.getConnectionManager().shutdown();
                    }
                }
            }
        }).start();
    }

    void q() {
        new Thread(new Runnable() {
            public void run() {
                if (AdViewController.this.l != null) {
                    DefaultHttpClient a = HttpClientFactory.a();
                    try {
                        Log.d("MoPub", new StringBuilder("Tracking click for: ").append(AdViewController.this.l).toString());
                        HttpUriRequest httpGet = new HttpGet(AdViewController.this.l);
                        httpGet.addHeader("User-Agent", AdViewController.this.h);
                        a.execute(httpGet);
                        a.getConnectionManager().shutdown();
                    } catch (Exception e) {
                        Log.d("MoPub", new StringBuilder("Click tracking failed: ").append(AdViewController.this.l).toString(), e);
                        a.getConnectionManager().shutdown();
                    }
                }
            }
        }).start();
    }

    String r() {
        return this.f.a(this.q).b(this.r).a(this.s).c(v());
    }

    void s() {
        u();
        if (this.g && this.p > 0) {
            this.w.postDelayed(this.j, (long) this.p);
        }
    }

    Map t() {
        return this.e != null ? new HashMap(this.e) : new HashMap();
    }
}