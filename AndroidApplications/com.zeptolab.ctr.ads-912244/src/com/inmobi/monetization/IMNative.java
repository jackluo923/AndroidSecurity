package com.inmobi.monetization;

import android.os.Handler;
import android.util.Log;
import android.view.ViewGroup;
import com.inmobi.androidsdk.carb.CARB;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.NativeAdRequest;
import com.inmobi.monetization.internal.NativeAdsController;
import com.inmobi.monetization.internal.TrackerView;
import com.inmobi.monetization.internal.abstraction.INativeAdListener;
import java.util.HashMap;
import java.util.Map;

public class IMNative {
    TrackerView a;
    private String b;
    private String c;
    private String d;
    private String e;
    private IMNativeListener f;
    private Handler g;
    private NativeAdRequest h;
    private boolean i;
    private a j;
    private INativeAdListener k;

    private enum a {
        INIT,
        LOADING,
        READY,
        ATTACHED,
        DETACHED,
        ERROR,
        UNKNOWN;

        static {
            a = new a("INIT", 0);
            b = new a("LOADING", 1);
            c = new a("READY", 2);
            d = new a("ATTACHED", 3);
            e = new a("DETACHED", 4);
            f = new a("ERROR", 5);
            g = new a("UNKNOWN", 6);
            h = new a[]{a, b, c, d, e, f, g};
        }
    }

    class b implements Runnable {
        final /* synthetic */ ViewGroup a;

        b(ViewGroup viewGroup) {
            this.a = viewGroup;
        }

