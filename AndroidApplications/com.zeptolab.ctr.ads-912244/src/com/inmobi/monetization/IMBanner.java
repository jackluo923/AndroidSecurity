package com.inmobi.monetization;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.inmobi.androidsdk.AdRequest.ErrorCode;
import com.inmobi.androidsdk.BannerView;
import com.inmobi.androidsdk.BannerViewListener;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.commons.AnimationType;
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
import com.inmobi.re.container.mraidimpl.MRAIDInterstitialController;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public final class IMBanner extends RelativeLayout {
    public static final int INMOBI_AD_UNIT_120X600 = 13;
    public static final int INMOBI_AD_UNIT_300X250 = 10;
    public static final int INMOBI_AD_UNIT_320X48 = 9;
    public static final int INMOBI_AD_UNIT_320X50 = 15;
    public static final int INMOBI_AD_UNIT_468X60 = 12;
    public static final int INMOBI_AD_UNIT_728X90 = 11;
    public static final int REFRESH_INTERVAL_MINIMUM = 0;
    public static final int REFRESH_INTERVAL_OFF = -1;
    private static ActionsRule j;
    BannerView a;
    ActionsRule b;
    BannerViewListener c;
    Activity d;
    long e;
    int f;
    AnimationType g;
    boolean h;
    private AtomicBoolean i;
    private IMBannerListener k;
    private AtomicBoolean l;
    private String m;
    private String n;
    private String o;
    private Map p;
    private String q;
    private int r;
    private int s;
    private a t;

    static class a extends Handler {
        private final WeakReference a;

        public a(IMBanner iMBanner) {
            this.a = new WeakReference(iMBanner);
        }

        public void handleMessage(Message message) {
            IMBanner iMBanner = (IMBanner) this.a.get();
            if (iMBanner != null) {
                switch (message.what) {
                    case MMException.UNKNOWN_ERROR:
                        if (iMBanner.r == -1) {
                            return;
                        }
                        if (!iMBanner.d.hasWindowFocus()) {
                            Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_AD_FOCUS);
                        } else if (MRAIDInterstitialController.isInterstitialDisplayed.get()) {
                            Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_INTERSTITIAL_AD_DISPLAYED);
                        } else {
                            iMBanner.a(false);
                        }
                    default:
                        break;
                }
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            if (IMBanner.this.k != null) {
                IMBanner.this.k.onBannerRequestFailed(IMBanner.this, IMErrorCode.DO_MONETIZE);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        public void run() {
            if (IMBanner.this.k != null) {
                IMBanner.this.k.onBannerRequestFailed(IMBanner.this, IMErrorCode.DO_NOTHING);
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ IMErrorCode a;

        d(IMErrorCode iMErrorCode) {
            this.a = iMErrorCode;
        }

        public void run() {
            if (IMBanner.this.k != null) {
                IMBanner.this.k.onBannerRequestFailed(IMBanner.this, this.a);
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        public void run() {
            Log.debug(ConfigConstants.LOGGING_TAG, "AppId Not Set - Please call setAppId on the IMBanner object with a valid appId. For XML, please add \"appId\" attribute to the XML. Please refer integration guideline for more details.");
            if (IMBanner.this.k != null) {
                IMBanner.this.k.onBannerRequestFailed(IMBanner.this, IMErrorCode.INVALID_REQUEST);
            }
            IMBanner.this.h();
        }
    }

    static /* synthetic */ class f {
        static final /* synthetic */ int[] a;

        static {
            a = new int[ActionsRule.values().length];
            try {
                a[ActionsRule.ACTIONS_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[ActionsRule.ACTIONS_TO_MEDIATION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[ActionsRule.MEDIATION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            a[ActionsRule.NO_ADS.ordinal()] = 4;
        }
    }

    class g implements Runnable {
        g() {
        }

        public void run() {
            if (IMBanner.this.k != null) {
                IMBanner.this.k.onBannerRequestFailed(IMBanner.this, IMErrorCode.NO_FILL);
            }
        }
    }

    class h implements BannerViewListener {
        h() {
        }

        public void onAdRequestCompleted(BannerView bannerView) {
            IMBanner.this.i.set(false);
            IMBanner.this.h();
            if (IMBanner.this.k != null) {
                IMBanner.this.k.onBannerRequestSucceeded(IMBanner.this);
            }
        }

        public void onAdRequestFailed(BannerView bannerView, ErrorCode errorCode) {
            if (IMBanner.this.b == ActionsRule.ACTIONS_TO_MEDIATION) {
                if (IMBanner.this.k != null) {
                    IMBanner.this.k.onBannerRequestFailed(IMBanner.this, IMErrorCode.DO_MONETIZE);
                }
            } else if (IMBanner.this.k != null) {
                IMBanner.this.k.onBannerRequestFailed(IMBanner.this, MonetizationUtils.getErrorCode(errorCode));
            }
            IMBanner.this.i.set(false);
            IMBanner.this.h();
        }

        public void onBannerInteraction(BannerView bannerView, Map map) {
            if (IMBanner.this.k != null) {
                IMBanner.this.k.onBannerInteraction(IMBanner.this, map);
            }
        }

        public void onDismissAdScreen(BannerView bannerView) {
            IMBanner.this.l.set(false);
            IMBanner.this.h();
            if (IMBanner.this.k != null) {
                IMBanner.this.k.onDismissBannerScreen(IMBanner.this);
            }
        }

        public void onLeaveApplication(BannerView bannerView) {
            if (IMBanner.this.k != null) {
                IMBanner.this.k.onLeaveApplication(IMBanner.this);
            }
        }

        public void onShowAdScreen(BannerView bannerView) {
            IMBanner.this.l.set(true);
            if (IMBanner.this.k != null) {
                IMBanner.this.k.onShowBannerScreen(IMBanner.this);
            }
        }
    }

    static {
        j = null;
    }

    public IMBanner(Activity activity, long j) {
        super(activity);
        this.a = null;
        this.i = new AtomicBoolean(false);
        this.b = ActionsRule.MEDIATION;
        this.c = null;
        this.l = new AtomicBoolean(false);
        this.e = -1;
        this.f = 15;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.g = null;
        this.h = false;
        this.r = 0;
        this.s = 0;
        this.t = new a(this);
        this.d = activity;
        this.e = j;
        a();
    }

    public IMBanner(Activity activity, String str, int i) {
        super(activity);
        this.a = null;
        this.i = new AtomicBoolean(false);
        this.b = ActionsRule.MEDIATION;
        this.c = null;
        this.l = new AtomicBoolean(false);
        this.e = -1;
        this.f = 15;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.g = null;
        this.h = false;
        this.r = 0;
        this.s = 0;
        this.t = new a(this);
        this.d = activity;
        this.f = i;
        this.q = str;
        a();
    }

    public IMBanner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = null;
        this.i = new AtomicBoolean(false);
        this.b = ActionsRule.MEDIATION;
        this.c = null;
        this.l = new AtomicBoolean(false);
        this.e = -1;
        this.f = 15;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.g = null;
        this.h = false;
        this.r = 0;
        this.s = 0;
        this.t = new a(this);
        this.d = (Activity) context;
        try {
            this.e = Long.parseLong(attributeSet.getAttributeValue(null, "slotId"));
        } catch (Exception e) {
        }
        try {
            this.f = Integer.parseInt(attributeSet.getAttributeValue(null, "adSize"));
        } catch (Exception e2) {
        }
        try {
            this.q = attributeSet.getAttributeValue(null, "appId");
        } catch (Exception e3) {
        }
        if (this.e == -1 && this.q == null) {
            Log.debug(Constants.LOG_TAG, "slotId and appId is missing in IMBanner xml layout. Please integrate using appId or slotId. Refer integration guidelines for more details.");
        }
        a();
    }

    private void a() {
        setRefreshInterval(Initializer.getConfigParams().getDefaultRefreshRate());
        if (InternalSDKUtil.isInitializedSuccessfully()) {
            try {
                ThinICE.start(this.d);
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Cannot start ice. Activity is null");
            }
            if (this.e != -1) {
                b();
            }
        }
    }

    private void a(int i) {
        this.r = i;
        if (i == -1) {
            this.t.removeMessages(MMException.UNKNOWN_ERROR);
        } else {
            int minimumRefreshRate = Initializer.getConfigParams().getMinimumRefreshRate();
            if (i < minimumRefreshRate) {
                Log.debug(ConfigConstants.LOGGING_TAG, "Refresh Interval cannot be less than " + minimumRefreshRate + " seconds. Setting refresh rate to " + minimumRefreshRate);
            }
            h();
        }
    }

    private void a(boolean z) {
        if (InternalSDKUtil.isInitializedSuccessfully()) {
            c();
            if (this.i.get() || this.l.get()) {
                String str;
                IMErrorCode iMErrorCode = IMErrorCode.INVALID_REQUEST;
                str = this.i.get() ? "Banner load is already in progress." : "Banner click in progress.";
                iMErrorCode.setMessage(str);
                this.t.post(new d(iMErrorCode));
                Log.verbose(Constants.LOG_TAG, str);
                h();
            } else {
                this.i.set(true);
                this.t.removeMessages(MMException.UNKNOWN_ERROR);
                if (this.a != null) {
                    Map requestParams = this.a.getIMAdRequest().getRequestParams();
                    if (requestParams == null) {
                        requestParams = new HashMap();
                    }
                    if (z) {
                        requestParams.put("u-rt", "0");
                    } else {
                        requestParams.put("u-rt", "1");
                    }
                    this.a.getIMAdRequest().setRequestParams(requestParams);
                    if (this.q == null && this.e == -1) {
                        this.i.set(false);
                        this.t.post(new e());
                    } else {
                        this.a.loadNewAd();
                    }
                } else {
                    this.i.set(false);
                }
            }
        }
    }

    private ActionsRule b() {
        return LtvpRuleProcessor.getInstance().getLtvpRuleConfig(this.e);
    }

    private void c() {
        if (InternalSDKUtil.isInitializedSuccessfully(false) && !this.i.get() && !this.l.get()) {
            e();
            if (this.e != -1) {
                this.b = b();
                if (j != null) {
                    this.b = j;
                }
                switch (f.a[this.b.ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                    case GoogleScorer.CLIENT_PLUS:
                        d();
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        g();
                        this.t.post(new b());
                        break;
                    case GoogleScorer.CLIENT_APPSTATE:
                        g();
                        this.t.post(new c());
                        break;
                    default:
                        g();
                        this.t.post(new g());
                        break;
                }
            }
            if (this.a != null) {
                MonetizationUtils.updateIMAdRequest(this.a.getIMAdRequest());
                if (!(this.n == null || this.o == null)) {
                    this.a.setRefTagParam(this.n, this.o);
                }
                if (this.p != null) {
                    this.a.getIMAdRequest().setRequestParams(this.p);
                }
                if (this.m != null) {
                    this.a.getIMAdRequest().setKeywords(this.m);
                }
                this.a.setAdSize(this.f);
                if (this.g != null) {
                    this.a.setAnimationType(this.g);
                }
                if (this.h) {
                    this.a.disableHardwareAcceleration();
                }
            }
        }
    }

    private void d() {
        this.a.setAdServerUrl(AnalyticsInitializer.getConfigParams().getEndPoints().getHouseUrl());
        this.a.setSlotId(this.e);
        this.a.getIMAdRequest().setRequestParams(MonetizationUtils.buildLtvpRequestMap(this));
        this.a.setAppId(InMobi.getAppId());
    }

    private void e() {
        if (this.a == null) {
            f();
        }
        if (this.q != null) {
            this.a.setAppId(this.q);
        }
    }

    private void f() {
        this.a = new BannerView(this.d, this.f, InMobi.getAppId(), -1);
        MonetizationUtils.updateIMAdRequest(this.a.getIMAdRequest());
        this.c = new h();
        this.a.setIMAdListener(this.c);
        addView(this.a);
    }

    private void g() {
        if (this.a != null) {
            this.a.destroy();
            removeView(this.a);
            this.a = null;
            this.c = null;
        }
    }

    private void h() {
        this.t.removeMessages(MMException.UNKNOWN_ERROR);
        if (this.r != -1) {
            int minimumRefreshRate = Initializer.getConfigParams().getMinimumRefreshRate();
            if (this.r < minimumRefreshRate) {
                this.t.sendEmptyMessageDelayed(MMException.UNKNOWN_ERROR, (long) (minimumRefreshRate * 1000));
            } else {
                this.t.sendEmptyMessageDelayed(MMException.UNKNOWN_ERROR, (long) (this.r * 1000));
            }
        }
    }

    public void destroy() {
        if (this.a != null) {
            this.a.destroy();
        }
    }

    public void disableHardwareAcceleration() {
        this.h = true;
    }

    public void loadBanner() {
        a(true);
    }

    protected final void onWindowVisibilityChanged(int i) {
        if (i == 0) {
            try {
                ThinICE.start(this.d);
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Cannot start ice. Activity is null");
            }
            a(this.s);
        } else {
            a((int)REFRESH_INTERVAL_OFF);
        }
    }

    public void setAdSize(int i) {
        this.f = i;
    }

    public void setAnimationType(AnimationType animationType) {
        this.g = animationType;
    }

    public void setAppId(String str) {
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.debug(ConfigConstants.LOGGING_TAG, "AppId cannot be null or blank.");
        } else if (this.e != -1) {
            Log.debug(ConfigConstants.LOGGING_TAG, "A new appId cannot be set if a slotId is already set.");
        } else {
            this.q = str;
        }
    }

    public void setIMBannerListener(IMBannerListener iMBannerListener) {
        this.k = iMBannerListener;
    }

    public void setKeywords(String str) {
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Keywords cannot be null or blank.");
        } else {
            this.m = str;
        }
    }

    public void setRefTagParam(String str, String str2) {
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Ref tag key cannot be null or blank.");
        } else if (str2 == null || AdTrackerConstants.BLANK.equals(str2.trim())) {
            Log.debug(ConfigConstants.LOGGING_TAG, "RefTag value cannot be null or blank.");
        } else {
            this.n = str;
            this.o = str2;
        }
    }

    public void setRefreshInterval(int i) {
        this.s = i;
        a(i);
    }

    public void setRequestParams(Map map) {
        if (map == null || map.isEmpty()) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Request params cannot be null or empty.");
        } else {
            this.p = map;
        }
    }

    public void setSlotId(long j) {
        if (j == -1) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Invalid slotId : -1");
        } else if (this.e != -1 || this.q == null) {
            this.e = j;
            if (this.a != null) {
                this.a.setSlotId(this.e);
            }
        } else {
            Log.debug(ConfigConstants.LOGGING_TAG, "A new slotId can be set only if a valid slotId is provided during object construction.");
        }
    }

    public void stopLoading() {
        if (this.a != null) {
            this.a.stopLoading();
        }
    }
}