package com.inmobi.monetization;

import android.app.Activity;
import android.os.Handler;
import com.inmobi.androidsdk.AdRequest.ErrorCode;
import com.inmobi.androidsdk.InterstitialView;
import com.inmobi.androidsdk.InterstitialViewListener;
import com.inmobi.androidsdk.Mode;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.ThinICE;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.LtvpRuleProcessor;
import com.inmobi.monetization.internal.LtvpRuleProcessor.ActionsRule;
import com.inmobi.monetization.internal.MonetizationUtils;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class IMInterstitial {
    private static ActionsRule g;
    InterstitialView a;
    ActionsRule b;
    AdMode c;
    boolean d;
    private IMInterstitialListener e;
    private IMIncentivisedListener f;
    private long h;
    private Activity i;
    private AtomicBoolean j;
    private State k;
    private Handler l;
    private String m;
    private String n;
    private Map o;

    public enum AdMode {
        AD_NETWORK,
        APP_GALLERY;

        static {
            AD_NETWORK = new com.inmobi.monetization.IMInterstitial.AdMode("AD_NETWORK", 0);
            APP_GALLERY = new com.inmobi.monetization.IMInterstitial.AdMode("APP_GALLERY", 1);
            a = new com.inmobi.monetization.IMInterstitial.AdMode[]{AD_NETWORK, APP_GALLERY};
        }
    }

    public enum State {
        INIT,
        ACTIVE,
        LOADING,
        READY,
        UNKNOWN;

        static {
            INIT = new com.inmobi.monetization.IMInterstitial.State("INIT", 0);
            ACTIVE = new com.inmobi.monetization.IMInterstitial.State("ACTIVE", 1);
            LOADING = new com.inmobi.monetization.IMInterstitial.State("LOADING", 2);
            READY = new com.inmobi.monetization.IMInterstitial.State("READY", 3);
            UNKNOWN = new com.inmobi.monetization.IMInterstitial.State("UNKNOWN", 4);
            a = new com.inmobi.monetization.IMInterstitial.State[]{INIT, ACTIVE, LOADING, READY, UNKNOWN};
        }
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            a = new int[ActionsRule.values().length];
            try {
                a[ActionsRule.ACTIONS_TO_MEDIATION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[ActionsRule.ACTIONS_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[ActionsRule.MEDIATION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            a[ActionsRule.NO_ADS.ordinal()] = 4;
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            if (IMInterstitial.this.e != null) {
                IMInterstitial.this.e.onInterstitialFailed(IMInterstitial.this, IMErrorCode.NO_FILL);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        public void run() {
            IMInterstitial.this.j.set(false);
            IMInterstitial.this.k = com.inmobi.monetization.IMInterstitial.State.INIT;
            if (IMInterstitial.this.e != null) {
                IMInterstitial.this.e.onInterstitialFailed(IMInterstitial.this, IMErrorCode.DO_NOTHING);
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        public void run() {
            IMInterstitial.this.j.set(false);
            IMInterstitial.this.k = com.inmobi.monetization.IMInterstitial.State.INIT;
            if (IMInterstitial.this.e != null) {
                IMInterstitial.this.e.onInterstitialFailed(IMInterstitial.this, IMErrorCode.DO_MONETIZE);
            }
        }
    }

    class e implements InterstitialViewListener {
        e() {
        }

        public void onAdRequestFailed(InterstitialView interstitialView, ErrorCode errorCode) {
            if (IMInterstitial.this.b == ActionsRule.ACTIONS_TO_MEDIATION) {
                if (IMInterstitial.this.e != null) {
                    IMInterstitial.this.e.onInterstitialFailed(IMInterstitial.this, IMErrorCode.DO_MONETIZE);
                }
            } else if (IMInterstitial.this.e != null) {
                IMInterstitial.this.e.onInterstitialFailed(IMInterstitial.this, MonetizationUtils.getErrorCode(errorCode));
            }
            IMInterstitial.this.j.set(false);
            IMInterstitial.this.k = com.inmobi.monetization.IMInterstitial.State.INIT;
        }

        public void onAdRequestLoaded(InterstitialView interstitialView) {
            IMInterstitial.this.k = com.inmobi.monetization.IMInterstitial.State.READY;
            IMInterstitial.this.j.set(false);
            if (IMInterstitial.this.e != null) {
                IMInterstitial.this.e.onInterstitialLoaded(IMInterstitial.this);
            }
        }

        public void onDismissAdScreen(InterstitialView interstitialView) {
            IMInterstitial.this.k = com.inmobi.monetization.IMInterstitial.State.INIT;
            if (IMInterstitial.this.e != null) {
                IMInterstitial.this.e.onDismissInterstitialScreen(IMInterstitial.this);
            }
        }

        public void onIncentCompleted(InterstitialView interstitialView, Map map) {
            if (IMInterstitial.this.f != null) {
                IMInterstitial.this.f.onIncentCompleted(IMInterstitial.this, map);
            }
        }

        public void onInterstitialInteraction(InterstitialView interstitialView, Map map) {
            if (IMInterstitial.this.e != null) {
                IMInterstitial.this.e.onInterstitialInteraction(IMInterstitial.this, map);
            }
        }

        public void onLeaveApplication(InterstitialView interstitialView) {
            if (IMInterstitial.this.e != null) {
                IMInterstitial.this.e.onLeaveApplication(IMInterstitial.this);
            }
        }

        public void onShowAdScreen(InterstitialView interstitialView) {
            IMInterstitial.this.k = com.inmobi.monetization.IMInterstitial.State.ACTIVE;
            if (IMInterstitial.this.e != null) {
                IMInterstitial.this.e.onShowInterstitialScreen(IMInterstitial.this);
            }
        }
    }

    class f implements Runnable {
        f() {
        }

        public void run() {
            Log.debug(ConfigConstants.LOGGING_TAG, "AppId cannot be set to null");
            if (IMInterstitial.this.e != null) {
                IMInterstitial.this.e.onInterstitialFailed(IMInterstitial.this, IMErrorCode.INVALID_REQUEST);
            }
        }
    }

    class g implements Runnable {
        final /* synthetic */ IMErrorCode a;

        g(IMErrorCode iMErrorCode) {
            this.a = iMErrorCode;
        }

        public void run() {
            if (IMInterstitial.this.e != null) {
                IMInterstitial.this.e.onInterstitialFailed(IMInterstitial.this, this.a);
            }
        }
    }

    static {
        g = null;
    }

    public IMInterstitial(Activity activity, long j) {
        this.b = ActionsRule.MEDIATION;
        this.h = -1;
        this.j = new AtomicBoolean(false);
        this.k = State.INIT;
        this.l = new Handler();
        this.m = null;
        this.n = null;
        this.o = null;
        this.c = AdMode.AD_NETWORK;
        this.d = false;
        this.h = j;
        a(activity);
    }

    public IMInterstitial(Activity activity, String str) {
        this.b = ActionsRule.MEDIATION;
        this.h = -1;
        this.j = new AtomicBoolean(false);
        this.k = State.INIT;
        this.l = new Handler();
        this.m = null;
        this.n = null;
        this.o = null;
        this.c = AdMode.AD_NETWORK;
        this.d = false;
        a(activity);
        this.m = str;
    }

    private ActionsRule a() {
        return LtvpRuleProcessor.getInstance().getLtvpRuleConfig(this.h);
    }

    private void a(long j) {
        this.a = new InterstitialView(this.i, InMobi.getAppId(), j);
        this.a.setIMAdInterstitialListener(new e());
    }

    private void a(Activity activity) {
        this.i = activity;
        if (InternalSDKUtil.isInitializedSuccessfully()) {
            try {
                ThinICE.start(this.i);
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Cannot start ice. Activity is null");
            }
            if (this.h != -1) {
                a();
            }
        }
    }

    private void b() {
        if (!InternalSDKUtil.isInitializedSuccessfully(false) || this.j.get()) {
            return;
        }
        if (getState() == State.READY || getState() == State.INIT) {
            d();
            if (this.h != -1) {
                this.b = a();
                if (g != null) {
                    this.b = g;
                }
                switch (a.a[this.b.ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                    case GoogleScorer.CLIENT_PLUS:
                        c();
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        e();
                        this.l.post(new d());
                        break;
                    case GoogleScorer.CLIENT_APPSTATE:
                        e();
                        this.l.post(new c());
                        break;
                    default:
                        e();
                        this.l.post(new b());
                        break;
                }
            }
            if (this.a != null) {
                MonetizationUtils.updateIMAdRequest(this.a.getIMAdRequest());
                if (this.o != null) {
                    this.a.getIMAdRequest().setRequestParams(this.o);
                }
                if (this.n != null) {
                    this.a.getIMAdRequest().setKeywords(this.n);
                }
                this.a.setMode(this.c == AdMode.AD_NETWORK ? Mode.AD_NETWORK : Mode.APP_GALLERY);
                if (this.d) {
                    this.a.disableHardwareAcceleration();
                }
            }
        }
    }

    private void c() {
        d();
        this.a.setAdServerUrl(AnalyticsInitializer.getConfigParams().getEndPoints().getHouseUrl());
        this.a.setSlotId(this.h);
        this.a.getIMAdRequest().setRequestParams(MonetizationUtils.buildLtvpRequestMap(null));
        this.a.setAppId(InMobi.getAppId());
    }

    private void d() {
        if (this.a == null) {
            a(this.h);
        }
        if (this.m != null) {
            this.a.setAppId(this.m);
        }
    }

    private void e() {
        if (this.a != null) {
            this.a.setIMAdInterstitialListener(null);
            this.a = null;
        }
    }

    public void destroy() {
        if (this.a != null) {
            this.a.destroy();
        }
    }

    public void disableHardwareAcceleration() {
        this.d = true;
    }

    public State getState() {
        return this.k;
    }

    public void loadInterstitial() {
        if (InternalSDKUtil.isInitializedSuccessfully()) {
            b();
            if (this.j.get() || !(getState() == State.READY || getState() == State.INIT)) {
                String str;
                IMErrorCode iMErrorCode = IMErrorCode.INVALID_REQUEST;
                str = this.j.get() ? "Interstitial load is already in progress." : "Interstitial can only be loaded in init or ready state.";
                iMErrorCode.setMessage(str);
                this.l.post(new g(iMErrorCode));
                Log.verbose(Constants.LOG_TAG, str);
            } else {
                this.j.set(true);
                this.k = State.LOADING;
                Log.debug(Constants.LOG_TAG, "loading");
                if (this.a == null) {
                    this.j.set(false);
                } else if (this.m == null && this.h == -1) {
                    this.j.set(false);
                    this.k = State.INIT;
                    this.l.post(new f());
                } else {
                    this.a.loadNewAd();
                }
            }
        }
    }

    public void setAppId(String str) {
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.debug(ConfigConstants.LOGGING_TAG, "AppId cannot be null or blank.");
        } else if (this.h != -1) {
            Log.debug(ConfigConstants.LOGGING_TAG, "A new appId cannot be set if a slotId is already set.");
        } else {
            this.m = str;
        }
    }

    public void setIMIncentivisedListener(IMIncentivisedListener iMIncentivisedListener) {
        this.f = iMIncentivisedListener;
    }

    public void setIMInterstitialListener(IMInterstitialListener iMInterstitialListener) {
        this.e = iMInterstitialListener;
    }

    public void setKeywords(String str) {
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Keywords cannot be null or blank.");
        } else {
            this.n = str;
        }
    }

    public void setMode(AdMode adMode) {
        if (adMode != null) {
            this.c = adMode;
        } else {
            Log.debug(ConfigConstants.LOGGING_TAG, "AdMode cannot be null.");
        }
    }

    public void setRequestParams(Map map) {
        if (map == null || map.isEmpty()) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Request params cannot be null or empty.");
        } else {
            this.o = map;
        }
    }

    public void setSlotId(long j) {
        if (j == -1) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Invalid slotId : -1");
        } else if (this.h != -1 || this.m == null) {
            this.h = j;
            if (this.a != null) {
                this.a.setSlotId(this.h);
            }
        } else {
            Log.debug(ConfigConstants.LOGGING_TAG, "A new slotId can be set only if a valid slotId is provided during object construction.");
        }
    }

    public void show() {
        if (this.a != null) {
            this.a.show();
        }
        try {
            ThinICE.start(this.i);
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Cannot start ice. Activity is null");
        }
    }

    @Deprecated
    public void show(long j) {
        if (this.a != null) {
            this.a.show(j);
        }
        try {
            ThinICE.start(this.i);
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Cannot start ice. Activity is null");
        }
    }

    public void stopLoading() {
        if (this.a != null) {
            this.a.stopLoading();
        }
    }
}