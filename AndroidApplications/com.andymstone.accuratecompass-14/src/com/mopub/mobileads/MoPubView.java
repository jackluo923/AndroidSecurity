package com.mopub.mobileads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.webkit.WebViewDatabase;
import android.widget.FrameLayout;
import com.mopub.mobileads.factories.AdViewControllerFactory;
import com.mopub.mobileads.factories.CustomEventBannerAdapterFactory;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Map;

public class MoPubView extends FrameLayout {
    private Context a;
    protected AdViewController b;
    protected CustomEventBannerAdapter c;
    private BroadcastReceiver d;
    private boolean e;
    private LocationAwareness f;
    private int g;
    private boolean h;
    private BannerAdListener i;
    private OnAdWillLoadListener j;
    private OnAdLoadedListener k;
    private OnAdFailedListener l;
    private OnAdPresentedOverlayListener m;
    private OnAdClosedListener n;
    private OnAdClickedListener o;

    public interface BannerAdListener {
        void a(MoPubView moPubView);

        void a(MoPubView moPubView, MoPubErrorCode moPubErrorCode);

        void b(MoPubView moPubView);

        void c(MoPubView moPubView);

        void d(MoPubView moPubView);
    }

    public enum LocationAwareness {
        LOCATION_AWARENESS_NORMAL,
        LOCATION_AWARENESS_TRUNCATED,
        LOCATION_AWARENESS_DISABLED;

        static {
            a = new com.mopub.mobileads.MoPubView.LocationAwareness("LOCATION_AWARENESS_NORMAL", 0);
            b = new com.mopub.mobileads.MoPubView.LocationAwareness("LOCATION_AWARENESS_TRUNCATED", 1);
            c = new com.mopub.mobileads.MoPubView.LocationAwareness("LOCATION_AWARENESS_DISABLED", 2);
            d = new com.mopub.mobileads.MoPubView.LocationAwareness[]{a, b, c};
        }
    }

    @Deprecated
    public interface OnAdClickedListener {
        void a(MoPubView moPubView);
    }

    @Deprecated
    public interface OnAdClosedListener {
        void a(MoPubView moPubView);
    }

    @Deprecated
    public interface OnAdFailedListener {
        void a(MoPubView moPubView);
    }

    @Deprecated
    public interface OnAdLoadedListener {
        void a(MoPubView moPubView);
    }

    @Deprecated
    public interface OnAdPresentedOverlayListener {
        void a(MoPubView moPubView);
    }

    @Deprecated
    public interface OnAdWillLoadListener {
    }

    public MoPubView(Context context) {
        this(context, null);
    }

