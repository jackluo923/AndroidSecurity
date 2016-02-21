package com.millennialmedia.android;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RelativeLayout.LayoutParams;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.utils.HTMLEncoder;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;

class MMAdImplController implements AdCacheTaskListener {
    static final long a = -4;
    private static final Map f;
    private static final Map g;
    private static final String h = "MMAdImplController";
    volatile long b;
    volatile MMWebView c;
    volatile WeakReference d;
    RequestAdRunnable e;

    private class RequestAdRunnable implements Runnable {
        HttpMMHeaders a;
        String b;

        private RequestAdRunnable() {
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private boolean a() {
            throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.android.MMAdImplController.RequestAdRunnable.a():boolean");
            /*
            r8 = this;
            r0 = 0;
            r1 = 1;
            r8.b = r0;
            r2 = com.millennialmedia.android.MMAdImplController.this;
            r2 = r2.d;
            if (r2 == 0) goto L_0x0014;
        L_0x000a:
            r0 = com.millennialmedia.android.MMAdImplController.this;
            r0 = r0.d;
            r0 = r0.get();
            r0 = (com.millennialmedia.android.MMAdImpl) r0;
        L_0x0014:
            if (r0 == 0) goto L_0x00b2;
        L_0x0016:
            r2 = new java.util.TreeMap;	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r3 = java.lang.String.CASE_INSENSITIVE_ORDER;	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r2.<init>(r3);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r0.a(r2);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r3 = r0.j();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            com.millennialmedia.android.MMSDK.a(r3, r2);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r3 = "ua";
            r0 = r0.n;	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r0 = r0.c();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r2.put(r3, r0);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r3 = new java.lang.StringBuilder;	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r0 = com.millennialmedia.android.HandShake.a();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r3.<init>(r0);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r0 = r2.entrySet();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r4 = "MMAdImplController";
            r0 = r0.toString();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            com.millennialmedia.android.MMLog.b(r4, r0);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r0 = r2.entrySet();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r2 = r0.iterator();	 Catch:{ UnsupportedEncodingException -> 0x007f }
        L_0x0050:
            r0 = r2.hasNext();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            if (r0 == 0) goto L_0x008a;
        L_0x0056:
            r0 = r2.next();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r0 = (java.util.Map.Entry) r0;	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r4 = "%s=%s&";
            r5 = 2;
            r5 = new java.lang.Object[r5];	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r6 = 0;
            r7 = r0.getKey();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r5[r6] = r7;	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r6 = 1;
            r0 = r0.getValue();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r0 = (java.lang.String) r0;	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r7 = "UTF-8";
            r0 = java.net.URLEncoder.encode(r0, r7);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r5[r6] = r0;	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r0 = java.lang.String.format(r4, r5);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r3.append(r0);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            goto L_0x0050;
        L_0x007f:
            r0 = move-exception;
            r1 = new com.millennialmedia.android.MMException;
            r1.<init>(r0);
            r0 = r8.a(r1);
        L_0x0089:
            return r0;
        L_0x008a:
            r0 = r3.length();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r0 = r0 + -1;
            r2 = r3.length();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r3.delete(r0, r2);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r0 = r3.toString();	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r8.b = r0;	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r0 = "MMAdImplController";
            r2 = "Calling for an advertisement: %s";
            r3 = 1;
            r3 = new java.lang.Object[r3];	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r4 = 0;
            r5 = r8.b;	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r3[r4] = r5;	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r2 = java.lang.String.format(r2, r3);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            com.millennialmedia.android.MMLog.b(r0, r2);	 Catch:{ UnsupportedEncodingException -> 0x007f }
        L_0x00b0:
            r0 = r1;
            goto L_0x0089;
        L_0x00b2:
            r0 = new com.millennialmedia.android.MMException;	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r2 = 25;
            r0.<init>(r2);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            r8.b(r0);	 Catch:{ UnsupportedEncodingException -> 0x007f }
            goto L_0x00b0;
            */
        }

        private boolean a(HttpEntity httpEntity) {
            MMAdImpl mMAdImpl = MMAdImplController.this.d != null ? (MMAdImpl) MMAdImplController.this.d.get() : null;
            if (mMAdImpl != null && mMAdImpl.isBanner()) {
                return a(new MMException("Millennial ad return unsupported format.", 15));
            }
            try {
                CachedAd cachedAd = (VideoAd) CachedAd.a(HttpGetRequest.a(httpEntity.getContent()));
                if (cachedAd != null && cachedAd.b()) {
                    MMLog.c(h, "Cached video ad JSON received: " + cachedAd.e());
                    if (cachedAd.a()) {
                        MMLog.c(h, "New ad has expiration date in the past. Not downloading ad content.");
                        cachedAd.c(mMAdImpl.j());
                        Event.a(mMAdImpl, new MMException(15));
                    } else if (AdCache.d(mMAdImpl.j(), mMAdImpl.k()) != null) {
                        MMLog.c(h, "Previously fetched ad exists in the playback queue. Not downloading ad content.");
                        cachedAd.c(mMAdImpl.j());
                        Event.a(mMAdImpl, new MMException(17));
                    } else {
                        AdCache.a(mMAdImpl.j(), cachedAd);
                        if (cachedAd.d(mMAdImpl.j())) {
                            MMLog.b(h, "Cached ad is valid. Moving it to the front of the queue.");
                            AdCache.a(mMAdImpl.j(), mMAdImpl.k(), cachedAd.e());
                            Event.b(mMAdImpl);
                            Event.f(mMAdImpl);
                        } else {
                            Event.a(cachedAd.r);
                            MMLog.b(h, "Downloading ad...");
                            Event.b(mMAdImpl);
                            cachedAd.i = 3;
                            AdCache.a(mMAdImpl.j(), mMAdImpl.k(), cachedAd, mMAdImpl.n);
                        }
                    }
                }
            } catch (IllegalStateException e) {
                Exception exception = e;
                exception.printStackTrace();
                return b(new MMException("Millennial ad return failed. Invalid response data.", exception));
            } catch (IOException e2) {
                exception = e2;
                exception.printStackTrace();
                return b(new MMException("Millennial ad return failed. " + exception, exception));
            }
            return true;
        }

        private boolean a(HttpResponse httpResponse) {
            HttpEntity entity = httpResponse.getEntity();
            if (entity == null) {
                b(new MMException("Null HTTP entity", 14));
                return false;
            } else if (entity.getContentLength() == 0) {
                b(new MMException("Millennial ad return failed. Zero content length returned.", 14));
                return false;
            } else {
                b(httpResponse);
                Header contentType = entity.getContentType();
                if (contentType == null || contentType.getValue() == null) {
                    b(new MMException("Millennial ad return failed. HTTP Header value null.", 15));
                    return false;
                } else {
                    if (contentType.getValue().toLowerCase().startsWith(WebRequest.CONTENT_TYPE_JSON)) {
                        a(entity);
                    } else if (contentType.getValue().toLowerCase().startsWith(WebRequest.CONTENT_TYPE_HTML)) {
                        Header firstHeader = httpResponse.getFirstHeader("X-MM-Video");
                        this.a = new HttpMMHeaders(httpResponse.getAllHeaders());
                        if (firstHeader != null && firstHeader.getValue().equalsIgnoreCase("true")) {
                            MMAdImpl mMAdImpl = null;
                            if (MMAdImplController.this.d != null) {
                                mMAdImpl = (MMAdImpl) MMAdImplController.this.d.get();
                            }
                            if (mMAdImpl != null) {
                                Context j = mMAdImpl.j();
                                HandShake.a(j).c(j, mMAdImpl.h);
                            }
                        }
                        b(entity);
                    } else {
                        b(new MMException("Millennial ad return failed. Invalid (JSON/HTML expected) mime type returned.", 15));
                        return false;
                    }
                    return true;
                }
            }
        }

        private void b(HttpResponse httpResponse) {
            Header[] headers = httpResponse.getHeaders("Set-Cookie");
            int length = headers.length;
            int i = 0;
            while (i < length) {
                String value = headers[i].getValue();
                int indexOf = value.indexOf("MAC-ID=");
                if (indexOf >= 0) {
                    int indexOf2 = value.indexOf(59, indexOf);
                    if (indexOf2 > indexOf) {
                        MMSDK.m = value.substring(indexOf + 7, indexOf2);
                    }
                }
                i++;
            }
        }

        private boolean b(HttpEntity httpEntity) {
            MMAdImpl mMAdImpl = null;
            try {
                if (MMAdImplController.this.d != null) {
                    mMAdImpl = (MMAdImpl) MMAdImplController.this.d.get();
                }
                if (mMAdImpl != null) {
                    if (mMAdImpl.isBanner()) {
                        if (mMAdImpl.n != null) {
                            mMAdImpl.n.a(this.a);
                            mMAdImpl.n.a(HttpGetRequest.a(httpEntity.getContent()), this.b);
                        }
                        Event.f(mMAdImpl);
                    } else {
                        CachedAd interstitialAd = new InterstitialAd();
                        interstitialAd.l = HttpGetRequest.a(httpEntity.getContent());
                        interstitialAd.b(mMAdImpl.h);
                        interstitialAd.m = this.b;
                        interstitialAd.n = this.a;
                        if (MMSDK.a >= 5) {
                            MMLog.a(h, String.format("Received interstitial ad with url %s.", new Object[]{interstitialAd.m}));
                            MMLog.a(h, interstitialAd.l);
                        }
                        AdCache.a(mMAdImpl.j(), interstitialAd);
                        AdCache.a(mMAdImpl.j(), mMAdImpl.k(), interstitialAd.e());
                        Event.b(mMAdImpl);
                        Event.f(mMAdImpl);
                    }
                }
                return true;
            } catch (IOException e) {
                Exception exception = e;
                return a(new MMException("Exception raised in HTTP stream: " + exception, exception));
            }
        }

        boolean a(MMException mMException) {
            MMLog.e(h, mMException.getMessage());
            return c(mMException);
        }

        boolean b(MMException mMException) {
            MMLog.c(h, mMException.getMessage());
            return c(mMException);
        }

        boolean c(MMException mMException) {
            MMAdImpl mMAdImpl = null;
            if (MMAdImplController.this.d != null) {
                mMAdImpl = (MMAdImpl) MMAdImplController.this.d.get();
            }
            Event.a(mMAdImpl, mMException);
            return false;
        }

        public void run() {
            RequestAdRunnable requestAdRunnable = null;
            try {
                if (MMAdImplController.this.d != null) {
                    MMAdImpl mMAdImpl = (MMAdImpl) MMAdImplController.this.d.get();
                    if (mMAdImpl == null || !MMSDK.a(mMAdImpl.j())) {
                        b(new MMException("No network available, can't call for ads.", 11));
                        MMAdImplController.this.e = requestAdRunnable;
                        return;
                    } else if (a()) {
                        try {
                            HttpResponse a = new HttpGetRequest().a(this.b);
                            if (a == null) {
                                a(new MMException("HTTP response is null.", 14));
                                MMAdImplController.this.e = requestAdRunnable;
                                return;
                            } else if (!a(a)) {
                                MMAdImplController.this.e = requestAdRunnable;
                                return;
                            }
                        } catch (Exception e) {
                            a(new MMException("Ad request HTTP error. " + e.getMessage(), 14));
                            MMAdImplController.this.e = requestAdRunnable;
                        }
                    } else {
                        MMAdImplController.this.e = requestAdRunnable;
                        return;
                    }
                }
                MMAdImplController.this.e = requestAdRunnable;
            } catch (Exception e2) {
                b(new MMException("Request not filled, can't call for ads.", 14));
                MMAdImplController.this.e = requestAdRunnable;
            }
        }
    }

