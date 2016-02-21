package com.admob.android.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.tic_mobile.android.connectfour.Config;
import com.tic_mobile.android.connectfour.GameParameters;
import com.tic_mobile.android.connectfour.R;
import java.lang.ref.WeakReference;
import java.util.Vector;

public class AdView extends RelativeLayout {
    static final Handler a;
    private static Boolean b;
    private static Vector<View> r;
    private g c;
    private int d;
    private boolean e;
    private a f;
    private int g;
    private int h;
    private int i;
    private String j;
    private String k;
    private AdListener l;
    private boolean m;
    private boolean n;
    private boolean o;
    private long p;
    private a q;

    class AnonymousClass_1 implements AnimationListener {
        private /* synthetic */ g a;

        AnonymousClass_1(g gVar) {
            this.a = gVar;
        }

        public final void onAnimationEnd(Animation animation) {
            AdView.this.post(new c(this.a, AdView.this));
        }

        public final void onAnimationRepeat(Animation animation) {
        }

        public final void onAnimationStart(Animation animation) {
        }
    }

    private static class a implements Runnable {
        boolean a;
        private WeakReference<AdView> b;

        public a(AdView adView) {
            this.b = new WeakReference(adView);
        }

        public final void run() {
            String str;
            String str2 = AdManager.LOG;
            try {
                AdView adView = (AdView) this.b.get();
                if (!this.a && adView != null) {
                    if (Log.isLoggable(AdManager.LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                        int h = adView.d / 1000;
                        if (Log.isLoggable(AdManager.LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                            Log.d(AdManager.LOG, "Requesting a fresh ad because a request interval passed (" + h + " seconds).");
                        }
                    }
                    adView.a();
                }
            } catch (Exception e) {
                exception = e;
                str = AdManager.LOG;
                if (Log.isLoggable(str2, Config.ACTIVITY_ID_STATS)) {
                    Exception exception2;
                    str = AdManager.LOG;
                    Log.e(str2, "exception caught in RefreshHandler.run(), " + exception2.getMessage());
                }
            }
        }
    }

    private static class b implements Runnable {
        private WeakReference<AdView> a;
        private WeakReference<g> b;
        private int c;
        private boolean d;

        public b(AdView adView, g gVar, int i, boolean z) {
            this.a = new WeakReference(adView);
            this.b = new WeakReference(gVar);
            this.c = i;
            this.d = z;
        }

        public final void run() {
            try {
                AdView adView = (AdView) this.a.get();
                g gVar = (g) this.b.get();
                if (adView != null && gVar != null) {
                    adView.addView(gVar);
                    AdView.a(adView, gVar.b());
                    if (this.c != 0) {
                        adView.c = gVar;
                    } else if (this.d) {
                        AdView.a(adView, gVar);
                    } else {
                        AdView.b(adView, gVar);
                    }
                }
            } catch (Exception e) {
                Log.e(AdManager.LOG, "Unhandled exception placing AdContainer into AdView.", e);
            }
        }
    }

    private static final class c implements Runnable {
        private WeakReference<AdView> a;
        private WeakReference<g> b;

        class AnonymousClass_1 implements AnimationListener {
            private /* synthetic */ g a;
            private /* synthetic */ AdView b;
            private /* synthetic */ g c;

            AnonymousClass_1(c cVar, g gVar, AdView adView, g gVar2) {
                this.a = gVar;
                this.b = adView;
                this.c = gVar2;
            }

            public final void onAnimationEnd(Animation animation) {
                if (this.a != null) {
                    this.b.removeView(this.a);
                }
                this.b.c = this.c;
                if (this.a != null) {
                    this.a.d();
                }
            }

            public final void onAnimationRepeat(Animation animation) {
            }

            public final void onAnimationStart(Animation animation) {
            }
        }

        public c(g gVar, AdView adView) {
            this.b = new WeakReference(gVar);
            this.a = new WeakReference(adView);
        }

        public final void run() {
            String str = AdManager.LOG;
            try {
                AdView adView = (AdView) this.a.get();
                g gVar = (g) this.b.get();
                if (adView != null && gVar != null) {
                    g a = adView.c;
                    if (a != null) {
                        a.setVisibility(8);
                    }
                    gVar.setVisibility(0);
                    Animation jVar = new j(90.0f, 0.0f, ((float) adView.getWidth()) / 2.0f, ((float) adView.getHeight()) / 2.0f, -0.4f * ((float) adView.getWidth()), false);
                    jVar.setDuration(700);
                    jVar.setFillAfter(true);
                    jVar.setInterpolator(new DecelerateInterpolator());
                    jVar.setAnimationListener(new AnonymousClass_1(this, a, adView, gVar));
                    adView.startAnimation(jVar);
                }
            } catch (Exception e) {
                exception = e;
                str = AdManager.LOG;
                if (Log.isLoggable(str, Config.ACTIVITY_ID_STATS)) {
                    Exception exception2;
                    String str2;
                    str2 = AdManager.LOG;
                    Log.e(str, "exception caught in SwapViews.run(), " + exception2.getMessage());
                }
            }
        }
    }

    private static class d implements Runnable {
        private WeakReference<AdView> a;

        public d(AdView adView) {
            this.a = new WeakReference(adView);
        }

        public final void run() {
            Throwable th;
            String str;
            String str2 = AdManager.LOG;
            AdView adView = (AdView) this.a.get();
            if (adView == null) {
                return;
            }
            if (adView.c == null || adView.c.getParent() == null) {
                try {
                    adView.l.onFailedToReceiveAd(adView);
                } catch (Exception e) {
                    th = e;
                    str = AdManager.LOG;
                    Log.w(str2, "Unhandled exception raised in your AdListener.onFailedToReceiveAd.", th);
                }
            } else {
                try {
                    adView.l.onFailedToReceiveRefreshedAd(adView);
                } catch (Exception e2) {
                    th = e2;
                    str = AdManager.LOG;
                    Log.w(str2, "Unhandled exception raised in your AdListener.onFailedToReceiveRefreshedAd.", th);
                }
            }
        }
    }

    static {
        a = new Handler();
        r = new Vector();
    }

    public AdView(Activity activity) {
        this(activity, null, 0);
    }

    public AdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdView(Context context, AttributeSet attributeSet, int i) {
        int attributeUnsignedIntValue;
        int attributeUnsignedIntValue2;
        int i2;
        super(context, attributeSet, i);
        this.n = true;
        setDescendantFocusability(262144);
        setClickable(true);
        setLongClickable(false);
        setGravity(17);
        if (attributeSet != null) {
            String str = "http://schemas.android.com/apk/res/" + context.getPackageName();
            if (attributeSet.getAttributeBooleanValue(str, "testing", false)) {
                Log.w(AdManager.LOG, "AdView's \"testing\" XML attribute has been deprecated and will be ignored.  Please delete it from your XML layout and use AdManager.setTestDevices instead.");
            }
            attributeUnsignedIntValue = attributeSet.getAttributeUnsignedIntValue(str, "backgroundColor", -16777216);
            attributeUnsignedIntValue2 = attributeSet.getAttributeUnsignedIntValue(str, "textColor", -1);
            if (attributeUnsignedIntValue2 >= 0) {
                setTextColor(attributeUnsignedIntValue2);
            }
            attributeUnsignedIntValue2 = attributeSet.getAttributeUnsignedIntValue(str, "primaryTextColor", -1);
            int attributeUnsignedIntValue3 = attributeSet.getAttributeUnsignedIntValue(str, "secondaryTextColor", -1);
            this.j = attributeSet.getAttributeValue(str, "keywords");
            setRequestInterval(attributeSet.getAttributeIntValue(str, "refreshInterval", 0));
            boolean attributeBooleanValue = attributeSet.getAttributeBooleanValue(str, "isGoneWithoutAd", false);
            if (attributeBooleanValue) {
                setGoneWithoutAd(attributeBooleanValue);
            }
            i2 = attributeUnsignedIntValue3;
            int i3 = attributeUnsignedIntValue2;
            attributeUnsignedIntValue2 = attributeUnsignedIntValue;
            attributeUnsignedIntValue = i3;
        } else {
            i2 = -1;
            attributeUnsignedIntValue = -1;
            attributeUnsignedIntValue2 = -16777216;
        }
        setBackgroundColor(attributeUnsignedIntValue2);
        setPrimaryTextColor(attributeUnsignedIntValue);
        setSecondaryTextColor(i2);
        this.c = null;
        this.q = null;
        if (b == null) {
            b = Boolean.valueOf(a(context));
        }
        if (b.booleanValue()) {
            View textView = new TextView(context, attributeSet, i);
            textView.setBackgroundColor(getBackgroundColor());
            textView.setTextColor(getPrimaryTextColor());
            textView.setPadding(GameParameters.DEFAULT_ERROR_MARGIN, GameParameters.DEFAULT_ERROR_MARGIN, GameParameters.DEFAULT_ERROR_MARGIN, GameParameters.DEFAULT_ERROR_MARGIN);
            textView.setTextSize(16.0f);
            textView.setGravity(16);
            textView.setText("Ads by AdMob");
            addView(textView, new LayoutParams(-1, -1));
        }
    }

    private void a() {
        String str = AdManager.LOG;
        t.a(getContext());
        String str2;
        if (!this.n && super.getVisibility() != 0) {
            str2 = AdManager.LOG;
            Log.w(str, "Cannot requestFreshAd() when the AdView is not visible.  Call AdView.setVisibility(View.VISIBLE) first.");
        } else if (this.o) {
            str2 = AdManager.LOG;
            if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
                str2 = AdManager.LOG;
                Log.d(str, "Ignoring requestFreshAd() because we are requesting an ad right now already.");
            }
        } else {
            this.o = true;
            this.p = SystemClock.uptimeMillis();
            new a(this).start();
        }
    }

