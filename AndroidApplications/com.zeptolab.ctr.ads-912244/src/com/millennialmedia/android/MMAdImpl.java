package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.RelativeLayout.LayoutParams;
import com.brightcove.player.event.Event;
import com.brightcove.player.media.MediaService;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

abstract class MMAdImpl implements MMAd {
    private static long a = 0;
    static final String b = "b";
    static final String c = "i";
    private static final String s = "MMAdImpl";
    protected MMRequest d;
    RequestListener e;
    boolean f;
    String g;
    String h;
    String i;
    long j;
    long k;
    boolean l;
    WeakReference m;
    MMAdImplController n;
    MMWebViewClient o;
    MMWebViewClientListener p;
    long q;
    JSONObject r;

    static class MMAdImplRedirectionListenerImpl extends RedirectionListenerImpl {
        WeakReference f;

        public MMAdImplRedirectionListenerImpl(MMAdImpl mMAdImpl) {
            if (mMAdImpl != null) {
                this.f = new WeakReference(mMAdImpl);
                this.e = mMAdImpl.k;
            }
        }

        public boolean isActivityStartable(Uri uri) {
            MMAdImpl mMAdImpl = (MMAdImpl) this.f.get();
            if (mMAdImpl != null) {
                Context j = mMAdImpl.j();
                if (j != null && j instanceof Activity && ((Activity) j).isFinishing()) {
                    return false;
                }
            }
            return true;
        }

        public void startingActivity(Uri uri) {
            super.startingActivity(uri);
            if (uri.getScheme().equalsIgnoreCase(MediaService.DEFAULT_MEDIA_DELIVERY) || uri.getScheme().equalsIgnoreCase("https")) {
                MMAdImpl mMAdImpl = (MMAdImpl) this.f.get();
                if (mMAdImpl != null) {
                    Event.d(mMAdImpl);
                }
            }
        }

        public void updateLastVideoViewedTime() {
            MMAdImpl mMAdImpl = (MMAdImpl) this.f.get();
            if (mMAdImpl != null && mMAdImpl.h != null) {
                HandShake.a(mMAdImpl.j()).c(mMAdImpl.j(), mMAdImpl.h);
            }
        }
    }

    static class BasicWebViewClientListener extends MMWebViewClientListener {
        WeakReference a;

        BasicWebViewClientListener(MMAdImpl mMAdImpl) {
            this.a = new WeakReference(mMAdImpl);
        }

        void a(String str) {
            MMAdImpl mMAdImpl = (MMAdImpl) this.a.get();
            if (mMAdImpl != null) {
                mMAdImpl.setClickable(false);
            }
        }

        public void onPageFinished(String str) {
            MMAdImpl mMAdImpl = (MMAdImpl) this.a.get();
            if (mMAdImpl != null) {
                mMAdImpl.setClickable(true);
                if (mMAdImpl.n != null && mMAdImpl.n.c != null) {
                    synchronized (mMAdImpl.n.c) {
                        if (mMAdImpl.n.c.hasWindowFocus()) {
                            mMAdImpl.n.c.r();
                        } else {
                            mMAdImpl.n.c.q();
                        }
                    }
                }
            }
        }
    }

    static {
        a = 1;
    }

    public MMAdImpl(Context context) {
        this.f = false;
        this.g = MMSDK.DEFAULT_APID;
        this.m = new WeakReference(context);
        this.p = new BasicWebViewClientListener(this);
        synchronized (MMAdImpl.class) {
            this.k = a;
            a++;
            MMLog.a(s, String.format("Assigning MMAdImpl internal id: %d", new Object[]{Long.valueOf(this.k)}));
        }
    }

    static String[] l() {
        return new String[]{b, c};
    }

    void a() {
    }

    void a(Bitmap bitmap) {
    }

    void a(Map map) {
        Context j = j();
        map.put("apid", this.g);
        map.put("do", MMSDK.v(j));
        map.put("olock", MMSDK.w(j));
        if (!hasCachedVideoSupport()) {
            map.put("cachedvideo", "false");
        }
        map.put("reqtype", o());
        if (this.d != null) {
            this.d.a(map);
        }
        if (HandShake.a(j).b(j, this.h)) {
            map.put(Event.VIDEO, "true");
        } else {
            map.put(Event.VIDEO, "false");
        }
        if (this.h == null) {
            MMLog.e(s, "******* SDK DEFAULTED TO MMBannerAdBottom. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********");
            map.put("at", b);
        } else if (this.h.equals(b) || this.h.equals(c)) {
            map.put("at", this.h);
        } else {
            MMLog.e(s, "******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS (" + this.h + ") **********");
        }
    }

    void addView(MMWebView mMWebView, LayoutParams layoutParams) {
    }

    boolean b() {
        return false;
    }

    MMWebViewClient c() {
        MMLog.b(s, "Returning a client for user: DefaultWebViewClient, adimpl=" + this);
        return new BannerWebViewClient(this.p, new MMAdImplRedirectionListenerImpl(this));
    }

    abstract MMAd d();

    int e() {
        return -1;
    }

    void f() {
        MMAdImplController.b(this);
        if (this.n != null) {
            this.n.a();
        }
    }

    boolean g() {
        if (MMSDK.b) {
            MMLog.b(s, "Minimum adrefresh time ignored");
            return true;
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            int i = (int) ((currentTimeMillis - this.j) / 1000);
            if (((long) i) >= HandShake.a(j()).h) {
                this.j = currentTimeMillis;
                return true;
            } else {
                MMLog.b(s, String.format("Cannot request ad. Last ad request was %d seconds ago. Next ad can be requested in %d seconds.", new Object[]{Integer.valueOf(i), Long.valueOf(j - ((long) i))}));
                return false;
            }
        }
    }

    public String getApid() {
        return this.g;
    }

    public boolean getIgnoresDensityScaling() {
        return this.f;
    }

    public RequestListener getListener() {
        return this.e;
    }

    public MMRequest getMMRequest() {
        return this.d;
    }

    boolean h() {
        return false;
    }

    public boolean hasCachedVideoSupport() {
        return true;
    }

    void i() {
    }

    public boolean isBanner() {
        return false;
    }

    Context j() {
        return this.m != null ? (Context) this.m.get() : null;
    }

    String k() {
        return (this.h == null || this.g == null) ? null : this.h + "_" + this.g;
    }

    String m() {
        return MMBroadcastReceiver.ACTION_FETCH_FAILED;
    }

    String n() {
        return MMBroadcastReceiver.ACTION_FETCH_SUCCEEDED;
    }

    String o() {
        return "fetch";
    }

    boolean p() {
        return this.n != null && this.n.c != null && !this.n.c.f;
    }

    void q() {
        if (this.n != null) {
            this.n.e();
        }
    }

    boolean r() {
        return false;
    }

    void removeView(MMWebView mMWebView) {
    }

    public void setApid(String str) {
        if (!(str == null || str.isEmpty())) {
            HandShake.a = str;
        }
        this.g = str;
    }

    void setClickable(boolean z) {
    }

    public void setIgnoresDensityScaling(boolean z) {
        this.f = z;
    }

    public void setListener(RequestListener requestListener) {
        this.e = requestListener;
    }

    public void setMMRequest(MMRequest mMRequest) {
        this.d = mMRequest;
    }

    public String toString() {
        return "AdType[(" + this.h + ") InternalId(" + this.k + ") LinkedId(" + this.q + ") isFinishing(" + this.l + ")]";
    }
}