    static {
        f = new ConcurrentHashMap();
        g = new ConcurrentHashMap();
    }

    private MMAdImplController(MMAdImpl mMAdImpl) {
        MMLog.b(h, "**************** creating new controller.");
        this.d = new WeakReference(mMAdImpl);
        if (mMAdImpl.q != 0) {
            a(mMAdImpl);
            this.c = d(mMAdImpl);
        } else if (!(mMAdImpl instanceof MMInterstitialAdImpl)) {
            if (mMAdImpl.isBanner()) {
                this.c = new MMWebView(mMAdImpl.j().getApplicationContext(), mMAdImpl.k);
                this.c.k = true;
            } else {
                this.c = new MMWebView(mMAdImpl.j(), mMAdImpl.k);
            }
        }
    }

    static synchronized MMAdImpl a(long j) {
        MMAdImpl mMAdImpl;
        synchronized (MMAdImplController.class) {
            if (j == -4) {
                mMAdImpl = null;
            } else {
                MMAdImplController mMAdImplController = (MMAdImplController) f.get(Long.valueOf(j));
                if (mMAdImplController == null) {
                    WeakReference weakReference = (WeakReference) g.get(Long.valueOf(j));
                    if (weakReference != null) {
                        mMAdImplController = (MMAdImplController) weakReference.get();
                    }
                }
                mMAdImpl = mMAdImplController != null ? (MMAdImpl) mMAdImplController.d.get() : null;
            }
        }
        return mMAdImpl;
    }