    static void a(View view) {
        r.add(view);
    }

    static /* synthetic */ void a(AdView adView, d dVar) {
        Throwable th;
        String str;
        String str2 = AdManager.LOG;
        if (adView.l == null) {
            return;
        }
        if (adView.c == null || adView.c.getParent() == null) {
            try {
                adView.l.onReceiveAd(adView);
            } catch (Exception e) {
                th = e;
                str = AdManager.LOG;
                Log.w(str2, "Unhandled exception raised in your AdListener.onReceiveAd.", th);
            }
        } else {
            try {
                adView.l.onReceiveRefreshedAd(adView);
            } catch (Exception e2) {
                th = e2;
                str = AdManager.LOG;
                Log.w(str2, "Unhandled exception raised in your AdListener.onReceiveRefreshedAd.", th);
            }
        }
    }

    static /* synthetic */ void a(AdView adView, g gVar) {
        adView.c = gVar;
        if (adView.m) {
            Animation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(233);
            alphaAnimation.startNow();
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setInterpolator(new AccelerateInterpolator());
            adView.startAnimation(alphaAnimation);
        }
    }

    private void a(boolean z) {
        String str = AdManager.LOG;
        synchronized (this) {
            if (z) {
                if (this.d > 0 && getVisibility() == 0) {
                    int i = this.d;
                    b();
                    if (c()) {
                        this.f = new a(this);
                        a.postDelayed(this.f, (long) i);
                        if (Log.isLoggable(AdManager.LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                            Log.d(AdManager.LOG, "Ad refresh scheduled for " + i + " from now.");
                        }
                    }
                }
            }
            if (!z || this.d == 0) {
                b();
            }
        }
    }

    private static boolean a(Context context) {
        try {
            if (Class.forName("org.json.JSONException") != null) {
                return false;
            }
        } catch (ClassNotFoundException e) {
        }
        return AdManager.getUserId(context) == null;
    }

    private void b() {
        String str = AdManager.LOG;
        if (this.f != null) {
            this.f.a = true;
            this.f = null;
            String str2 = AdManager.LOG;
            if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_secondaryTextColor)) {
                str2 = AdManager.LOG;
                Log.v(str, "Cancelled an ad refresh scheduled for the future.");
            }
        }
    }

