package com.inmobi.androidsdk;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.ads.AdSize;
import com.google.android.gms.location.LocationRequest;
import com.inmobi.androidsdk.AdRequest.ErrorCode;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.bootstrapper.NetworkEventType;
import com.inmobi.androidsdk.carb.CARB;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.androidsdk.impl.ConfigException;
import com.inmobi.androidsdk.impl.ConnBroadcastReciever;
import com.inmobi.androidsdk.impl.SDKUtil;
import com.inmobi.androidsdk.impl.UserInfo;
import com.inmobi.androidsdk.impl.imai.IMAIController;
import com.inmobi.androidsdk.impl.net.HttpRequestCallback;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType;
import com.inmobi.commons.AnimationType;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.cache.ProductCacheConfig;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.commons.metric.EventLog;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.IMWebViewListener;
import com.inmobi.re.container.IMWebView.ViewState;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public final class BannerView extends RelativeLayout {
    public static final int INMOBI_AD_UNIT_120X600 = 13;
    public static final int INMOBI_AD_UNIT_300X250 = 10;
    public static final int INMOBI_AD_UNIT_320X48 = 9;
    public static final int INMOBI_AD_UNIT_320X50 = 15;
    public static final int INMOBI_AD_UNIT_468X60 = 12;
    public static final int INMOBI_AD_UNIT_728X90 = 11;
    public static final String INMOBI_INTERNAL_TAG = "ref-__in__rt";
    public static final String INMOBI_REF_TAG = "ref-tag";
    private static ConnBroadcastReciever a;
    private boolean A;
    private d B;
    private AnimationListener C;
    private HttpRequestCallback D;
    private IMWebViewListener E;
    private boolean F;
    private IMWebView b;
    private IMWebView c;
    private IMWebView d;
    private Activity e;
    private boolean f;
    private UserInfo g;
    private AtomicBoolean h;
    private AtomicBoolean i;
    private Animation j;
    private Animation k;
    private String l;
    private String m;
    private BannerViewListener n;
    private AdRequest o;
    private String p;
    private int q;
    private long r;
    private long s;
    private long t;
    private boolean u;
    private AnimationType v;
    private boolean w;
    private g x;
    private String y;
    private RequestResponseManager z;

    class a implements Runnable {
        final /* synthetic */ int a;
        final /* synthetic */ ErrorCode b;

        a(int i, ErrorCode errorCode) {
            this.a = i;
            this.b = errorCode;
        }

        public void run() {
            try {
                switch (this.a) {
                    case MMException.UNKNOWN_ERROR:
                        BannerView.this.n.onAdRequestCompleted(BannerView.this);
                    case IMBrowserActivity.INTERSTITIAL_ACTIVITY:
                        switch (c.a[this.b.ordinal()]) {
                            case GoogleScorer.CLIENT_GAMES:
                                Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_AD_CLICK);
                                break;
                            case GoogleScorer.CLIENT_PLUS:
                                Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_AD_DOWNLOAD);
                                break;
                            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_AD_INVENTORY);
                                break;
                            case GoogleScorer.CLIENT_APPSTATE:
                                Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_INVALID_APP_ID);
                                break;
                            default:
                                Log.debug(ConfigConstants.LOGGING_TAG, this.b.toString());
                                break;
                        }
                        BannerView.this.n.onAdRequestFailed(BannerView.this, this.b);
                    case IMBrowserActivity.EXPAND_ACTIVITY:
                        BannerView.this.n.onShowAdScreen(BannerView.this);
                    case 103:
                        BannerView.this.n.onDismissAdScreen(BannerView.this);
                    case LocationRequest.PRIORITY_LOW_POWER:
                        BannerView.this.n.onLeaveApplication(BannerView.this);
                    case LocationRequest.PRIORITY_NO_POWER:
                        BannerView.this.n.onShowAdScreen(BannerView.this);
                    case 106:
                        BannerView.this.n.onDismissAdScreen(BannerView.this);
                    default:
                        Log.debug(ConfigConstants.LOGGING_TAG, this.b.toString());
                }
            } catch (Exception e) {
                Log.debug(ConfigConstants.LOGGING_TAG, "Exception giving callback to the publisher ", e);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            BannerView.this.disableHardwareAcceleration();
        }
    }

    static /* synthetic */ class c {
        static final /* synthetic */ int[] a;

        static {
            a = new int[ErrorCode.values().length];
            try {
                a[ErrorCode.AD_CLICK_IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[ErrorCode.AD_DOWNLOAD_IN_PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[ErrorCode.NO_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            a[ErrorCode.INVALID_APP_ID.ordinal()] = 4;
        }
    }

    static class d extends Handler {
        private final WeakReference a;

        public d(BannerView bannerView) {
            this.a = new WeakReference(bannerView);
        }

        public void handleMessage(Message message) {
            BannerView bannerView = (BannerView) this.a.get();
            if (bannerView != null) {
                try {
                    long currentTimeMillis;
                    JSONObject jSONObject;
                    switch (message.what) {
                        case IMBrowserActivity.INTERSTITIAL_ACTIVITY:
                            if (bannerView.A) {
                                currentTimeMillis = System.currentTimeMillis() - bannerView.t;
                                jSONObject = new JSONObject();
                                try {
                                    jSONObject.put(AdDatabaseHelper.TABLE_AD, bannerView.m);
                                    jSONObject.put("t", currentTimeMillis);
                                } catch (JSONException e) {
                                    Log.internal(ConfigConstants.LOGGING_TAG, "Error creating metric logs for fetch_complete at " + System.currentTimeMillis());
                                }
                                Initializer.getLogger().logEvent(new EventLog(NetworkEventType.RENDER_COMPLETE, jSONObject));
                            }
                            removeMessages(108);
                            if (bannerView.u) {
                                bannerView.e();
                                bannerView.u = false;
                            } else if (bannerView.v == AnimationType.ANIMATION_OFF) {
                                bannerView.e();
                            } else {
                                bannerView.x.a(bannerView.v);
                            }
                            break;
                        case IMBrowserActivity.EXPAND_ACTIVITY:
                            bannerView.b(false);
                            break;
                        case LocationRequest.PRIORITY_LOW_POWER:
                            bannerView.a(103, null);
                            break;
                        case LocationRequest.PRIORITY_NO_POWER:
                            bannerView.a((int)IMBrowserActivity.EXPAND_ACTIVITY, null);
                            break;
                        case 106:
                            bannerView.a((int)LocationRequest.PRIORITY_LOW_POWER, null);
                            break;
                        case 107:
                            removeMessages(109);
                            removeMessages(110);
                            bannerView.z.doCancel();
                            currentTimeMillis = System.currentTimeMillis() - bannerView.t;
                            if (bannerView.A) {
                                jSONObject = new JSONObject();
                                try {
                                    jSONObject.put("t", currentTimeMillis);
                                    jSONObject.put("m", 1);
                                } catch (JSONException e2) {
                                    Log.internal(ConfigConstants.LOGGING_TAG, "Error creating metric logs for error at " + System.currentTimeMillis());
                                }
                                Initializer.getLogger().logEvent(new EventLog(NetworkEventType.CONNECT_ERROR, jSONObject));
                            }
                            bannerView.a(false);
                            bannerView.a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, ErrorCode.AD_FETCH_TIMEOUT);
                            break;
                        case 108:
                            IMWebView h;
                            if (bannerView.A) {
                                currentTimeMillis = System.currentTimeMillis() - bannerView.s;
                                jSONObject = new JSONObject();
                                try {
                                    jSONObject.put(AdDatabaseHelper.TABLE_AD, bannerView.m);
                                    jSONObject.put("t", currentTimeMillis);
                                } catch (JSONException e3) {
                                    Log.internal(ConfigConstants.LOGGING_TAG, "Error creating metric logs for fetch_complete at " + System.currentTimeMillis());
                                }
                                Initializer.getLogger().logEvent(new EventLog(NetworkEventType.RENDER_TIMEOUT, jSONObject));
                            }
                            removeMessages(111);
                            removeMessages(IMBrowserActivity.INTERSTITIAL_ACTIVITY);
                            bannerView.a(false);
                            if (bannerView.i()) {
                                h = bannerView.b;
                                bannerView.b = null;
                            } else {
                                h = bannerView.c;
                                bannerView.c = null;
                            }
                            h.cancelLoad();
                            h.stopLoading();
                            h.deinit();
                            bannerView.a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, ErrorCode.AD_RENDERING_TIMEOUT);
                            break;
                        case 109:
                            currentTimeMillis = System.currentTimeMillis() - bannerView.t;
                            if (bannerView.A) {
                                jSONObject = new JSONObject();
                                try {
                                    jSONObject.put(AdDatabaseHelper.TABLE_AD, bannerView.m);
                                    jSONObject.put("t", currentTimeMillis);
                                } catch (JSONException e4) {
                                    Log.internal(ConfigConstants.LOGGING_TAG, "Error creating metric logs for fetch_complete at " + System.currentTimeMillis());
                                }
                                Initializer.getLogger().logEvent(new EventLog(NetworkEventType.FETCH_COMPLETE, jSONObject));
                            }
                            removeMessages(107);
                            if (bannerView.l != null) {
                                bannerView.l = bannerView.l.replace("@__imm_aft@", AdTrackerConstants.BLANK + currentTimeMillis);
                            }
                            bannerView.a(bannerView.l);
                            break;
                        case 110:
                            removeMessages(107);
                            bannerView.a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, (ErrorCode) message.obj);
                            bannerView.a(false);
                            break;
                        case 111:
                            removeMessages(108);
                            removeMessages(IMBrowserActivity.INTERSTITIAL_ACTIVITY);
                            bannerView.a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, ErrorCode.INTERNAL_ERROR);
                            break;
                    }
                } catch (Exception e5) {
                    Log.internal(ConfigConstants.LOGGING_TAG, "Exception hanlde message adview", e5);
                }
            }
            super.handleMessage(message);
        }
    }

    static {
        a = null;
    }

    public BannerView(Activity activity, int i, String str) {
        this(activity);
        a(activity, i, str);
    }

    public BannerView(Activity activity, int i, String str, long j) {
        this(activity);
        this.r = j;
        a(activity, i, str);
    }

    private BannerView(Context context) {
        super(context);
        this.f = true;
        this.h = new AtomicBoolean();
        this.i = new AtomicBoolean();
        this.l = null;
        this.m = null;
        this.o = new AdRequest();
        this.r = -1;
        this.s = 0;
        this.t = 0;
        this.u = true;
        this.v = AnimationType.ROTATE_HORIZONTAL_AXIS;
        this.w = true;
        this.y = "http://i.w.inmobi.com/showad.asm";
        this.B = new d(this);
        this.C = new d(this);
        this.D = new c(this);
        this.E = new b(this);
        this.F = true;
    }

    public BannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = true;
        this.h = new AtomicBoolean();
        this.i = new AtomicBoolean();
        this.l = null;
        this.m = null;
        this.o = new AdRequest();
        this.r = -1;
        this.s = 0;
        this.t = 0;
        this.u = true;
        this.v = AnimationType.ROTATE_HORIZONTAL_AXIS;
        this.w = true;
        this.y = "http://i.w.inmobi.com/showad.asm";
        this.B = new d(this);
        this.C = new d(this);
        this.D = new c(this);
        this.E = new b(this);
        this.F = true;
        if (attributeSet == null) {
            Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_INVALID_ADVIEW_LAYOUT);
        } else {
            String attributeValue = attributeSet.getAttributeValue(null, "appId");
            int attributeIntValue = attributeSet.getAttributeIntValue(null, "adSize", -1);
            String attributeValue2 = attributeSet.getAttributeValue(null, "slotId");
            if (attributeValue2 != null) {
                this.r = Long.parseLong(attributeValue2);
            }
            a((Activity) context, attributeIntValue, attributeValue);
        }
    }

    private void a(int i) {
        if (i < 0) {
            Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_INVALID_AD_SIZE);
        }
    }

    private void a(int i, ErrorCode errorCode) {
        if (!this.F) {
            this.e.runOnUiThread(new b());
        }
        if (!this.w) {
            Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_CALL_BACK);
        } else if (this.n != null) {
            this.e.runOnUiThread(new a(i, errorCode));
        }
    }

    private void a(Activity activity, int i, String str) {
        try {
            SDKUtil.validateAdConfiguration(activity);
        } catch (ConfigException e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "IMConfigException occured while initializing interstitial while validating adView", e);
        }
        InternalSDKUtil.getUserAgent(activity.getApplicationContext());
        a(i);
        this.p = str;
        this.q = i;
        this.e = SDKUtil.getRootActivity(activity);
        IMWebView.setIMAIController(IMAIController.class);
        InternalSDKUtil.printPublisherTestId();
        if (this.b == null) {
            this.b = new IMWebView(this.e, this.E, false, false);
            if (!this.F) {
                this.b.disableHardwareAcceleration();
            }
            this.b.addJavascriptInterface(new IMAIController(this.b), IMAIController.IMAI_BRIDGE);
        }
        if (this.c == null) {
            this.c = new IMWebView(this.e, this.E, false, false);
            if (!this.F) {
                this.c.disableHardwareAcceleration();
            }
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            this.d = this.c;
            addView(this.c, layoutParams);
            this.c.addJavascriptInterface(new IMAIController(this.c), IMAIController.IMAI_BRIDGE);
        }
        d();
        this.x = new g(this, this.C);
        if (a == null) {
            a = new ConnBroadcastReciever();
        }
        this.e.getApplicationContext().registerReceiver(a, new IntentFilter(AdTrackerConstants.CONNECTIVITY_INTENT_ACTION));
    }

    private void a(String str) {
        if (str != null) {
            IMWebView iMWebView;
            if (VERSION.SDK_INT <= 8) {
                str.replaceAll("%", "%25");
            }
            if (i()) {
                if (this.b == null) {
                    this.b = new IMWebView(this.e, this.E, false, false);
                    if (!this.F) {
                        this.b.disableHardwareAcceleration();
                    }
                }
                iMWebView = this.b;
            } else {
                if (this.c == null) {
                    this.c = new IMWebView(this.e, this.E, false, false);
                    if (!this.F) {
                        this.c.disableHardwareAcceleration();
                    }
                }
                iMWebView = this.c;
            }
            iMWebView.addJavascriptInterface(new IMAIController(iMWebView), IMAIController.IMAI_BRIDGE);
            iMWebView.requestOnPageFinishedCallback(this.B.obtainMessage(IMBrowserActivity.INTERSTITIAL_ACTIVITY));
            this.s = System.currentTimeMillis();
            this.B.sendEmptyMessageDelayed(108, (long) Initializer.getConfigParams().getRenderTimeOut());
            iMWebView.resetMraid();
            iMWebView.loadDataWithBaseURL(AdTrackerConstants.BLANK, str, WebRequest.CONTENT_TYPE_HTML, null, null);
        } else {
            a(false);
            Log.debug(ConfigConstants.LOGGING_TAG, "Cannot load Ad. Invalid Ad Response");
            a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, ErrorCode.INTERNAL_ERROR);
        }
    }

    private void a(boolean z) {
        this.h.set(z);
    }

    private void b(boolean z) {
        this.i.set(z);
    }

    private void c() {
        int i = 320;
        int i2 = 0;
        float f = this.e.getResources().getDisplayMetrics().density;
        try {
            switch (this.q) {
                case INMOBI_AD_UNIT_320X48:
                    i2 = ApiEventType.API_MRAID_HIDE_VIDEO;
                    break;
                case INMOBI_AD_UNIT_300X250:
                    i = AdException.INVALID_REQUEST;
                    i2 = 250;
                    break;
                case INMOBI_AD_UNIT_728X90:
                    i = 729;
                    i2 = AdSize.LARGE_AD_HEIGHT;
                    break;
                case INMOBI_AD_UNIT_468X60:
                    i = 468;
                    i2 = ProductCacheConfig.DEFAULT_INTERVAL;
                    break;
                case INMOBI_AD_UNIT_120X600:
                    i = 120;
                    i2 = 600;
                    break;
                case INMOBI_AD_UNIT_320X50:
                    i2 = ApiEventType.API_MRAID_CLOSE_VIDEO;
                    break;
                default:
                    i = 0;
                    break;
            }
            if (i != 0 && i2 != 0) {
                i = (int) (((float) i) * f);
                getLayoutParams().height = (int) (((float) i2) * f);
                getLayoutParams().width = i;
                setLayoutParams(getLayoutParams());
            }
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Cannot set default size for adview", e);
        }
    }

    private void c(boolean z) {
        this.f = z;
        if (z) {
            this.b.deinit();
            this.b = null;
        } else {
            this.c.deinit();
            this.c = null;
        }
    }

    private void d() {
        if (this.g == null) {
            this.g = new UserInfo(this.e);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.e.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            float f = displayMetrics.density;
            Display defaultDisplay = ((WindowManager) this.e.getSystemService("window")).getDefaultDisplay();
            int displayWidth = (int) (((float) WrapperFunctions.getDisplayWidth(defaultDisplay)) / f);
            int displayHeight = (int) (((float) WrapperFunctions.getDisplayHeight(defaultDisplay)) / f);
            this.g.setScreenDensity(String.valueOf(f));
            this.g.setScreenSize(AdTrackerConstants.BLANK + displayWidth + "X" + displayHeight);
            try {
                if (this.b != null && this.g.getPhoneDefaultUserAgent().equals(AdTrackerConstants.BLANK)) {
                    this.g.setPhoneDefaultUserAgent(InternalSDKUtil.getUserAgent(this.e.getApplicationContext()));
                }
            } catch (Exception e) {
                Log.debug(ConfigConstants.LOGGING_TAG, "Exception occured while setting user agent" + e);
            }
        }
        this.g.setAdUnitSlot(String.valueOf(this.q));
        if (this.r != -1) {
            this.g.setSlotId(Long.toString(this.r));
        }
        this.g.updateInfo(this.p, this.o);
    }

    private void e() {
        boolean z = false;
        ErrorCode errorCode = null;
        int i = MMException.UNKNOWN_ERROR;
        try {
            removeAllViews();
            LayoutParams layoutParams;
            if (i()) {
                layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                this.d = this.b;
                addView(this.b, layoutParams);
            } else {
                layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                this.d = this.c;
                addView(this.c, layoutParams);
            }
            if (!i()) {
                z = true;
            }
            c(z);
            a(false);
            j();
            a(i, errorCode);
        } catch (Exception e) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Error swapping banner ads", e);
            a(i, errorCode);
        }
    }

    private boolean f() {
        if (this.q >= 0) {
            return true;
        }
        Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_AD_SIZE);
        return false;
    }

    private boolean g() {
        return this.h.get();
    }

    private boolean h() {
        if (this.i.get()) {
            return true;
        }
        IMWebView iMWebView;
        iMWebView = i() ? this.c : this.b;
        String state = iMWebView.getState();
        Log.debug(ConfigConstants.LOGGING_TAG, "Current Ad State: " + state);
        if (ViewState.EXPANDED.toString().equalsIgnoreCase(state) || ViewState.RESIZED.toString().equalsIgnoreCase(state) || ViewState.RESIZING.toString().equalsIgnoreCase(state) || ViewState.EXPANDING.toString().equalsIgnoreCase(state)) {
            Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_AD_STATE);
            return true;
        } else if (!iMWebView.isBusy()) {
            return false;
        } else {
            Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_AD_BUSY);
            return true;
        }
    }

    private boolean i() {
        return this.f;
    }

    private void j() {
        try {
            if (this.c != null) {
                this.c.setBackgroundColor(0);
            }
            if (this.b != null) {
                this.b.setBackgroundColor(0);
            }
        } catch (Exception e) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Error setNormalBGColor", e);
        }
    }

    Animation a() {
        return this.j;
    }

    void a(Animation animation) {
        this.j = animation;
    }

    Animation b() {
        return this.k;
    }

    void b(Animation animation) {
        this.k = animation;
    }

    public void destroy() {
        try {
            if (this.d != null) {
                this.d.destroy();
            }
        } catch (Exception e) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Unable to destroy webview, or it has been destroyed already.");
        }
        this.d = null;
    }

    public void disableHardwareAcceleration() {
        this.F = false;
        if (this.d != null) {
            this.d.disableHardwareAcceleration();
        }
    }

    public int getAdSize() {
        return this.q;
    }

    public RelativeLayout.LayoutParams getAdViewPosition() {
        RelativeLayout.LayoutParams layoutParams;
        int[] iArr = new int[2];
        RelativeLayout.LayoutParams layoutParams2;
        if (this.d == null || this.d.getLayoutParams() == null || this.d.getParent() == this) {
            layoutParams2 = new RelativeLayout.LayoutParams(getLayoutParams());
            layoutParams2.width = getWidth();
            layoutParams2.height = getHeight();
            getLocationOnScreen(iArr);
            layoutParams2.leftMargin = iArr[0];
            layoutParams2.topMargin = iArr[1];
            layoutParams = layoutParams2;
        } else {
            layoutParams2 = new RelativeLayout.LayoutParams(this.d.getLayoutParams());
            layoutParams2.width = this.d.getWidth();
            layoutParams2.height = this.d.getHeight();
            this.d.getLocationOnScreen(iArr);
            layoutParams2.leftMargin = iArr[0];
            layoutParams2.topMargin = iArr[1];
            layoutParams = layoutParams2;
        }
        ((FrameLayout) getRootView().findViewById(16908290)).getLocationOnScreen(iArr);
        layoutParams.leftMargin -= iArr[0];
        layoutParams.topMargin -= iArr[1];
        layoutParams.rightMargin = 0;
        layoutParams.bottomMargin = 0;
        return layoutParams;
    }

    public String getAppId() {
        return this.p;
    }

    public BannerViewListener getIMAdListener() {
        return this.n;
    }

    public AdRequest getIMAdRequest() {
        return this.o;
    }

    public long getSlotId() {
        return this.r;
    }

    public boolean isModal() {
        return this.d != null ? this.d.isModal() : false;
    }

    public synchronized void loadNewAd() {
        this.z = new RequestResponseManager();
        this.A = Initializer.getLogger().startNewSample();
        InternalSDKUtil.printPublisherTestId();
        Log.debug(ConfigConstants.LOGGING_TAG, " >>>> Start loading new Ad <<<<");
        try {
            if (!InternalSDKUtil.checkNetworkAvailibility(this.e.getApplicationContext())) {
                a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, ErrorCode.NETWORK_ERROR);
            } else if (g()) {
                a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, ErrorCode.AD_DOWNLOAD_IN_PROGRESS);
            } else if (h()) {
                a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, ErrorCode.AD_CLICK_IN_PROGRESS);
            } else if (f()) {
                CARB.getInstance().startCarb();
                a(true);
                d();
                this.t = System.currentTimeMillis();
                this.B.sendEmptyMessageDelayed(107, (long) Initializer.getConfigParams().getFetchTimeOut());
                this.z.asyncRequestSecuredAd(this.g, ActionType.AdRequest, this.y, this.D);
            } else {
                a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, ErrorCode.INVALID_REQUEST);
            }
        } catch (Exception e) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Error in loading ad ", e);
        }
    }

    public void loadNewAd(AdRequest adRequest) {
        if (adRequest != null) {
            setIMAdRequest(adRequest);
        }
        loadNewAd();
    }

    protected void onAttachedToWindow() {
        Log.debug(ConfigConstants.LOGGING_TAG, "onAttachedToWindow");
        this.w = true;
        c();
    }

    protected void onDetachedFromWindow() {
        Log.debug(ConfigConstants.LOGGING_TAG, "onDetatchedFromWindow");
        this.w = false;
        IMWebView iMWebView = i() ? this.c : this.b;
        if (iMWebView != null) {
            iMWebView.deinit();
        }
    }

    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            try {
                RequestResponseManager requestResponseManager = new RequestResponseManager();
                requestResponseManager.init();
                requestResponseManager.processClick(this.e.getApplicationContext(), null);
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception ping in background", e);
            }
        }
    }

    @Deprecated
    public void setAdBackgroundColor(String str) {
    }

    @Deprecated
    public void setAdBackgroundGradientColor(String str, String str2) {
    }

    public void setAdServerUrl(String str) {
        this.y = str;
    }

    public void setAdSize(int i) {
        a(i);
        this.q = i;
    }

    @Deprecated
    public void setAdTextColor(String str) {
    }

    public void setAnimationType(AnimationType animationType) {
        this.v = animationType;
    }

    public void setAppId(String str) {
        this.p = str;
    }

    public void setIMAdListener(BannerViewListener bannerViewListener) {
        this.n = bannerViewListener;
    }

    public void setIMAdRequest(AdRequest adRequest) {
        this.o = adRequest;
    }

    public void setRefTagParam(String str, String str2) {
        if (str == null || str2 == null) {
            Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_NIL_KEY_VALUE);
        } else if (str.trim().equals(AdTrackerConstants.BLANK) || str2.trim().equals(AdTrackerConstants.BLANK)) {
            Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_EMPTY_KEY_VALUE);
        } else if (this.g != null) {
            this.g.setRefTagKey(str.toLowerCase(Locale.ENGLISH));
            this.g.setRefTagValue(str2.toLowerCase(Locale.ENGLISH));
        }
    }

    public void setSlotId(long j) {
        this.r = j;
    }

    public void stopLoading() {
        if (this.B.hasMessages(107)) {
            this.B.removeMessages(107);
            this.B.sendEmptyMessage(107);
        } else if (this.B.hasMessages(108)) {
            this.B.removeMessages(108);
            this.B.sendEmptyMessage(108);
        }
    }
}