    static void a(Context context) {
        Iterator it = f.entrySet().iterator();
        while (it.hasNext()) {
            MMAdImplController mMAdImplController = (MMAdImplController) ((Entry) it.next()).getValue();
            if (mMAdImplController != null) {
                MMAdImpl mMAdImpl = (MMAdImpl) mMAdImplController.d.get();
                if (mMAdImpl != null) {
                    MMAd d = mMAdImpl.d();
                    if (d != null && d instanceof MMLayout) {
                        ((MMLayout) d).m();
                    }
                }
            }
        }
    }

    static synchronized void b(MMAdImpl mMAdImpl) {
        synchronized (MMAdImplController.class) {
            if (mMAdImpl.n != null) {
                if (!f.containsValue(mMAdImpl.n)) {
                    if (mMAdImpl.r()) {
                        f.put(Long.valueOf(mMAdImpl.k), mMAdImpl.n);
                        if (g.containsKey(Long.valueOf(mMAdImpl.k))) {
                            g.remove(Long.valueOf(mMAdImpl.k));
                        }
                    } else if (!g.containsKey(Long.valueOf(mMAdImpl.k))) {
                        g.put(Long.valueOf(mMAdImpl.k), new WeakReference(mMAdImpl.n));
                    }
                }
                MMLog.b(h, mMAdImpl + " - Has a controller");
            } else {
                MMLog.b(h, "*****************************************assignAdViewController for " + mMAdImpl);
                MMAdImplController mMAdImplController = (MMAdImplController) f.get(Long.valueOf(mMAdImpl.k));
                if (mMAdImplController == null) {
                    WeakReference weakReference = (WeakReference) g.get(Long.valueOf(mMAdImpl.k));
                    if (weakReference != null) {
                        mMAdImplController = (MMAdImplController) weakReference.get();
                    }
                    if (mMAdImplController == null) {
                        mMAdImplController = new MMAdImplController(mMAdImpl);
                        if (mMAdImpl.r()) {
                            f.put(Long.valueOf(mMAdImpl.k), mMAdImplController);
                        } else {
                            g.put(Long.valueOf(mMAdImpl.k), new WeakReference(mMAdImplController));
                        }
                    }
                }
                mMAdImpl.n = mMAdImplController;
                mMAdImplController.d = new WeakReference(mMAdImpl);
                if (!(mMAdImplController.c == null || mMAdImpl instanceof MMInterstitialAdImpl)) {
                    h(mMAdImpl);
                }
            }
        }
    }