    public MoPubView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = false;
        this.a = context;
        this.e = getVisibility() == 0;
        this.f = LocationAwareness.a;
        this.g = 6;
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        if (WebViewDatabase.getInstance(context) == null) {
            Log.e("MoPub", "Disabling MoPub. Local cache file is inaccessible so MoPub will fail if we try to create a WebView. Details of this Android bug found at:http://code.google.com/p/android/issues/detail?id=10789");
        } else {
            a(context);
            a();
        }
    }

    private void a() {
        if (this.b != null) {
            this.d = new BroadcastReceiver() {
                public void onReceive(Context context, Intent intent) {
                    if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                        if (MoPubView.this.e) {
                            Log.d("MoPub", "Screen sleep with ad in foreground, disable refresh");
                            if (MoPubView.this.b != null) {
                                MoPubView.this.h = MoPubView.this.b.k();
                                MoPubView.this.b.a(false);
                            }
                        } else {
                            Log.d("MoPub", "Screen sleep but ad in background; refresh should already be disabled");
                        }
                    } else if (!intent.getAction().equals("android.intent.action.USER_PRESENT")) {
                    } else {
                        if (MoPubView.this.e) {
                            Log.d("MoPub", "Screen wake / ad in foreground, reset refresh");
                            if (MoPubView.this.b != null) {
                                MoPubView.this.b.a(MoPubView.this.h);
                            }
                        } else {
                            Log.d("MoPub", "Screen wake but ad in background; don't enable refresh");
                        }
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.a.registerReceiver(this.d, intentFilter);
        }
    }

    private void a(Context context) {
        if (new Integer(VERSION.SDK).intValue() < 7) {
            this.b = AdViewControllerFactory.a(context, this);
        } else {
            try {
                try {
                    this.b = (AdViewController) Class.forName("com.mopub.mobileads.HTML5AdView").getConstructor(new Class[]{Context.class, MoPubView.class}).newInstance(new Object[]{context, this});
                } catch (SecurityException e) {
                    Log.e("MoPub", "Could not load HTML5AdView.");
                } catch (NoSuchMethodException e2) {
                    Log.e("MoPub", "Could not load HTML5AdView.");
                } catch (IllegalArgumentException e3) {
                    Log.e("MoPub", "Could not load HTML5AdView.");
                } catch (InstantiationException e4) {
                    Log.e("MoPub", "Could not load HTML5AdView.");
                } catch (IllegalAccessException e5) {
                    Log.e("MoPub", "Could not load HTML5AdView.");
                } catch (InvocationTargetException e6) {
                    Log.e("MoPub", "Could not load HTML5AdView.");
                }
                if (this.b == null) {
                    this.b = AdViewControllerFactory.a(context, this);
                }
            } catch (ClassNotFoundException e7) {
                this.b = AdViewControllerFactory.a(context, this);
            }
        }
    }

    private void k() {
        try {
            this.a.unregisterReceiver(this.d);
        } catch (Exception e) {
            Log.d("MoPub", "Failed to unregister screen state broadcast receiver (never registered).");
        }
    }

    protected void a(MoPubErrorCode moPubErrorCode) {
        if (this.i != null) {
            this.i.a(this, moPubErrorCode);
        } else if (this.l != null) {
            this.l.a(this);
        }
    }

    protected void a(Map map) {
        if (map == null) {
            Log.d("MoPub", "Couldn't invoke custom event because the server did not specify one.");
            b(MoPubErrorCode.e);
        } else {
            if (this.c != null) {
                this.c.e();
            }
            Log.d("MoPub", "Loading custom event adapter.");
            this.c = CustomEventBannerAdapterFactory.a(this, (String) map.get("X-Custom-Event-Class-Name"), (String) map.get("X-Custom-Event-Class-Data"));
            this.c.d();
        }
    }

    public void b() {
        if (this.b != null) {
            this.b.b();
        }
    }

    protected void b(MoPubErrorCode moPubErrorCode) {
        if (this.b != null) {
            this.b.a(moPubErrorCode);
        }
    }

    public void c() {
        k();
        removeAllViews();
        if (this.b != null) {
            this.b.n();
            this.b = null;
        }
        if (this.c != null) {
            this.c.e();
            this.c = null;
        }
    }

    protected void d() {
        if (this.b != null) {
            this.b.q();
            i();
        }
    }

    protected void e() {
        Log.d("MoPub", "Tracking impression for native adapter.");
        if (this.b != null) {
            this.b.p();
        }
    }

    protected void f() {
        Log.d("MoPub", "adLoaded");
        if (this.i != null) {
            this.i.d(this);
        } else if (this.k != null) {
            this.k.a(this);
        }
    }

    protected void g() {
        if (this.i != null) {
            this.i.c(this);
        } else if (this.m != null) {
            this.m.a(this);
        }
    }

    public Activity getActivity() {
        return (Activity) this.a;
    }

    public int getAdHeight() {
        return this.b != null ? this.b.h() : 0;
    }

    public int getAdWidth() {
        return this.b != null ? this.b.g() : 0;
    }

    public boolean getAutorefreshEnabled() {
        if (this.b != null) {
            return this.b.k();
        }
        Log.d("MoPub", "Can't get autorefresh status for destroyed MoPubView. Returning false.");
        return false;
    }

    public BannerAdListener getBannerAdListener() {
        return this.i;
    }

    public String getClickthroughUrl() {
        return this.b != null ? this.b.i() : null;
    }

    public String getKeywords() {
        return this.b != null ? this.b.d() : null;
    }

    public Map getLocalExtras() {
        return this.b != null ? this.b.t() : Collections.emptyMap();
    }

    public Location getLocation() {
        return this.b != null ? this.b.e() : null;
    }

    public LocationAwareness getLocationAwareness() {
        return this.f;
    }

    public int getLocationPrecision() {
        return this.g;
    }

    public String getResponseString() {
        return this.b != null ? this.b.j() : null;
    }

    public boolean getTesting() {
        if (this.b != null) {
            return this.b.l();
        }
        Log.d("MoPub", "Can't get testing status for destroyed MoPubView. Returning false.");
        return false;
    }

    protected void h() {
        if (this.i != null) {
            this.i.b(this);
        } else if (this.n != null) {
            this.n.a(this);
        }
    }

    protected void i() {
        if (this.i != null) {
            this.i.a(this);
        } else if (this.o != null) {
            this.o.a(this);
        }
    }

    protected void j() {
        if (this.b != null) {
            this.b.s();
        }
        f();
    }

    protected void onWindowVisibilityChanged(int i) {
        if (this.b != null) {
            if (i == 0) {
                Log.d("MoPub", new StringBuilder("Ad Unit (").append(this.b.f()).append(") going visible: enabling refresh").toString());
                this.e = true;
                this.b.a(true);
            } else {
                Log.d("MoPub", new StringBuilder("Ad Unit (").append(this.b.f()).append(") going invisible: disabling refresh").toString());
                this.e = false;
                this.b.a(false);
            }
        }
    }

    public void setAdContentView(View view) {
        if (this.b != null) {
            this.b.b(view);
        }
    }

    public void setAdUnitId(String str) {
        if (this.b != null) {
            this.b.d(str);
        }
    }

    public void setAutorefreshEnabled(boolean z) {
        if (this.b != null) {
            this.b.a(z);
        }
    }

    public void setBannerAdListener(BannerAdListener bannerAdListener) {
        this.i = bannerAdListener;
    }

    public void setClickthroughUrl(String str) {
        if (this.b != null) {
            this.b.e(str);
        }
    }

    public void setKeywords(String str) {
        if (this.b != null) {
            this.b.c(str);
        }
    }

    public void setLocalExtras(Map map) {
        if (this.b != null) {
            this.b.a(map);
        }
    }

    public void setLocation(Location location) {
        if (this.b != null) {
            this.b.a(location);
        }
    }

    public void setLocationAwareness(LocationAwareness locationAwareness) {
        this.f = locationAwareness;
    }

    public void setLocationPrecision(int i) {
        if (i < 0) {
            i = 0;
        }
        this.g = i;
    }

    @Deprecated
    public void setOnAdClickedListener(OnAdClickedListener onAdClickedListener) {
        this.o = onAdClickedListener;
    }

    @Deprecated
    public void setOnAdClosedListener(OnAdClosedListener onAdClosedListener) {
        this.n = onAdClosedListener;
    }

    @Deprecated
    public void setOnAdFailedListener(OnAdFailedListener onAdFailedListener) {
        this.l = onAdFailedListener;
    }

    @Deprecated
    public void setOnAdLoadedListener(OnAdLoadedListener onAdLoadedListener) {
        this.k = onAdLoadedListener;
    }

    @Deprecated
    public void setOnAdPresentedOverlayListener(OnAdPresentedOverlayListener onAdPresentedOverlayListener) {
        this.m = onAdPresentedOverlayListener;
    }

    @Deprecated
    public void setOnAdWillLoadListener(OnAdWillLoadListener onAdWillLoadListener) {
        this.j = onAdWillLoadListener;
    }

    public void setTesting(boolean z) {
        if (this.b != null) {
            this.b.b(z);
        }
    }

    public void setTimeout(int i) {
        if (this.b != null) {
            this.b.a(i);
        }
    }
}