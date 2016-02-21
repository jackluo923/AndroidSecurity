package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.os.Handler;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.admarvel.android.ads.AdMarvelAd.AdType;
import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.util.Logging;
import com.brightcove.player.model.Video.Fields;
import com.facebook.ads.internal.AdWebViewUtils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.File;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

public class AdMarvelView extends LinearLayout {
    static String a;
    public static boolean b;
    protected static boolean d;
    private static boolean j;
    private static boolean o;
    private static WeakReference x;
    private boolean A;
    final String c;
    private int e;
    private int f;
    private int g;
    private int h;
    private final o i;
    private boolean k;
    private boolean l;
    private final AtomicLong m;
    private boolean n;
    private boolean p;
    private final j q;
    private final k r;
    private final Handler s;
    private Map t;
    private boolean u;
    private boolean v;
    private boolean w;
    private AdMarvelAd y;
    private boolean z;

    public static interface AdMarvelViewListener {
        void onClickAd(AdMarvelView adMarvelView, String str);

        void onClose();

        void onExpand();

        void onFailedToReceiveAd(AdMarvelView adMarvelView, int i, ErrorReason errorReason);

        void onReceiveAd(AdMarvelView adMarvelView);

        void onRequestAd(AdMarvelView adMarvelView);
    }

    public static interface AdMarvelViewExtendedListener {
        void onAdDisplayed(AdMarvelView adMarvelView);

        void onAdFetched(AdMarvelView adMarvelView, AdMarvelAd adMarvelAd);
    }

    final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ Activity a;

        AnonymousClass_1(Activity activity) {
            this.a = activity;
        }