        public void run() {
            try {
                IMNative.this.a = new TrackerView(this.a.getContext(), IMNative.this.c, IMNative.this.d);
                this.a.addView(IMNative.this.a);
            } catch (Exception e) {
                Log.e(Constants.LOG_TAG, "Failed to attach the view");
                IMNative.this.a(a.f);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        public void run() {
            try {
                if (IMNative.this != null) {
                    IMNative.this.destroy();
                    IMNative.this = null;
                } else {
                    Log.e(Constants.LOG_TAG, "Please attach the native ad view before calling detach");
                    IMNative.this.a(a.f);
                }
            } catch (Exception e) {
                IMNative.this.a(a.f);
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Failed to detach a view");
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ HashMap a;

        d(HashMap hashMap) {
            this.a = hashMap;
        }

        public void run() {
            try {
                IMNative.this.a.click(this.a);
            } catch (Exception e) {
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Failed to track click");
            }
        }
    }

    public IMNative(IMNativeListener iMNativeListener) {
        this.b = null;
        this.c = null;
        this.d = null;
        this.a = null;
        this.e = null;
        this.f = null;
        this.h = null;
        this.i = false;
        this.j = a.g;
        this.k = new a(this);
        a(InMobi.getAppId(), iMNativeListener);
        a(a.a);
    }

    public IMNative(String str, IMNativeListener iMNativeListener) {
        this.b = null;
        this.c = null;
        this.d = null;
        this.a = null;
        this.e = null;
        this.f = null;
        this.h = null;
        this.i = false;
        this.j = a.g;
        this.k = new a(this);
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.e(Constants.LOG_TAG, "Please create an instance of native ad with valid appId");
        } else {
            a(str, iMNativeListener);
            a(a.a);
        }
    }

    protected IMNative(String str, String str2, String str3) {
        this.b = null;
        this.c = null;
        this.d = null;
        this.a = null;
        this.e = null;
        this.f = null;
        this.h = null;
        this.i = false;
        this.j = a.g;
        this.k = new a(this);
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    private synchronized a a() {
        return this.j;
    }

    private synchronized void a(a aVar) {
        this.j = aVar;
    }

    private void a(String str, IMNativeListener iMNativeListener) {
        if (InternalSDKUtil.isInitializedSuccessfully()) {
            this.e = str.trim();
            this.f = iMNativeListener;
            this.h = new NativeAdRequest(this.e);
            try {
                this.g = new Handler();
            } catch (Throwable th) {
                Log.e(Constants.LOG_TAG, "Please create a native ad instance in the main thread");
            }
        } else {
            Log.e(Constants.LOG_TAG, "Please initialize inmobi before requesting for native ads");
        }
    }

    public void attachToView(ViewGroup viewGroup) {
        try {
            if (!InternalSDKUtil.isInitializedSuccessfully()) {
                Log.e(Constants.LOG_TAG, "Please initialize inmobi before requesting for native ads");
            } else if (!this.i) {
                Log.e(Constants.LOG_TAG, "Please load a native ad before attach");
            } else if (viewGroup == null) {
                Log.e(Constants.LOG_TAG, "Please pass a valid view to attach");
            } else if (a() == a.d) {
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Ad is already attached");
            } else if (a() != a.c) {
                Log.e(Constants.LOG_TAG, "Cannot attach an ad which is not ready or detached from view");
            } else if (this.g == null) {
                Log.e(Constants.LOG_TAG, "Please create a native ad instance in the main thread");
            } else {
                this.g.post(new b(viewGroup));
                a(a.d);
            }
        } catch (Exception e) {
            Log.e(Constants.LOG_TAG, "Please pass a valid view to attach");
        }
    }

    public void detachFromView() {
        if (!InternalSDKUtil.isInitializedSuccessfully()) {
            Log.e(Constants.LOG_TAG, "Please initialize inmobi before requesting for native ads");
        } else if (!this.i) {
            Log.e(Constants.LOG_TAG, "Please load a native ad before detach");
        } else if (a() != a.d) {
            com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Please attach the native ad view before calling detach");
        } else if (this.g == null) {
            Log.e(Constants.LOG_TAG, "Please create a native ad instance in the main thread");
        } else {
            this.g.post(new c());
            this.i = false;
            a(a.e);
        }
    }

    public String getContent() {
        return this.b;
    }

    public void handleClick(HashMap hashMap) {
        if (!InternalSDKUtil.isInitializedSuccessfully()) {
            Log.e(Constants.LOG_TAG, "Please initialize inmobi before requesting for native ads");
        } else if (!this.i) {
            Log.e(Constants.LOG_TAG, "Cannot handle click, native ad not loaded or detached from view");
        } else if (a() != a.d) {
            com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Please attach to view before handling any events");
        } else if (this.g == null) {
            Log.e(Constants.LOG_TAG, "Please create a native ad instance in the main thread");
        } else {
            this.g.post(new d(hashMap));
        }
    }

    public void loadAd() {
        if (!InternalSDKUtil.isInitializedSuccessfully()) {
            Log.e(Constants.LOG_TAG, "Please initialize inmobi before requesting for native ads");
        } else if (this.e != null && !AdTrackerConstants.BLANK.equals(this.e)) {
            if (this.g == null) {
                Log.e(Constants.LOG_TAG, "Please create a native ad instance in the main thread");
            } else {
                CARB.getInstance().startCarb();
                InternalSDKUtil.printPublisherTestId();
                if (a() == a.a) {
                    com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Loading Native Ad");
                    a(a.b);
                    NativeAdsController.getInstance().getAd(this.e, this.h, this.k);
                } else if (a() == a.b) {
                    Log.e(Constants.LOG_TAG, "Ad is already loading. Please wait");
                } else if (a() != a.g) {
                    com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Loading native ad");
                    if (a() == a.d) {
                        detachFromView();
                    }
                    this.b = null;
                    this.c = null;
                    this.d = null;
                    a(a.b);
                    NativeAdsController.getInstance().getAd(this.e, this.h, this.k);
                }
            }
        }
    }

    public void setKeywords(String str) {
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            com.inmobi.commons.internal.Log.debug(ConfigConstants.LOGGING_TAG, "Keywords cannot be null or blank.");
        } else {
            this.h.setKeywords(str);
        }
    }

    public void setRefTagParam(String str, String str2) {
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            com.inmobi.commons.internal.Log.debug(ConfigConstants.LOGGING_TAG, "Ref tag key cannot be null or blank.");
        } else if (str2 == null || AdTrackerConstants.BLANK.equals(str2.trim())) {
            com.inmobi.commons.internal.Log.debug(ConfigConstants.LOGGING_TAG, "RefTag value cannot be null or blank.");
        } else {
            this.h.setRefTagParam(str, str2);
        }
    }

    public void setRequestParams(Map map) {
        if (map == null || map.isEmpty()) {
            com.inmobi.commons.internal.Log.debug(ConfigConstants.LOGGING_TAG, "Request params cannot be null or empty.");
        } else {
            this.h.setRequestParams(map);
        }
    }
}