    static synchronized boolean c(MMAdImpl mMAdImpl) {
        boolean z = false;
        synchronized (MMAdImplController.class) {
            if (mMAdImpl != null) {
                MMLog.b(h, "attachWebViewFromOverlay with " + mMAdImpl);
                if (!(mMAdImpl.n == null || mMAdImpl.n.c == null)) {
                    mMAdImpl.n.c.d();
                }
                MMAdImpl a = a(mMAdImpl.q);
                if (!(a == null || a.n == null)) {
                    if (a.n.c == null && !(mMAdImpl.n == null || mMAdImpl.n.c == null)) {
                        a.n.c = mMAdImpl.n.c;
                        mMAdImpl.removeView(mMAdImpl.n.c);
                        mMAdImpl.n.c = null;
                        a.n.c.o();
                        a.n.c.setWebViewClient(a.c());
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    static synchronized MMWebView d(MMAdImpl mMAdImpl) {
        MMWebView mMWebView = null;
        synchronized (MMAdImplController.class) {
            MMLog.c(h, "getWebViewFromExistingLayout(" + mMAdImpl.k + " taking from " + mMAdImpl.q + ")");
            MMAdImpl a = a(mMAdImpl.q);
            if (!(a == null || a.n == null)) {
                mMWebView = a.n.c;
                a.n.c = null;
            }
        }
        return mMWebView;
    }

    static String d() {
        return g.toString() + " SAVED:" + f.toString();
    }

    static synchronized void e(MMAdImpl mMAdImpl) {
        synchronized (MMAdImplController.class) {
            if (mMAdImpl.n != null) {
                if (mMAdImpl.r()) {
                    f.put(Long.valueOf(mMAdImpl.k), mMAdImpl.n);
                    if (g.get(Long.valueOf(mMAdImpl.k)) != null) {
                        g.remove(Long.valueOf(mMAdImpl.k));
                    }
                } else {
                    g.put(Long.valueOf(mMAdImpl.k), new WeakReference(mMAdImpl.n));
                }
                MMLog.b(h, "****************RemoveAdviewcontroller - " + mMAdImpl);
                if (mMAdImpl.l) {
                    f.remove(Long.valueOf(mMAdImpl.k));
                    g.remove(Long.valueOf(mMAdImpl.k));
                }
                MMAdImplController mMAdImplController = mMAdImpl.n;
                mMAdImpl.n = null;
                MMLog.b(h, "****************RemoveAdviewcontroller - controllers " + d());
                if (mMAdImplController.c != null) {
                    MMLog.b(h, "****************RemoveAdviewcontroller - controller!=null, expanding=" + mMAdImplController.c.f);
                    mMAdImpl.removeView(mMAdImplController.c);
                    mMAdImplController.c.f = false;
                    if (mMAdImpl.l && mMAdImpl.q == 0) {
                        mMAdImplController.c.loadData("<html></html>", WebRequest.CONTENT_TYPE_HTML, HTMLEncoder.ENCODE_NAME_DEFAULT);
                        mMAdImplController.c.d();
                        mMAdImplController.c = null;
                    }
                }
            }
        }
    }

    private static synchronized void h(MMAdImpl mMAdImpl) {
        synchronized (MMAdImplController.class) {
            MMAdImplController mMAdImplController = mMAdImpl.n;
            if (mMAdImplController.c != null) {
                mMAdImplController.c.setWebViewClient(mMAdImpl.c());
                if (!mMAdImplController.c.a(mMAdImpl.k)) {
                    LayoutParams layoutParams;
                    if (mMAdImpl.isBanner()) {
                        layoutParams = new LayoutParams(-2, -2);
                        if (mMAdImplController.c.x()) {
                            mMAdImplController.c.b(mMAdImpl);
                        }
                    } else {
                        layoutParams = new LayoutParams(-2, -1);
                    }
                    mMAdImplController.c.w();
                    mMAdImpl.addView(mMAdImplController.c, layoutParams);
                }
            }
        }
    }

    private void i(MMAdImpl mMAdImpl) {
        if (mMAdImpl.g == null) {
            MMException mMException = new MMException("MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned.", 1);
            MMLog.e(h, mMException.getMessage());
            Event.a(mMAdImpl, mMException);
        } else if (mMAdImpl.isBanner() || !j(mMAdImpl)) {
            synchronized (this) {
                if (this.e != null) {
                    MMLog.c(h, MMException.a(R.styleable.MapAttrs_useViewLifecycle));
                    Event.a(mMAdImpl, new MMException(12));
                } else {
                    this.e = new RequestAdRunnable(null);
                    ThreadUtils.a(this.e);
                }
            }
        }
    }

    private synchronized boolean j(MMAdImpl mMAdImpl) {
        boolean z = true;
        synchronized (this) {
            Context j = mMAdImpl.j();
            if (HandShake.a(j).c(mMAdImpl.h)) {
                MMLog.c(h, "There is a download in progress. Defering call for new ad");
                Event.a(mMAdImpl, new MMException(12));
            } else {
                MMLog.b(h, "No download in progress.");
                CachedAd f = AdCache.f(j, mMAdImpl.k());
                if (f != null) {
                    MMLog.c(h, "Last ad wasn't fully downloaded. Download again.");
                    Event.b(mMAdImpl);
                    AdCache.a(j, mMAdImpl.k(), f, this);
                } else {
                    MMLog.c(h, "No incomplete downloads.");
                    z = false;
                }
            }
        }
        return z;
    }

    int a(MMAdImpl mMAdImpl, CachedAd cachedAd) {
        if (cachedAd.a()) {
            MMLog.b(h, String.format("%s is expired.", new Object[]{cachedAd.e()}));
            return MMException.DISPLAY_AD_EXPIRED;
        } else if (!cachedAd.d(mMAdImpl.j())) {
            MMLog.b(h, String.format("%s is not on disk.", new Object[]{cachedAd.e()}));
            return MMException.DISPLAY_AD_NOT_FOUND;
        } else if (HandShake.a(mMAdImpl.j()).a(mMAdImpl.h, cachedAd.g)) {
            return MMException.UNKNOWN_ERROR;
        } else {
            MMLog.b(h, String.format("%s cannot be shown at this time.", new Object[]{cachedAd.e()}));
            return MMException.DISPLAY_AD_NOT_PERMITTED;
        }
    }

    void a() {
        MMAdImpl mMAdImpl = (MMAdImpl) this.d.get();
        if (mMAdImpl == null) {
            MMLog.e(h, MMException.a(MMException.AD_BROKEN_REFERENCE));
            Event.a(mMAdImpl, new MMException(25));
        } else if (!mMAdImpl.g()) {
            Event.a(mMAdImpl, new MMException(16));
        } else if (!MMSDK.a()) {
            MMLog.e(h, MMException.a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
            Event.a(mMAdImpl, new MMException(3));
        } else if (HandShake.a(mMAdImpl.j()).b) {
            MMLog.c(h, "The server is no longer allowing ads.");
            Event.a(mMAdImpl, new MMException(16));
        } else {
            try {
                MMLog.b(h, "adLayout - requestAd");
                i(mMAdImpl);
            } catch (Exception e) {
                Throwable th = e;
                MMLog.e(h, "There was an exception with the ad request. ", th);
                th.printStackTrace();
            }
        }
    }

    void a(HttpMMHeaders httpMMHeaders) {
        if (this.c != null) {
            this.c.a(httpMMHeaders);
        }
    }

    void a(MMAdImpl mMAdImpl) {
        MMAdImpl a = a(mMAdImpl.q);
        if (a != null) {
            this.b = mMAdImpl.q;
            a.n.b = mMAdImpl.k;
            a.q = mMAdImpl.k;
        }
    }

    void a(String str) {
        if (!TextUtils.isEmpty(str) && this.c != null) {
            this.c.loadUrl(str);
        }
    }

    void a(String str, String str2) {
        if (this.c != null) {
            this.c.a(str, str2, (MMAdImpl) this.d.get());
        }
    }

    HttpMMHeaders b() {
        return this.c == null ? null : this.c.y();
    }

    void b(String str, String str2) {
        MMAdImpl mMAdImpl = (MMAdImpl) this.d.get();
        if (mMAdImpl != null && this.c != null) {
            this.c.a(str, str2, mMAdImpl);
        }
    }

    String c() {
        Object defaultUserAgentString;
        MMAdImpl mMAdImpl = (MMAdImpl) this.d.get();
        if (mMAdImpl != null) {
            Context j = mMAdImpl.j();
            if (j != null) {
                defaultUserAgentString = getDefaultUserAgentString(j);
                return TextUtils.isEmpty(defaultUserAgentString) ? defaultUserAgentString : Build.MODEL;
            }
        }
        defaultUserAgentString = null;
        if (TextUtils.isEmpty(defaultUserAgentString)) {
        }
    }

    public void downloadCompleted(CachedAd cachedAd, boolean z) {
        MMAdImpl mMAdImpl = (MMAdImpl) this.d.get();
        if (mMAdImpl == null) {
            MMLog.e(h, MMException.a(MMException.AD_BROKEN_REFERENCE));
        } else {
            if (z) {
                AdCache.a(mMAdImpl.j(), mMAdImpl.k(), cachedAd.e());
            }
            if (z) {
                Event.f(mMAdImpl);
            } else {
                Event.a(mMAdImpl, new MMException(15));
            }
        }
    }

    public void downloadStart(CachedAd cachedAd) {
    }

    void e() {
        if (this.c != null) {
            this.c.b((MMAdImpl) this.d.get());
        }
    }

    int f(MMAdImpl mMAdImpl) {
        CachedAd d = AdCache.d(mMAdImpl.j(), mMAdImpl.k());
        if (d == null) {
            MMLog.c(h, "No next ad.");
            return MMException.DISPLAY_AD_NOT_READY;
        } else if (d.a(mMAdImpl.j(), mMAdImpl, true)) {
            return 0;
        } else {
            return a(mMAdImpl, d);
        }
    }

    int g(MMAdImpl mMAdImpl) {
        CachedAd d = AdCache.d(mMAdImpl.j(), mMAdImpl.k());
        if (d == null) {
            return MMException.DISPLAY_AD_NOT_READY;
        }
        if (!d.a(mMAdImpl.j(), mMAdImpl, true)) {
            return a(mMAdImpl, d);
        }
        Event.c(mMAdImpl);
        AdCache.a(mMAdImpl.j(), mMAdImpl.k(), null);
        d.a(mMAdImpl.j(), mMAdImpl.k);
        HandShake.a(mMAdImpl.j()).c(mMAdImpl.j(), mMAdImpl.h);
        return 0;
    }

    public String getDefaultUserAgentString(Context context) {
        return System.getProperty("http.agent");
    }

    public String toString() {
        MMAdImpl mMAdImpl = (MMAdImpl) this.d.get();
        StringBuilder stringBuilder = new StringBuilder();
        if (mMAdImpl != null) {
            stringBuilder.append(mMAdImpl + "-LinkInC=" + this.b);
        }
        return stringBuilder.toString() + " w/" + this.c;
    }
}