    static void b(View view) {
        r.remove(view);
    }

    static /* synthetic */ void b(AdView adView, g gVar) {
        gVar.setVisibility(8);
        Animation jVar = new j(0.0f, -90.0f, ((float) adView.getWidth()) / 2.0f, ((float) adView.getHeight()) / 2.0f, -0.4f * ((float) adView.getWidth()), true);
        jVar.setDuration(700);
        jVar.setFillAfter(true);
        jVar.setInterpolator(new AccelerateInterpolator());
        jVar.setAnimationListener(new AnonymousClass_1(gVar));
        adView.startAnimation(jVar);
    }

    static /* synthetic */ void c(AdView adView) {
        if (adView.l != null) {
            a.post(new d(adView));
        }
    }

    private boolean c() {
        String str = AdManager.LOG;
        if (this.c != null) {
            d b = this.c.b();
            if (b != null && b.d() && this.c.g() < 120) {
                String str2 = AdManager.LOG;
                if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
                    str2 = AdManager.LOG;
                    Log.d(str, "Cannot refresh CPM ads.  Ignoring request to refresh the ad.");
                }
                return false;
            }
        }
        return true;
    }

    static /* synthetic */ a d(AdView adView) {
        if (adView.q == null) {
            adView.q = new a(adView);
        }
        return adView.q;
    }

    final void a(d dVar, g gVar) {
        int visibility = super.getVisibility();
        double a = dVar.a();
        if (a >= 0.0d) {
            this.e = true;
            setRequestInterval((int) a);
            a(true);
        } else {
            this.e = false;
        }
        boolean z = this.n;
        if (z) {
            this.n = false;
        }
        gVar.a(dVar);
        gVar.setVisibility(visibility);
        gVar.setGravity(17);
        dVar.a(gVar);
        gVar.setLayoutParams(new LayoutParams(dVar.a(dVar.e()), dVar.a(dVar.f())));
        a.post(new b(this, gVar, visibility, z));
    }

    public AdListener getAdListener() {
        return this.l;
    }

    public int getBackgroundColor() {
        return this.g;
    }

    public String getKeywords() {
        return this.j;
    }

    public int getPrimaryTextColor() {
        return this.h;
    }

    public int getRequestInterval() {
        return this.d / 1000;
    }

    public String getSearchQuery() {
        return this.k;
    }

    public int getSecondaryTextColor() {
        return this.i;
    }

    @Deprecated
    public int getTextColor() {
        Log.w(AdManager.LOG, "Calling the deprecated method getTextColor!  Please use getPrimaryTextColor and getSecondaryTextColor instead.");
        return getPrimaryTextColor();
    }

    public boolean hasAd() {
        return this.c != null && this.c.b() != null;
    }

    @Deprecated
    public boolean isGoneWithoutAd() {
        Log.w(AdManager.LOG, "Deprecated method isGoneWithoutAd was called.  See JavaDoc for instructions to remove.");
        return false;
    }

    protected void onAttachedToWindow() {
        this.m = true;
        a(true);
        super.onAttachedToWindow();
    }

    protected void onDetachedFromWindow() {
        this.m = false;
        a(false);
        super.onDetachedFromWindow();
    }

    protected void onMeasure(int i, int i2) {
        String str = AdManager.LOG;
        super.onMeasure(i, i2);
        int size = MeasureSpec.getSize(i);
        int mode = MeasureSpec.getMode(i);
        int size2 = MeasureSpec.getSize(i2);
        int mode2 = MeasureSpec.getMode(i2);
        mode = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : AdManager.getScreenWidth(getContext());
        if (mode2 == 1073741824) {
            mode2 = size2;
        } else {
            if (this.c != null) {
                d b = this.c.b();
                if (b != null) {
                    int a = b.a(b.f());
                    if (mode2 != Integer.MIN_VALUE || size2 >= a) {
                        mode2 = a;
                    } else {
                        String str2 = AdManager.LOG;
                        Log.w(str, "Cannot display ad because its container is too small.  The ad is " + a + " pixels tall but is only given " + size2 + " at most to draw into.  Please make your view containing AdView taller.");
                        mode2 = 0;
                    }
                }
            }
            mode2 = 0;
        }
        setMeasuredDimension(mode, mode2);
        String str3 = AdManager.LOG;
        if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_secondaryTextColor)) {
            str3 = AdManager.LOG;
            Log.v(str, "AdView.onMeasure:  widthSize " + size + " heightSize " + size2);
            String str4 = AdManager.LOG;
            Log.v(str, "AdView.onMeasure:  measuredWidth " + mode + " measuredHeight " + mode2);
        }
        size = getMeasuredWidth();
        mode = getMeasuredHeight();
        String str5 = AdManager.LOG;
        if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
            str5 = AdManager.LOG;
            Log.d(str, "AdView size is " + size + " by " + mode);
        }
        if (this.n && !b.booleanValue()) {
            a();
        }
    }

    public void onWindowFocusChanged(boolean z) {
        a(z);
    }

    protected void onWindowVisibilityChanged(int i) {
        a(i == 0);
    }

    public void requestFreshAd() {
        String str = AdManager.LOG;
        if (this.e) {
            String str2 = AdManager.LOG;
            if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
                str2 = AdManager.LOG;
                Log.d(str, "Request interval overridden by the server.  Ignoring requestFreshAd.");
            }
        } else {
            long uptimeMillis = (SystemClock.uptimeMillis() - this.p) / 1000;
            if (uptimeMillis > 0 && uptimeMillis < 13) {
                String str3 = AdManager.LOG;
                if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
                    str3 = AdManager.LOG;
                    Log.d(str, "Ignoring requestFreshAd.  Called " + uptimeMillis + " seconds since last refresh.  " + "Refreshes must be at least " + 13 + " apart.");
                }
            } else if (c()) {
                a();
            }
        }
    }

    public void setAdListener(AdListener adListener) {
        synchronized (this) {
            this.l = adListener;
        }
    }

    public void setBackgroundColor(int i) {
        this.g = -16777216 | i;
        invalidate();
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
    }

    @Deprecated
    public void setGoneWithoutAd(boolean z) {
        Log.w(AdManager.LOG, "Deprecated method setGoneWithoutAd was called.  See JavaDoc for instructions to remove.");
    }

    public void setKeywords(String str) {
        this.j = str;
    }

    public void setPrimaryTextColor(int i) {
        this.h = -16777216 | i;
    }

    public void setRequestInterval(int i) {
        String str = "AdView.setRequestInterval(";
        String str2 = AdManager.LOG;
        int i2 = i * 1000;
        if (this.d != i2) {
            String str3;
            if (i > 0) {
                String str4;
                if (i < 13) {
                    str3 = AdManager.LOG;
                    str4 = "AdView.setRequestInterval(";
                    Log.w(str2, str + i + ") seconds must be >= " + 13);
                    i2 = 13000;
                } else if (i > 600) {
                    str3 = AdManager.LOG;
                    str4 = "AdView.setRequestInterval(";
                    Log.w(str2, str + i + ") seconds must be <= " + 600);
                    i2 = 600000;
                }
            }
            this.d = i2;
            if (i <= 0) {
                b();
            }
            str3 = AdManager.LOG;
            Log.i(str2, "Requesting fresh ads every " + i + " seconds.");
        }
    }

    public void setSearchQuery(String str) {
        this.k = str;
    }

    public void setSecondaryTextColor(int i) {
        this.i = -16777216 | i;
    }

    @Deprecated
    public void setTextColor(int i) {
        Log.w(AdManager.LOG, "Calling the deprecated method setTextColor!  Please use setPrimaryTextColor and setSecondaryTextColor instead.");
        setPrimaryTextColor(i);
        setSecondaryTextColor(i);
    }

    public void setVisibility(int i) {
        if (super.getVisibility() != i) {
            synchronized (this) {
                int childCount = getChildCount();
                int i2 = 0;
                while (i2 < childCount) {
                    getChildAt(i2).setVisibility(i);
                    i2++;
                }
                super.setVisibility(i);
                invalidate();
            }
        }
        a(i == 0);
    }
}