        public void run() {
            Utils.getViewPort(this.a);
            com.admarvel.android.util.e.c(this.a);
        }
    }

    class AnonymousClass_2 implements AnimationListener {
        final /* synthetic */ View a;
        final /* synthetic */ AdMarvelAd b;

        AnonymousClass_2(View view, AdMarvelAd adMarvelAd) {
            this.a = view;
            this.b = adMarvelAd;
        }

        public void onAnimationEnd(Animation animation) {
            AdMarvelView.this.post(new m(this.a, AdMarvelView.this, this.b));
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
        }
    }

    private static class a implements Runnable {
        private final WeakReference a;
        private final File b;

        public a(Context context, File file) {
            this.a = new WeakReference(context);
            this.b = file;
        }

        public void run() {
            Context context = (Context) this.a.get();
            if (context == null) {
                return;
            }
            if (Version.getAndroidSDKVersion() >= 11) {
                new a(context, this.b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
            } else {
                new a(context, this.b).execute(new Object[0]);
            }
        }
    }

    private static class b implements Runnable {
        private final File a;
        private final WeakReference b;
        private final Map c;
        private final String d;
        private final String e;
        private final String f;
        private final int g;
        private final String h;
        private final WeakReference i;
        private final int j;
        private final String k;
        private final Handler l;

        public b(File file, Context context, Map map, String str, String str2, String str3, int i, String str4, AdMarvelView adMarvelView, int i2, String str5, Handler handler) {
            this.b = new WeakReference(context);
            this.a = file;
            this.c = map;
            this.d = str;
            this.e = str2;
            this.f = str3;
            this.g = i;
            this.h = str4;
            this.i = new WeakReference(adMarvelView);
            this.j = i2;
            this.k = str5;
            this.l = handler;
        }

        public void run() {
            Context context = (Context) this.b.get();
            AdMarvelView adMarvelView = (AdMarvelView) this.i.get();
            if (context != null && adMarvelView != null) {
                if (Version.getAndroidSDKVersion() >= 11) {
                    this.l.post(new c(this.a, context, this.c, this.d, this.e, this.f, this.g, this.h, adMarvelView, this.j, this.k, this.l));
                } else {
                    new n(this.a, context).execute(new Object[]{this.c, this.d, this.e, this.f, Integer.valueOf(this.g), this.h, adMarvelView, Integer.valueOf(this.j), this.k, this.l, Boolean.valueOf(adMarvelView.b()), Boolean.valueOf(adMarvelView.u)});
                }
            }
        }
    }

    private static class c implements Runnable {
        private final File a;
        private final WeakReference b;
        private final Map c;
        private final String d;
        private final String e;
        private final String f;
        private final int g;
        private final String h;
        private final WeakReference i;
        private final int j;
        private final String k;
        private final Handler l;

        public c(File file, Context context, Map map, String str, String str2, String str3, int i, String str4, AdMarvelView adMarvelView, int i2, String str5, Handler handler) {
            this.b = new WeakReference(context);
            this.a = file;
            this.c = map;
            this.d = str;
            this.e = str2;
            this.f = str3;
            this.g = i;
            this.h = str4;
            this.i = new WeakReference(adMarvelView);
            this.j = i2;
            this.k = str5;
            this.l = handler;
        }

        public void run() {
            if (this.b.get() != null && this.i.get() != null) {
                new n(this.a, (Context) this.b.get()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[]{this.c, this.d, this.e, this.f, Integer.valueOf(this.g), this.h, this.i.get(), Integer.valueOf(this.j), this.k, this.l, Boolean.valueOf(((AdMarvelView) this.i.get()).b()), Boolean.valueOf(((AdMarvelView) this.i.get()).u)});
            }
        }
    }

    private static class d implements Runnable {
        private final WeakReference a;

        public d(AdMarvelView adMarvelView) {
            this.a = new WeakReference(adMarvelView);
        }

        public void run() {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                View findViewWithTag = adMarvelView.findViewWithTag("CURRENT");
                adMarvelView.a(findViewWithTag);
                if (!adMarvelView.k) {
                    adMarvelView.b(findViewWithTag);
                }
                adMarvelView.removeAllViews();
                if (x != null) {
                    x.clear();
                }
                AdMarvelAdapterInstances.destroyAdMarvelAdapterInstances(adMarvelView.c);
                AdMarvelInternalWebView.c();
            }
        }
    }

    private static class e implements Runnable {
        private final AdMarvelAd a;
        private final WeakReference b;

        public e(AdMarvelView adMarvelView, AdMarvelAd adMarvelAd) {
            this.a = adMarvelAd;
            this.b = new WeakReference(adMarvelView);
        }

        public void run() {
            try {
                AdMarvelView adMarvelView = (AdMarvelView) this.b.get();
                if (adMarvelView != null) {
                    Context context = adMarvelView.getContext();
                    if (context != null) {
                        View findViewWithTag = adMarvelView.findViewWithTag("PENDING");
                        if (findViewWithTag != null) {
                            if (AdMarvelUtils.isLogDumpEnabled() && this.a != null) {
                                this.a.setResponseJson();
                            }
                            View findViewWithTag2 = adMarvelView.findViewWithTag("CURRENT");
                            if (findViewWithTag2 == null || adMarvelView.l || !findViewWithTag2.isShown()) {
                                if (this.a != null && this.a.isMustBeVisible() && this.a.getSdkAdNetwork() == SDKAdNetwork.PULSE3D) {
                                    findViewWithTag.setTag("CURRENT");
                                    adMarvelView.a(findViewWithTag2);
                                } else {
                                    adMarvelView.a(findViewWithTag2);
                                    adMarvelView.d();
                                    findViewWithTag.setTag("CURRENT");
                                    findViewWithTag.setVisibility(0);
                                    adMarvelView.setHorizontalGravity(1);
                                    adMarvelView.removeAllViews();
                                    adMarvelView.addView(findViewWithTag);
                                }
                                if (!adMarvelView.k) {
                                    adMarvelView.b(findViewWithTag2);
                                }
                                if (this.a != null) {
                                    if (adMarvelView.a()) {
                                        adMarvelView.i.b(context, adMarvelView, this.a.getSiteId(), this.a.getId(), this.a.getTargetParams(), this.a.getIpAddress());
                                    } else {
                                        adMarvelView.i.a(context, adMarvelView, this.a.getSiteId(), this.a.getId(), this.a.getTargetParams(), this.a.getIpAddress());
                                    }
                                }
                                if (AdMarvelUtils.isLogDumpEnabled()) {
                                    new Handler().postDelayed(new f(this.a, context), AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                                }
                            } else {
                                adMarvelView.a(findViewWithTag, this.a);
                            }
                            Utils utils = new Utils(context, adMarvelView.s);
                            if (b && !adMarvelView.w) {
                                new com.admarvel.android.util.a.b().a(this.a, context, adMarvelView.s);
                            } else if (!b) {
                                utils.firePixel(this.a);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class f implements Runnable {
        private final AdMarvelAd a;
        private final Context b;

        public f(AdMarvelAd adMarvelAd, Context context) {
            this.a = adMarvelAd;
            if (!(context instanceof Activity || x == null || x.get() == null)) {
                context = (Context) x.get();
            }
            this.b = context;
        }

        public void run() {
            com.admarvel.android.util.a b = com.admarvel.android.util.a.b(this.b);
            if (b != null) {
                int a = b.a(this.b);
                this.a.setAdHistoryCounter(a);
                b.a(this.a.getAdHistoryDumpString(), a);
            }
        }
    }

    private static class g implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        public g(AdMarvelView adMarvelView, Handler handler) {
            this.a = new WeakReference(adMarvelView);
            this.b = new WeakReference(handler);
        }

        public void run() {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                Handler handler = (Handler) this.b.get();
                Context context = adMarvelView.getContext();
                View findViewWithTag = adMarvelView.findViewWithTag("CURRENT");
                if (findViewWithTag != null && findViewWithTag instanceof AdMarvelWebView) {
                    AdMarvelAd adMarvelAd = ((AdMarvelWebView) findViewWithTag).getAdMarvelAd();
                    if (adMarvelAd != null) {
                        new com.admarvel.android.util.a.b().a(adMarvelAd, context, handler);
                    }
                }
            }
        }
    }

    private static class h implements Runnable {
        private final WeakReference a;

        public h(AdMarvelView adMarvelView) {
            this.a = new WeakReference(adMarvelView);
        }

        public void run() {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                View findViewWithTag = adMarvelView.findViewWithTag("CURRENT");
                if (findViewWithTag != null && findViewWithTag instanceof AdMarvelWebView) {
                    ((AdMarvelWebView) findViewWithTag).e();
                }
            }
        }
    }

    private static class i {
        static void a(Activity activity) {
            activity.getWindow().setFlags(16777216, 16777216);
        }
    }

    private static class j implements AdMarvelAdapterListener {
        private final WeakReference a;
        private AdMarvelAd b;

        public j(AdMarvelView adMarvelView) {
            this.a = new WeakReference(adMarvelView);
            this.b = this.a.get() != null ? ((AdMarvelView) this.a.get()).y : null;
        }

        public void onClickAd(String str) {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                AdMarvelAd g = adMarvelView.y;
                if (g != null) {
                    adMarvelView.i.a(adMarvelView.getContext(), adMarvelView, str, g.getSiteId(), g.getId(), g.getTargetParams(), g.getIpAddress());
                }
            }
        }

        public void onClose() {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                adMarvelView.k = false;
                adMarvelView.i.b();
            }
        }

        public void onExpand() {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                adMarvelView.k = true;
                adMarvelView.i.a();
            }
        }

        public void onFailedToReceiveAd(int i, ErrorReason errorReason) {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                int i2;
                AdMarvelAd g = adMarvelView.y;
                adMarvelView.s.post(new l(adMarvelView));
                boolean z = 0;
                if (g.getRetry().equals(Boolean.valueOf(true)) && g.getRetrynum() <= g.getMaxretries()) {
                    String bannerid;
                    int retrynum = g.getRetrynum() + 1;
                    String excluded = g.getExcluded();
                    if (g.getExcluded() == null) {
                        bannerid = g.getBannerid();
                    } else if (g.getExcluded().length() > 0) {
                        bannerid = excluded + "," + g.getBannerid();
                    } else {
                        bannerid = g.getBannerid();
                    }
                    File file = null;
                    if (a != null) {
                        file = new File(a);
                    }
                    if (adMarvelView.getContext() != null) {
                        Logging.log("Retry : onRequestAd");
                        adMarvelView.s.post(new b(file, adMarvelView.getContext(), g.getTargetParams(), g.getPartnerId(), g.getSiteId(), g.getAndroidId(), g.getOrientation(), g.getDeviceConnectivity(), adMarvelView, retrynum, bannerid, adMarvelView.s));
                    }
                    i2 = 1;
                }
                if (i2 == 0) {
                    adMarvelView.i.a(adMarvelView.getContext(), adMarvelView, i, errorReason, g.getSiteId(), g.getId(), g.getTargetParams(), g.getIpAddress());
                }
            }
        }

        public void onReceiveAd() {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                adMarvelView.s.post(new e(adMarvelView, adMarvelView.y));
            }
        }

        public void onReceiveNativeAd(Object obj) {
        }
    }

    private static class k implements p {
        private final WeakReference a;

        public k(AdMarvelView adMarvelView) {
            this.a = new WeakReference(adMarvelView);
        }

        public void a() {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                adMarvelView.i.a();
            }
        }

        public void a(AdMarvelAd adMarvelAd, String str) {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                adMarvelView.i.a(adMarvelView.getContext(), adMarvelView, str, adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
            }
        }

        public void a(AdMarvelWebView adMarvelWebView, AdMarvelAd adMarvelAd) {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                adMarvelView.s.post(new e(adMarvelView, adMarvelAd));
            }
        }

        public void a(AdMarvelWebView adMarvelWebView, AdMarvelAd adMarvelAd, int i, ErrorReason errorReason) {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                View findViewWithTag = adMarvelView.findViewWithTag("PENDING");
                if (findViewWithTag != null) {
                    adMarvelView.removeView(findViewWithTag);
                }
                if (adMarvelAd != null) {
                    adMarvelView.i.a(adMarvelView.getContext(), adMarvelView, i, errorReason, adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
                }
            }
        }

        public void b() {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                adMarvelView.i.b();
            }
        }
    }

    private static class l implements Runnable {
        final WeakReference a;

        public l(AdMarvelView adMarvelView) {
            this.a = new WeakReference(adMarvelView);
        }

        public void run() {
            AdMarvelView adMarvelView = (AdMarvelView) this.a.get();
            if (adMarvelView != null) {
                View findViewWithTag = adMarvelView.findViewWithTag("PENDING");
                if (findViewWithTag != null) {
                    adMarvelView.removeView(findViewWithTag);
                }
            }
        }
    }

    private static class m implements Runnable {
        private final WeakReference a;
        private final WeakReference b;
        private final AdMarvelAd c;

        public m(View view, AdMarvelView adMarvelView, AdMarvelAd adMarvelAd) {
            this.a = new WeakReference(view);
            this.b = new WeakReference(adMarvelView);
            this.c = adMarvelAd;
        }

        public void run() {
            if (this.a != null && this.b != null) {
                View view = (View) this.a.get();
                AdMarvelView adMarvelView = (AdMarvelView) this.b.get();
                if (adMarvelView != null) {
                    View findViewWithTag = adMarvelView.findViewWithTag("CURRENT");
                    if (findViewWithTag != null) {
                        adMarvelView.a(findViewWithTag);
                        adMarvelView.d();
                        view.setVisibility(0);
                        view.setTag("CURRENT");
                        adMarvelView.removeAllViews();
                        adMarvelView.addView(view);
                        if (!adMarvelView.k) {
                            adMarvelView.b(findViewWithTag);
                        }
                        Animation wVar = new w(90.0f, 0.0f, ((float) adMarvelView.getWidth()) / 2.0f, ((float) adMarvelView.getHeight()) / 2.0f, -0.3f * ((float) adMarvelView.getWidth()), false);
                        wVar.setDuration(700);
                        wVar.setFillAfter(true);
                        wVar.setInterpolator(new DecelerateInterpolator());
                        adMarvelView.startAnimation(wVar);
                        if (this.c != null) {
                            if (adMarvelView.a()) {
                                adMarvelView.i.b(adMarvelView.getContext(), adMarvelView, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            } else {
                                adMarvelView.i.a(adMarvelView.getContext(), adMarvelView, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            }
                            if (AdMarvelUtils.isLogDumpEnabled()) {
                                new Handler().postDelayed(new f(this.c, adMarvelView.getContext()), AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                            }
                        }
                    }
                }
            }
        }
    }

    static {
        j = false;
        o = true;
        d = true;
    }

    public AdMarvelView(Context context) {
        this(context, null);
    }

    public AdMarvelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = false;
        this.n = true;
        this.p = false;
        this.u = true;
        this.v = false;
        this.w = false;
        this.z = false;
        this.A = false;
        this.i = new o();
        this.u = true;
        this.s = new Handler();
        this.c = UUID.randomUUID().toString();
        AdMarvelAdapterInstances.buildAdMarvelAdapterInstances(this.c);
        Logging.log(Version.getVersionDump());
        setFocusable(true);
        setDescendantFocusability(AccessibilityEventCompat.TYPE_GESTURE_DETECTION_START);
        setClickable(true);
        String str = "http://schemas.android.com/apk/res/" + context.getPackageName();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue(str, "backgroundColor") != null) {
                if ("0".equals(attributeSet.getAttributeValue(str, "backgroundColor"))) {
                    this.e = 0;
                } else {
                    this.e = Integer.parseInt(attributeSet.getAttributeValue(str, "backgroundColor").replace("#", AdTrackerConstants.BLANK), MMException.REQUEST_NOT_PERMITTED);
                }
            }
            if (attributeSet.getAttributeValue(str, "textBackgroundColor") != null) {
                this.f = Integer.parseInt(attributeSet.getAttributeValue(str, "textBackgroundColor").replace("#", AdTrackerConstants.BLANK), MMException.REQUEST_NOT_PERMITTED);
            }
            if (attributeSet.getAttributeValue(str, "textFontColor") != null) {
                this.g = Integer.parseInt(attributeSet.getAttributeValue(str, "textFontColor").replace("#", AdTrackerConstants.BLANK), MMException.REQUEST_NOT_PERMITTED);
            }
            if (attributeSet.getAttributeValue(str, "textBorderColor") != null) {
                this.h = Integer.parseInt(attributeSet.getAttributeValue(str, "textBorderColor").replace("#", AdTrackerConstants.BLANK), MMException.REQUEST_NOT_PERMITTED);
            }
            if (attributeSet.getAttributeValue(str, "disableAnimation") != null) {
                this.l = Boolean.parseBoolean(attributeSet.getAttributeValue(str, "disableAnimation"));
            }
            if (attributeSet.getAttributeValue(str, "enableClickRedirect") != null) {
                this.n = Boolean.parseBoolean(attributeSet.getAttributeValue(str, "enableClickRedirect"));
            }
            setAdMarvelBackgroundColor(this.e);
        }
        this.m = new AtomicLong(0);
        this.q = new j(this);
        this.r = new k(this);
    }

    private void a(View view) {
        if (view != null && view instanceof AdMarvelWebView) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) view;
            adMarvelWebView.d();
            adMarvelWebView.c();
        }
    }

    private void a(View view, AdMarvelAd adMarvelAd) {
        if (!this.l) {
            setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            setVisibility(0);
            Animation wVar = new w(0.0f, -90.0f, ((float) getWidth()) / 2.0f, ((float) getHeight()) / 2.0f, -0.3f * ((float) getWidth()), true);
            wVar.setDuration(700);
            wVar.setFillAfter(true);
            wVar.setInterpolator(new AccelerateInterpolator());
            wVar.setAnimationListener(new AnonymousClass_2(view, adMarvelAd));
            startAnimation(wVar);
        }
    }

    private void b(View view) {
        try {
            AdMarvelAdapterInstances.getInstance(this.c, Constants.GOOGLEPLAY_SDK_ADAPTER_FULL_CLASSNAME).cleanupView(view);
            Logging.log("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: cleanupView");
        } catch (Exception e) {
        }
        try {
            AdMarvelAdapterInstances.getInstance(this.c, Constants.RHYTHM_SDK_ADAPTER_FULL_CLASSNAME).cleanupView(view);
            Logging.log("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: cleanupView");
        } catch (Exception e2) {
        }
        try {
            AdMarvelAdapterInstances.getInstance(this.c, Constants.GREYSTRIPE_SDK_ADAPTER_FULL_CLASSNAME).cleanupView(view);
            Logging.log("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: cleanupView");
        } catch (Exception e3) {
        }
        try {
            AdMarvelAdapterInstances.getInstance(this.c, Constants.MILLENNIAL_SDK_APAPTER_FULL_CLASSNAME).cleanupView(view);
            Logging.log("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: cleanupView");
        } catch (Exception e4) {
        }
        try {
            AdMarvelAdapterInstances.getInstance(this.c, Constants.AMAZON_SDK_APAPTER_FULL_CLASSNAME).cleanupView(view);
            Logging.log("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: cleanupView");
        } catch (Exception e5) {
        }
        try {
            AdMarvelAdapterInstances.getInstance(this.c, Constants.ADCOLONY_SDK_APAPTER_FULL_CLASSNAME).cleanupView(view);
            Logging.log("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: cleanupView");
        } catch (Exception e6) {
        }
        try {
            AdMarvelAdapterInstances.getInstance(this.c, Constants.PULSE3D_SDK_APAPTER_FULL_CLASSNAME).cleanupView(view);
            Logging.log("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: cleanupView");
        } catch (Exception e7) {
        }
        try {
            AdMarvelAdapterInstances.getInstance(this.c, Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME).cleanupView(view);
            Logging.log("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: cleanupView");
        } catch (Exception e8) {
        }
        try {
            AdMarvelAdapterInstances.getInstance(this.c, Constants.INMOBI_SDK_APAPTER_FULL_CLASSNAME).cleanupView(view);
            Logging.log("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: cleanupView");
        } catch (Exception e9) {
        }
        try {
            AdMarvelAdapterInstances.getInstance(this.c, Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME).cleanupView(view);
            Logging.log("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: cleanupView");
        } catch (Exception e10) {
        }
    }

    private void d() {
        if (!this.l) {
            Animation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(233);
            alphaAnimation.startNow();
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setInterpolator(new AccelerateInterpolator());
            startAnimation(alphaAnimation);
        }
    }

    public static synchronized void disableNetworkActivity() {
        synchronized (AdMarvelView.class) {
            com.admarvel.android.util.a.b.a();
        }
    }

    public static synchronized void enableNetworkActivity(Activity activity, String str) {
        synchronized (AdMarvelView.class) {
            com.admarvel.android.util.a.b.b(activity, str);
        }
    }

    public static void forceCloseFullScreenAd(Activity activity, AdMarvelActivity adMarvelActivity, AdMarvelVideoActivity adMarvelVideoActivity) {
        if (adMarvelActivity != null) {
            adMarvelActivity.finish();
        }
        if (adMarvelVideoActivity != null) {
            adMarvelVideoActivity.finish();
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.GOOGLEPLAY_SDK_ADAPTER_FULL_CLASSNAME).forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: forceCloseFullScreenAd");
        } catch (Exception e) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.RHYTHM_SDK_ADAPTER_FULL_CLASSNAME).forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: forceCloseFullScreenAd");
        } catch (Exception e2) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.GREYSTRIPE_SDK_ADAPTER_FULL_CLASSNAME).forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: forceCloseFullScreenAd");
        } catch (Exception e3) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.MILLENNIAL_SDK_APAPTER_FULL_CLASSNAME).forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: forceCloseFullScreenAd");
        } catch (Exception e4) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.AMAZON_SDK_APAPTER_FULL_CLASSNAME).forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: forceCloseFullScreenAd");
        } catch (Exception e5) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.ADCOLONY_SDK_APAPTER_FULL_CLASSNAME).forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: forceCloseFullScreenAd");
        } catch (Exception e6) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.PULSE3D_SDK_APAPTER_FULL_CLASSNAME).forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: forceCloseFullScreenAd");
        } catch (Exception e7) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME).forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: forceCloseFullScreenAd");
        } catch (Exception e8) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.INMOBI_SDK_APAPTER_FULL_CLASSNAME).forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: forceCloseFullScreenAd");
        } catch (Exception e9) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME).forceCloseFullScreenAd(activity);
            Logging.log("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: forceCloseFullScreenAd");
        } catch (Exception e10) {
        }
    }

    public static void initialize(Activity activity, Map map) {
        if (Version.getAndroidSDKVersion() >= 11 && o) {
            i.a(activity);
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.GOOGLEPLAY_SDK_ADAPTER_FULL_CLASSNAME).initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: startActivity");
        } catch (Exception e) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.RHYTHM_SDK_ADAPTER_FULL_CLASSNAME).initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: startActivity");
        } catch (Exception e2) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.GREYSTRIPE_SDK_ADAPTER_FULL_CLASSNAME).initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: startActivity");
        } catch (Exception e3) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.MILLENNIAL_SDK_APAPTER_FULL_CLASSNAME).initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: startActivity");
        } catch (Exception e4) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.AMAZON_SDK_APAPTER_FULL_CLASSNAME).initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: startActivity");
        } catch (Exception e5) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.ADCOLONY_SDK_APAPTER_FULL_CLASSNAME).initialize(activity, map);
            Logging.log("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: startActivity");
        } catch (Exception e6) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.PULSE3D_SDK_APAPTER_FULL_CLASSNAME).initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: startActivity");
        } catch (Exception e7) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME).initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: startActivity");
        } catch (Exception e8) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.INMOBI_SDK_APAPTER_FULL_CLASSNAME).initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: startActivity");
        } catch (Exception e9) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME).initialize(activity, map);
            Logging.log("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: startActivity");
        } catch (Exception e10) {
        }
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, activity).start();
        } catch (Exception e11) {
        }
        new Thread(new AnonymousClass_1(activity)).start();
        Utils.cleanCachedEmebededVideo(activity);
    }

    public static void initializeOfflineSDK(Activity activity, String str) {
        b = true;
        com.admarvel.android.util.a.b.a(activity, str);
    }

    public static void pause(Activity activity, Map map, AdMarvelView adMarvelView) {
        if (adMarvelView != null) {
            View findViewWithTag = adMarvelView.findViewWithTag("CURRENT");
            if (findViewWithTag instanceof AdMarvelWebView) {
                ((AdMarvelWebView) findViewWithTag).a();
            }
        }
        Iterator it = AdMarvelAdapterInstances.getAdMarvelAdapterInstancesForAdMarvelView().entrySet().iterator();
        while (it.hasNext()) {
            try {
                ((AdMarvelAdapter) ((Map) ((Entry) it.next()).getValue()).get(Constants.GOOGLEPLAY_SDK_ADAPTER_FULL_CLASSNAME)).pause(activity, map);
                Logging.log("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: pause");
            } catch (Exception e) {
            }
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.RHYTHM_SDK_ADAPTER_FULL_CLASSNAME).pause(activity, map);
            Logging.log("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: pause");
        } catch (Exception e2) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.GREYSTRIPE_SDK_ADAPTER_FULL_CLASSNAME).pause(activity, map);
            Logging.log("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: pause");
        } catch (Exception e3) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.MILLENNIAL_SDK_APAPTER_FULL_CLASSNAME).pause(activity, map);
            Logging.log("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: pause");
        } catch (Exception e4) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.AMAZON_SDK_APAPTER_FULL_CLASSNAME).pause(activity, map);
            Logging.log("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: pause");
        } catch (Exception e5) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.ADCOLONY_SDK_APAPTER_FULL_CLASSNAME).pause(activity, map);
            Logging.log("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: pause");
        } catch (Exception e6) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.PULSE3D_SDK_APAPTER_FULL_CLASSNAME).pause(activity, map);
            Logging.log("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: pause");
        } catch (Exception e7) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME).pause(activity, map);
            Logging.log("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: pause");
        } catch (Exception e8) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.INMOBI_SDK_APAPTER_FULL_CLASSNAME).pause(activity, map);
            Logging.log("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: pause");
        } catch (Exception e9) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME).pause(activity, map);
            Logging.log("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: pause");
        } catch (Exception e10) {
        }
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, activity).pause();
        } catch (Exception e11) {
        }
    }

    public static void resume(Activity activity, Map map, AdMarvelView adMarvelView) {
        if (adMarvelView != null) {
            View findViewWithTag = adMarvelView.findViewWithTag("CURRENT");
            if (findViewWithTag instanceof AdMarvelWebView) {
                ((AdMarvelWebView) findViewWithTag).b();
            }
        }
        Iterator it = AdMarvelAdapterInstances.getAdMarvelAdapterInstancesForAdMarvelView().entrySet().iterator();
        while (it.hasNext()) {
            try {
                ((AdMarvelAdapter) ((Map) ((Entry) it.next()).getValue()).get(Constants.GOOGLEPLAY_SDK_ADAPTER_FULL_CLASSNAME)).resume(activity, map);
                Logging.log("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: resume");
            } catch (Exception e) {
            }
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.RHYTHM_SDK_ADAPTER_FULL_CLASSNAME).resume(activity, map);
            Logging.log("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: resume");
        } catch (Exception e2) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.GREYSTRIPE_SDK_ADAPTER_FULL_CLASSNAME).resume(activity, map);
            Logging.log("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: resume");
        } catch (Exception e3) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.MILLENNIAL_SDK_APAPTER_FULL_CLASSNAME).resume(activity, map);
            Logging.log("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: resume");
        } catch (Exception e4) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.AMAZON_SDK_APAPTER_FULL_CLASSNAME).resume(activity, map);
            Logging.log("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: resume");
        } catch (Exception e5) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.ADCOLONY_SDK_APAPTER_FULL_CLASSNAME).resume(activity, map);
            Logging.log("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: resume");
        } catch (Exception e6) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.PULSE3D_SDK_APAPTER_FULL_CLASSNAME).resume(activity, map);
            Logging.log("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: resume");
        } catch (Exception e7) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME).resume(activity, map);
            Logging.log("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: resume");
        } catch (Exception e8) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.INMOBI_SDK_APAPTER_FULL_CLASSNAME).resume(activity, map);
            Logging.log("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: resume");
        } catch (Exception e9) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME).resume(activity, map);
            Logging.log("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: resume");
        } catch (Exception e10) {
        }
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, activity).pause();
        } catch (Exception e11) {
        }
    }

    public static void setEnableHardwareAcceleration(boolean z) {
        o = z;
    }

    public static void uninitialize(Context context, Map map) {
        k a = k.a();
        if (a != null && a.b()) {
            a.c();
        }
        i a2 = i.a();
        if (a2 != null) {
            a2.a(context);
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.GOOGLEPLAY_SDK_ADAPTER_FULL_CLASSNAME).uninitialize(context, map);
            Logging.log("com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: endActivity");
        } catch (Exception e) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.RHYTHM_SDK_ADAPTER_FULL_CLASSNAME).uninitialize(context, map);
            Logging.log("com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: endActivity");
        } catch (Exception e2) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.GREYSTRIPE_SDK_ADAPTER_FULL_CLASSNAME).uninitialize(context, map);
            Logging.log("com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: endActivity");
        } catch (Exception e3) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.MILLENNIAL_SDK_APAPTER_FULL_CLASSNAME).uninitialize(context, map);
            Logging.log("com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: endActivity");
        } catch (Exception e4) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.AMAZON_SDK_APAPTER_FULL_CLASSNAME).uninitialize(context, map);
            Logging.log("com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: endActivity");
        } catch (Exception e5) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.ADCOLONY_SDK_APAPTER_FULL_CLASSNAME).uninitialize(context, map);
            Logging.log("com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: endActivity");
        } catch (Exception e6) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.PULSE3D_SDK_APAPTER_FULL_CLASSNAME).uninitialize(context, map);
            Logging.log("com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: endActivity");
        } catch (Exception e7) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME).uninitialize(context, map);
            Logging.log("com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: endActivity");
        } catch (Exception e8) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.INMOBI_SDK_APAPTER_FULL_CLASSNAME).uninitialize(context, map);
            Logging.log("com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: endActivity");
        } catch (Exception e9) {
        }
        try {
            AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME).uninitialize(context, map);
            Logging.log("com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: endActivity");
        } catch (Exception e10) {
        }
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, context).stop();
        } catch (Exception e11) {
        }
        com.admarvel.android.util.e.a();
        Utils.cleanCachedEmebededVideo(context);
    }

    protected void a(AdMarvelAd adMarvelAd) {
        View findViewWithTag = findViewWithTag("CURRENT");
        if (findViewWithTag instanceof AdMarvelWebView) {
            ((AdMarvelWebView) findViewWithTag).d();
        }
        File file = null;
        if (a != null) {
            file = new File(a);
        }
        if (x == null || x.get() == null) {
            findViewWithTag = new AdMarvelWebView(getContext(), this.u, this.v, file, adMarvelAd.getXml(), adMarvelAd, this.s, this.z, this.A);
        } else {
            findViewWithTag = new AdMarvelWebView((Context) x.get(), this.u, this.v, file, adMarvelAd.getXml(), adMarvelAd, this.s, this.z, this.A);
        }
        findViewWithTag.setLayoutParams(new LayoutParams(-2, -2));
        findViewWithTag.setBackgroundColor(this.e);
        findViewWithTag.setEnableClickRedirect(this.n);
        AdMarvelWebView.a(findViewWithTag.e, this.r);
        findViewWithTag.setTag("PENDING");
        findViewWithTag.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        findViewWithTag.a(getTextFontColor(), getTextBorderColor(), getTextBackgroundColor(), getAdMarvelBackgroundColor(), this);
        while (true) {
            View findViewWithTag2 = findViewWithTag("PENDING");
            if (findViewWithTag2 == null) {
                addView(findViewWithTag);
                return;
            } else {
                removeView(findViewWithTag2);
            }
        }
    }

    protected void a(String str, AdMarvelAd adMarvelAd, Context context) {
        if (context != null) {
            String str2;
            String str3 = null;
            try {
                str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                int i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                str2 = str2 != null ? Fields.DURATION + str2 + i + AdMarvelUtils.getSDKVersion() : Fields.DURATION + i + AdMarvelUtils.getSDKVersion();
            } catch (NameNotFoundException e) {
                Logging.log(Log.getStackTraceString(e));
                str2 = str3;
            }
            if (str2 != null) {
                Editor edit = context.getSharedPreferences(Utils.encodeString("admarvel"), 0).edit();
                edit.putString(Utils.encodeString(str2), DateFormat.getDateTimeInstance().format(new Date(System.currentTimeMillis() + ((long) (Integer.parseInt(str) * 1000)))));
                edit.commit();
                Logging.log("requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST");
                this.i.a(getContext(), this, 304, Utils.getErrorReason(304), adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void a(java.util.Map r11, com.admarvel.android.ads.AdMarvelAd r12, java.lang.String r13, android.content.Context r14) {
        throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelView.a(java.util.Map, com.admarvel.android.ads.AdMarvelAd, java.lang.String, android.content.Context):void");
        /*
        r10 = this;
        r9 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        if (r12 == 0) goto L_0x0006;
    L_0x0004:
        r10.y = r12;	 Catch:{ Exception -> 0x0096 }
    L_0x0006:
        r0 = r10.c;	 Catch:{ Exception -> 0x0096 }
        r0 = com.admarvel.android.ads.AdMarvelAdapterInstances.getInstance(r0, r13);	 Catch:{ Exception -> 0x0096 }
        r1 = x;	 Catch:{ Exception -> 0x0096 }
        if (r1 == 0) goto L_0x0083;
    L_0x0010:
        r1 = x;	 Catch:{ Exception -> 0x0096 }
        r1 = r1.get();	 Catch:{ Exception -> 0x0096 }
        if (r1 == 0) goto L_0x0083;
    L_0x0018:
        r1 = r10.q;	 Catch:{ Exception -> 0x0096 }
        r2 = x;	 Catch:{ Exception -> 0x0096 }
        r2 = r2.get();	 Catch:{ Exception -> 0x0096 }
        r2 = (android.content.Context) r2;	 Catch:{ Exception -> 0x0096 }
        r5 = r10.e;	 Catch:{ Exception -> 0x0096 }
        r6 = r10.g;	 Catch:{ Exception -> 0x0096 }
        r3 = r12;
        r4 = r11;
        r0 = r0.requestNewAd(r1, r2, r3, r4, r5, r6);	 Catch:{ Exception -> 0x0096 }
        r1 = r0;
    L_0x002d:
        if (r1 == 0) goto L_0x0082;
    L_0x002f:
        r0 = "PENDING";
        r0 = r10.findViewWithTag(r0);	 Catch:{ Exception -> 0x0096 }
        if (r0 != 0) goto L_0x0092;
    L_0x0037:
        r0 = r10.getLayoutParams();	 Catch:{ Exception -> 0x0096 }
        r2 = r0.width;	 Catch:{ Exception -> 0x0096 }
        if (r2 >= 0) goto L_0x0045;
    L_0x003f:
        r2 = -1;
        r0.width = r2;	 Catch:{ Exception -> 0x0096 }
        r10.setLayoutParams(r0);	 Catch:{ Exception -> 0x0096 }
    L_0x0045:
        r0 = 1;
        r10.setGravity(r0);	 Catch:{ Exception -> 0x0096 }
        r2 = new android.widget.FrameLayout;	 Catch:{ Exception -> 0x0096 }
        r2.<init>(r14);	 Catch:{ Exception -> 0x0096 }
        r0 = new android.widget.FrameLayout$LayoutParams;	 Catch:{ Exception -> 0x0096 }
        r3 = -2;
        r4 = -2;
        r5 = 1;
        r0.<init>(r3, r4, r5);	 Catch:{ Exception -> 0x0096 }
        r2.setLayoutParams(r0);	 Catch:{ Exception -> 0x0096 }
        r0 = r1.getLayoutParams();	 Catch:{ Exception -> 0x0096 }
        r0 = r0 instanceof android.widget.LinearLayout.LayoutParams;	 Catch:{ Exception -> 0x0096 }
        if (r0 == 0) goto L_0x00be;
    L_0x0061:
        r0 = r1.getLayoutParams();	 Catch:{ Exception -> 0x0096 }
        r0 = (android.widget.LinearLayout.LayoutParams) r0;	 Catch:{ Exception -> 0x0096 }
        r3 = 1;
        r0.gravity = r3;	 Catch:{ Exception -> 0x0096 }
        r2.addView(r1, r0);	 Catch:{ Exception -> 0x0096 }
    L_0x006d:
        r0 = "PENDING";
        r2.setTag(r0);	 Catch:{ Exception -> 0x0096 }
        r0 = r12.isMustBeVisible();	 Catch:{ Exception -> 0x0096 }
        if (r0 == 0) goto L_0x00ea;
    L_0x0078:
        r0 = 0;
        r2.setVisibility(r0);	 Catch:{ Exception -> 0x0096 }
    L_0x007c:
        r10.removeAllViews();	 Catch:{ Exception -> 0x0096 }
        r10.addView(r2);	 Catch:{ Exception -> 0x0096 }
    L_0x0082:
        return;
    L_0x0083:
        r1 = r10.q;	 Catch:{ Exception -> 0x0096 }
        r5 = r10.e;	 Catch:{ Exception -> 0x0096 }
        r6 = r10.g;	 Catch:{ Exception -> 0x0096 }
        r2 = r14;
        r3 = r12;
        r4 = r11;
        r0 = r0.requestNewAd(r1, r2, r3, r4, r5, r6);	 Catch:{ Exception -> 0x0096 }
        r1 = r0;
        goto L_0x002d;
    L_0x0092:
        r10.removeView(r0);	 Catch:{ Exception -> 0x0096 }
        goto L_0x002f;
    L_0x0096:
        r0 = move-exception;
        r0 = android.util.Log.getStackTraceString(r0);
        com.admarvel.android.util.Logging.log(r0);
        r0 = r10.i;
        r1 = r10.getContext();
        r4 = com.admarvel.android.ads.Utils.getErrorReason(r9);
        r5 = r12.getSiteId();
        r6 = r12.getId();
        r7 = r12.getTargetParams();
        r8 = r12.getIpAddress();
        r2 = r10;
        r3 = r9;
        r0.a(r1, r2, r3, r4, r5, r6, r7, r8);
        goto L_0x0082;
    L_0x00be:
        r0 = r1.getLayoutParams();	 Catch:{ Exception -> 0x0096 }
        r0 = r0 instanceof android.widget.FrameLayout.LayoutParams;	 Catch:{ Exception -> 0x0096 }
        if (r0 == 0) goto L_0x00d3;
    L_0x00c6:
        r0 = r1.getLayoutParams();	 Catch:{ Exception -> 0x0096 }
        r0 = (android.widget.FrameLayout.LayoutParams) r0;	 Catch:{ Exception -> 0x0096 }
        r3 = 1;
        r0.gravity = r3;	 Catch:{ Exception -> 0x0096 }
        r2.addView(r1, r0);	 Catch:{ Exception -> 0x0096 }
        goto L_0x006d;
    L_0x00d3:
        r0 = r1.getLayoutParams();	 Catch:{ Exception -> 0x0096 }
        r0 = r0 instanceof android.widget.RelativeLayout.LayoutParams;	 Catch:{ Exception -> 0x0096 }
        if (r0 == 0) goto L_0x006d;
    L_0x00db:
        r0 = r1.getLayoutParams();	 Catch:{ Exception -> 0x0096 }
        r0 = (android.widget.RelativeLayout.LayoutParams) r0;	 Catch:{ Exception -> 0x0096 }
        r3 = 13;
        r0.addRule(r3);	 Catch:{ Exception -> 0x0096 }
        r2.addView(r1, r0);	 Catch:{ Exception -> 0x0096 }
        goto L_0x006d;
    L_0x00ea:
        r0 = 8;
        r2.setVisibility(r0);	 Catch:{ Exception -> 0x0096 }
        goto L_0x007c;
        */
    }

    public boolean a() {
        return this.z;
    }

    public void adMarvelViewDisplayed() {
        this.s.post(new g(this, this.s));
    }

    public boolean b() {
        return this.p;
    }

    public void destroy() {
        this.s.post(new d(this));
    }

    public void displayAd(Context context, AdMarvelAd adMarvelAd) {
        this.y = adMarvelAd;
        if (adMarvelAd != null && context != null) {
            try {
                if (adMarvelAd.getAdType() == AdType.SDKCALL && adMarvelAd.getSdkNetwork() != null) {
                    a(adMarvelAd.getTargetParams(), adMarvelAd, adMarvelAd.getSdkNetwork(), context);
                    return;
                } else if (adMarvelAd.isDisableAdrequest()) {
                    String disableAdDuration = adMarvelAd.getDisableAdDuration();
                    if (disableAdDuration != null) {
                        a(disableAdDuration, adMarvelAd, context);
                        return;
                    } else {
                        return;
                    }
                }
                a(adMarvelAd);
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
                ErrorReason errorReason = Utils.getErrorReason(303);
                getListenerImpl().a(context, this, Utils.getErrorCode(errorReason), errorReason, adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
            }
        }
    }

    public void enableAdFetchedModel(boolean z) {
        this.z = z;
    }

    public void fetchNewAd(Map map, String str, String str2) {
        enableAdFetchedModel(true);
        requestNewAd(map, str, str2);
    }

    public void fetchNewAd(Map map, String str, String str2, Activity activity) {
        enableAdFetchedModel(true);
        requestNewAd(map, str, str2, activity);
    }

    public void focus() {
        this.s.post(new h(this));
    }

    public int getAdMarvelBackgroundColor() {
        return this.e;
    }

    o getListenerImpl() {
        return this.i;
    }

    public int getTextBackgroundColor() {
        return this.f;
    }

    public int getTextBorderColor() {
        return this.h;
    }

    public int getTextFontColor() {
        return this.g;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void requestNewAd(java.util.Map r19, java.lang.String r20, java.lang.String r21) {
        throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelView.requestNewAd(java.util.Map, java.lang.String, java.lang.String):void");
        /*
        r18 = this;
        r8 = 0;
        if (r19 == 0) goto L_0x000a;
    L_0x0003:
        r8 = new java.util.HashMap;	 Catch:{ Exception -> 0x0179 }
        r0 = r19;
        r8.<init>(r0);	 Catch:{ Exception -> 0x0179 }
    L_0x000a:
        r1 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r2 = "admarvel";
        r2 = com.admarvel.android.ads.Utils.encodeString(r2);	 Catch:{ Exception -> 0x0179 }
        r3 = 0;
        r2 = r1.getSharedPreferences(r2, r3);	 Catch:{ Exception -> 0x0179 }
        r1 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r1 = r1.getPackageManager();	 Catch:{ Exception -> 0x0179 }
        r3 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r3 = r3.getPackageName();	 Catch:{ Exception -> 0x0179 }
        r4 = 0;
        r1 = r1.getPackageInfo(r3, r4);	 Catch:{ Exception -> 0x0179 }
        r1 = r1.versionName;	 Catch:{ Exception -> 0x0179 }
        r3 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r3 = r3.getPackageManager();	 Catch:{ Exception -> 0x0179 }
        r4 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r4 = r4.getPackageName();	 Catch:{ Exception -> 0x0179 }
        r5 = 0;
        r3 = r3.getPackageInfo(r4, r5);	 Catch:{ Exception -> 0x0179 }
        r3 = r3.versionCode;	 Catch:{ Exception -> 0x0179 }
        if (r1 == 0) goto L_0x00c2;
    L_0x0049:
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0179 }
        r4.<init>();	 Catch:{ Exception -> 0x0179 }
        r5 = "duration";
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x0179 }
        r1 = r4.append(r1);	 Catch:{ Exception -> 0x0179 }
        r1 = r1.append(r3);	 Catch:{ Exception -> 0x0179 }
        r3 = com.admarvel.android.ads.AdMarvelUtils.getSDKVersion();	 Catch:{ Exception -> 0x0179 }
        r1 = r1.append(r3);	 Catch:{ Exception -> 0x0179 }
        r1 = r1.toString();	 Catch:{ Exception -> 0x0179 }
    L_0x0068:
        if (r1 == 0) goto L_0x00de;
    L_0x006a:
        r1 = com.admarvel.android.ads.Utils.encodeString(r1);	 Catch:{ Exception -> 0x0179 }
        r3 = 0;
        r1 = r2.getString(r1, r3);	 Catch:{ Exception -> 0x0179 }
        if (r1 == 0) goto L_0x00de;
    L_0x0075:
        r2 = r1.length();	 Catch:{ Exception -> 0x0179 }
        if (r2 <= 0) goto L_0x00de;
    L_0x007b:
        r2 = java.text.DateFormat.getDateTimeInstance();	 Catch:{ Exception -> 0x0179 }
        r1 = r2.parse(r1);	 Catch:{ Exception -> 0x0179 }
        r2 = java.text.DateFormat.getDateTimeInstance();	 Catch:{ Exception -> 0x0179 }
        r3 = new java.util.Date;	 Catch:{ Exception -> 0x0179 }
        r4 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0179 }
        r3.<init>(r4);	 Catch:{ Exception -> 0x0179 }
        r2 = r2.format(r3);	 Catch:{ Exception -> 0x0179 }
        r3 = java.text.DateFormat.getDateTimeInstance();	 Catch:{ Exception -> 0x0179 }
        r2 = r3.parse(r2);	 Catch:{ Exception -> 0x0179 }
        r1 = r2.before(r1);	 Catch:{ Exception -> 0x0179 }
        if (r1 == 0) goto L_0x00de;
    L_0x00a2:
        r1 = "requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST";
        com.admarvel.android.util.Logging.log(r1);	 Catch:{ Exception -> 0x0179 }
        r0 = r18;
        r1 = r0.i;	 Catch:{ Exception -> 0x0179 }
        r2 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r4 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r3 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r5 = com.admarvel.android.ads.Utils.getErrorReason(r3);	 Catch:{ Exception -> 0x0179 }
        r7 = 0;
        r9 = "";
        r3 = r18;
        r6 = r21;
        r1.a(r2, r3, r4, r5, r6, r7, r8, r9);	 Catch:{ Exception -> 0x0179 }
    L_0x00c1:
        return;
    L_0x00c2:
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0179 }
        r1.<init>();	 Catch:{ Exception -> 0x0179 }
        r4 = "duration";
        r1 = r1.append(r4);	 Catch:{ Exception -> 0x0179 }
        r1 = r1.append(r3);	 Catch:{ Exception -> 0x0179 }
        r3 = com.admarvel.android.ads.AdMarvelUtils.getSDKVersion();	 Catch:{ Exception -> 0x0179 }
        r1 = r1.append(r3);	 Catch:{ Exception -> 0x0179 }
        r1 = r1.toString();	 Catch:{ Exception -> 0x0179 }
        goto L_0x0068;
    L_0x00de:
        r9 = r20.trim();	 Catch:{ Exception -> 0x0179 }
        r10 = r21.trim();	 Catch:{ Exception -> 0x0179 }
        r1 = com.admarvel.android.ads.k.a();	 Catch:{ Exception -> 0x0179 }
        if (r1 == 0) goto L_0x00f5;
    L_0x00ec:
        r2 = r1.b();	 Catch:{ Exception -> 0x0179 }
        if (r2 == 0) goto L_0x00f5;
    L_0x00f2:
        r1.c();	 Catch:{ Exception -> 0x0179 }
    L_0x00f5:
        r1 = com.admarvel.android.ads.i.a();	 Catch:{ Exception -> 0x0179 }
        if (r1 == 0) goto L_0x0102;
    L_0x00fb:
        r2 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r1.a(r2);	 Catch:{ Exception -> 0x0179 }
    L_0x0102:
        r1 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0179 }
        r0 = r18;
        r3 = r0.m;	 Catch:{ Exception -> 0x0179 }
        r4 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0179 }
        r3 = r3.getAndSet(r4);	 Catch:{ Exception -> 0x0179 }
        r1 = r1 - r3;
        r3 = 2000; // 0x7d0 float:2.803E-42 double:9.88E-321;
        r1 = (r1 > r3 ? 1 : (r1 == r3? 0 : -1));
        if (r1 <= 0) goto L_0x0183;
    L_0x0119:
        r0 = r18;
        r1 = r0.i;	 Catch:{ Exception -> 0x0179 }
        r0 = r18;
        r1.a(r0);	 Catch:{ Exception -> 0x0179 }
        r6 = 0;
        r1 = a;	 Catch:{ Exception -> 0x0179 }
        if (r1 == 0) goto L_0x012e;
    L_0x0127:
        r6 = new java.io.File;	 Catch:{ Exception -> 0x0179 }
        r1 = a;	 Catch:{ Exception -> 0x0179 }
        r6.<init>(r1);	 Catch:{ Exception -> 0x0179 }
    L_0x012e:
        r11 = 0;
        if (r8 == 0) goto L_0x013a;
    L_0x0131:
        r1 = "UNIQUE_ID";
        r1 = r8.get(r1);	 Catch:{ Exception -> 0x0179 }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x0179 }
        r11 = r1;
    L_0x013a:
        if (r11 != 0) goto L_0x014c;
    L_0x013c:
        r1 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r1 = com.admarvel.android.util.e.c(r1);	 Catch:{ Exception -> 0x0179 }
        r2 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r11 = r1.b(r2);	 Catch:{ Exception -> 0x0179 }
    L_0x014c:
        r0 = r18;
        r1 = r0.s;	 Catch:{ Exception -> 0x0179 }
        r5 = new com.admarvel.android.ads.AdMarvelView$b;	 Catch:{ Exception -> 0x0179 }
        r7 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r2 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r12 = com.admarvel.android.ads.Utils.getScreenOrientation(r2);	 Catch:{ Exception -> 0x0179 }
        r2 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r13 = com.admarvel.android.ads.Utils.getDeviceConnectivitiy(r2);	 Catch:{ Exception -> 0x0179 }
        r15 = 0;
        r16 = "";
        r0 = r18;
        r0 = r0.s;	 Catch:{ Exception -> 0x0179 }
        r17 = r0;
        r14 = r18;
        r5.<init>(r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17);	 Catch:{ Exception -> 0x0179 }
        r1.post(r5);	 Catch:{ Exception -> 0x0179 }
        goto L_0x00c1;
    L_0x0179:
        r1 = move-exception;
        r1 = android.util.Log.getStackTraceString(r1);
        com.admarvel.android.util.Logging.log(r1);
        goto L_0x00c1;
    L_0x0183:
        r1 = "requestNewAd: AD REQUEST PENDING, IGNORING REQUEST";
        com.admarvel.android.util.Logging.log(r1);	 Catch:{ Exception -> 0x0179 }
        r0 = r18;
        r1 = r0.i;	 Catch:{ Exception -> 0x0179 }
        r2 = r18.getContext();	 Catch:{ Exception -> 0x0179 }
        r4 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r3 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r5 = com.admarvel.android.ads.Utils.getErrorReason(r3);	 Catch:{ Exception -> 0x0179 }
        r7 = 0;
        r9 = "";
        r3 = r18;
        r6 = r10;
        r1.a(r2, r3, r4, r5, r6, r7, r8, r9);	 Catch:{ Exception -> 0x0179 }
        goto L_0x00c1;
        */
    }

    public void requestNewAd(Map map, String str, String str2, Activity activity) {
        x = new WeakReference(activity);
        requestNewAd(map, str, str2);
    }

    public void setAdMarvelBackgroundColor(int i) {
        if (i == 0) {
            this.e = 0;
        } else {
            this.e = -16777216 | i;
        }
        setBackgroundColor(this.e);
    }

    public void setAdmarvelWebViewAsSoftwareLayer(boolean z) {
        this.p = z;
    }

    public void setDisableAnimation(boolean z) {
        this.l = z;
    }

    public void setDisableSDKImpressionTracking(boolean z) {
        this.w = z;
    }

    public void setEnableAutoScaling(boolean z) {
        this.u = z;
    }

    public void setEnableClickRedirect(boolean z) {
        this.n = z;
    }

    public void setEnableFitToScreenForTablets(boolean z) {
        this.v = z;
    }

    public void setExtendedListener(AdMarvelViewExtendedListener adMarvelViewExtendedListener) {
        this.i.a(adMarvelViewExtendedListener);
    }

    public void setListener(AdMarvelViewListener adMarvelViewListener) {
        this.i.a(adMarvelViewListener);
    }

    public void setOptionalFlags(Map map) {
        this.t = map;
        synchronized (a) {
            a = map != null ? (String) map.get("cached_directory") : null;
            if (!(a == null || j)) {
                this.s.post(new a(getContext(), new File(a)));
                j = true;
            }
        }
    }

    public void setPostitialView(boolean z) {
        this.A = z;
    }

    public void setTextBackgroundColor(int i) {
        this.f = -16777216 | i;
    }

    public void setTextBorderColor(int i) {
        this.h = i;
    }

    public void setTextFontColor(int i) {
        this.g = -16777216 | i;
    }

    public void setVisibility(int i) {
        if (i == 8) {
            i = GoogleScorer.CLIENT_APPSTATE;
        }
        super.setVisibility(i);
        requestLayout();
    }

    public void updateCurrentActivity(Activity activity) {
        if (activity != null) {
            x = new WeakReference(activity);
        }
    }
}