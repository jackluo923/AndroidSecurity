package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.MotionEventCompat;
import android.text.TextUtils;
import android.view.TouchDelegate;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.inmobi.androidsdk.impl.ConfigException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.lang.ref.WeakReference;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

class AdViewOverlayView extends MMLayout {
    private static final String g = "AdViewOverlayView";
    private static final String h = "mraidCloseButton";
    OverlaySettings a;
    WeakReference b;
    CloseTopDrawable c;
    private Button d;
    private boolean e;
    private ProgressBar f;

    class AdViewOverlayViewMMAdImpl extends MMLayoutMMAdImpl {
        public AdViewOverlayViewMMAdImpl(Context context) {
            super(AdViewOverlayView.this, context);
            this.p = new OverlayWebViewClientListener(this);
        }

        void a() {
            AdViewOverlayView.this.u();
        }

        boolean b() {
            return AdViewOverlayView.this.d() && !AdViewOverlayView.this.e();
        }

        MMWebViewClient c() {
            MMLog.b(g, "Returning a client for user: OverlayWebViewClient, adimpl=" + AdViewOverlayView.this.i);
            MMWebViewClient bannerExpandedWebViewClient;
            if (AdViewOverlayView.this.i.q != 0 || AdViewOverlayView.this.d()) {
                bannerExpandedWebViewClient = new BannerExpandedWebViewClient(this.p, new OverlayRedirectionListenerImpl(this));
                this.o = bannerExpandedWebViewClient;
                return bannerExpandedWebViewClient;
            } else {
                bannerExpandedWebViewClient = new InterstitialWebViewClient(this.p, new OverlayRedirectionListenerImpl(this));
                this.o = bannerExpandedWebViewClient;
                return bannerExpandedWebViewClient;
            }
        }
    }

    private static class AnimationListener implements android.view.animation.Animation.AnimationListener {
        private WeakReference a;

        public AnimationListener(AdViewOverlayView adViewOverlayView) {
            this.a = new WeakReference(adViewOverlayView);
        }

        public void onAnimationEnd(Animation animation) {
            AdViewOverlayView adViewOverlayView = (AdViewOverlayView) this.a.get();
            if (adViewOverlayView != null) {
                Activity activity = (Activity) adViewOverlayView.getContext();
                MMLog.b(g, "Finishing overlay this is in w/ anim finishOverLayWithAnim()");
                activity.finish();
            }
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
            AdViewOverlayView adViewOverlayView = (AdViewOverlayView) this.a.get();
            if (adViewOverlayView != null && adViewOverlayView.d != null) {
                adViewOverlayView.d.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            }
        }
    }

    private static class CloseDrawable extends Drawable {
        protected boolean a;
        protected final Paint b;

        CloseDrawable(boolean z) {
            this.a = true;
            this.a = z;
            this.b = new Paint();
            this.b.setAntiAlias(true);
            this.b.setStyle(Style.STROKE);
        }

        public void draw(Canvas canvas) {
            int i;
            Rect copyBounds = copyBounds();
            int i2 = copyBounds.right - copyBounds.left;
            int i3 = copyBounds.bottom - copyBounds.top;
            float f = ((float) i2) / 6.0f;
            this.b.setStrokeWidth(f);
            i = this.a ? 255 : 80;
            this.b.setARGB(MotionEventCompat.ACTION_MASK, i, i, i);
            canvas.drawLine(f / 2.0f, f / 2.0f, ((float) i2) - f / 2.0f, ((float) i3) - f / 2.0f, this.b);
            canvas.drawLine(((float) i2) - f / 2.0f, f / 2.0f, f / 2.0f, ((float) i3) - f / 2.0f, this.b);
        }

        public int getOpacity() {
            return ConfigException.MISSING_CONFIG_CHANGES;
        }

        public void setAlpha(int i) {
        }

        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    private static class CloseTopDrawable extends CloseDrawable {
        final float c;
        final float d;

        CloseTopDrawable(boolean z, float f) {
            super(z);
            this.c = f;
            this.d = 4.0f * f;
            this.b.setColor(-16777216);
        }

        public void draw(Canvas canvas) {
            Rect copyBounds = copyBounds();
            float f = ((float) (copyBounds.right - copyBounds.left)) / 10.0f;
            float f2 = ((float) copyBounds.right) - this.c * 20.0f;
            float f3 = ((float) copyBounds.top) + this.c * 20.0f;
            this.b.setStrokeWidth(f);
            this.b.setColor(-16777216);
            this.b.setStyle(Style.STROKE);
            canvas.drawCircle(f2, f3, 12.0f * this.c, this.b);
            this.b.setColor(-1);
            this.b.setStyle(Style.FILL_AND_STROKE);
            canvas.drawCircle(f2, f3, this.c * 10.0f, this.b);
            this.b.setColor(-16777216);
            canvas.drawCircle(f2, f3, 7.0f * this.c, this.b);
            this.b.setColor(-1);
            this.b.setStrokeWidth(f / 2.0f);
            this.b.setStyle(Style.STROKE);
            canvas.drawLine(f2 - this.d, f3 - this.d, f2 + this.d, f3 + this.d, this.b);
            canvas.drawLine(f2 + this.d, f3 - this.d, f2 - this.d, f3 + this.d, this.b);
        }
    }

    private static class FetchWebViewContentTask extends AsyncTask {
        private String a;
        private boolean b;
        private WeakReference c;

        public FetchWebViewContentTask(AdViewOverlayView adViewOverlayView, String str) {
            this.a = str;
            this.c = new WeakReference(adViewOverlayView);
        }

        protected String a(Void... voidArr) {
            this.b = true;
            if (!TextUtils.isEmpty(this.a)) {
                try {
                    HttpResponse a = new HttpGetRequest().a(this.a);
                    if (a != null) {
                        StatusLine statusLine = a.getStatusLine();
                        if (!(a == null || statusLine == null || statusLine.getStatusCode() == 404)) {
                            HttpEntity entity = a.getEntity();
                            if (entity != null) {
                                String a2 = HttpGetRequest.a(entity.getContent());
                                this.b = false;
                                return a2;
                            }
                        }
                    }
                } catch (Exception e) {
                    MMLog.e(g, "Unable to get weboverlay", e);
                }
            }
            return null;
        }

        protected void a(String str) {
            AdViewOverlayView adViewOverlayView = (AdViewOverlayView) this.c.get();
            if (adViewOverlayView != null) {
                if (this.b) {
                    AdViewOverlayActivity adViewOverlayActivity = (AdViewOverlayActivity) adViewOverlayView.b.get();
                    if (adViewOverlayActivity != null) {
                        adViewOverlayActivity.finish();
                    } else {
                        adViewOverlayView.u();
                    }
                }
                if (str != null && adViewOverlayView.i != null && adViewOverlayView.i.n != null) {
                    adViewOverlayView.i.n.a(str, this.a);
                }
            }
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((String) obj);
        }

        protected void onPreExecute() {
            AdViewOverlayView adViewOverlayView = (AdViewOverlayView) this.c.get();
            if (adViewOverlayView != null && adViewOverlayView.f == null) {
                adViewOverlayView.s();
            }
            super.onPreExecute();
        }
    }

    private static final class NonConfigurationInstance {
        boolean a;
        MMAdImplController b;
        OverlaySettings c;

        private NonConfigurationInstance() {
        }
    }

    static class OverlayRedirectionListenerImpl extends MMAdImplRedirectionListenerImpl {
        public OverlayRedirectionListenerImpl(MMAdImpl mMAdImpl) {
            super(mMAdImpl);
        }

        public boolean isExpandingToUrl() {
            MMAdImpl mMAdImpl = (MMAdImpl) this.f.get();
            return (mMAdImpl == null || !(mMAdImpl instanceof AdViewOverlayViewMMAdImpl)) ? false : mMAdImpl.b();
        }
    }

    private static class OverlayWebViewClientListener extends BasicWebViewClientListener {
        OverlayWebViewClientListener(MMAdImpl mMAdImpl) {
            super(mMAdImpl);
        }

        public void onPageFinished(String str) {
            super.onPageFinished(str);
            MMAdImpl mMAdImpl = (MMAdImpl) this.a.get();
            if (mMAdImpl != null) {
                mMAdImpl.a();
            }
        }
    }

    static class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        String a;
        public Object customInlineLayoutParams;

        static {
            CREATOR = new Creator() {
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(null);
                }

                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.a);
        }
    }

    private static class SetCloseButtonTouchDelegateRunnable implements Runnable {
        int a;
        int b;
        int c;
        int d;
        private final Button e;

        SetCloseButtonTouchDelegateRunnable(Button button, int i, int i2, int i3, int i4) {
            this.e = button;
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
        }

        public void run() {
            Rect rect = new Rect();
            this.e.getHitRect(rect);
            rect.top += this.a;
            rect.right += this.d;
            rect.bottom += this.c;
            rect.left += this.b;
            TouchDelegate touchDelegate = new TouchDelegate(rect, this.e);
            if (View.class.isInstance(this.e.getParent())) {
                ((View) this.e.getParent()).setTouchDelegate(touchDelegate);
            }
        }
    }

    AdViewOverlayView(AdViewOverlayActivity adViewOverlayActivity, OverlaySettings overlaySettings) {
        LayoutParams layoutParams;
        super(adViewOverlayActivity.c);
        this.b = new WeakReference(adViewOverlayActivity);
        this.i = new AdViewOverlayViewMMAdImpl(adViewOverlayActivity.c);
        setId(15062);
        this.i.h = "i";
        this.a = overlaySettings;
        NonConfigurationInstance nonConfigurationInstance = null;
        if (adViewOverlayActivity.c instanceof Activity) {
            nonConfigurationInstance = (NonConfigurationInstance) adViewOverlayActivity.c.getLastNonConfigurationInstance();
            if (nonConfigurationInstance != null) {
                this.e = nonConfigurationInstance.a;
                this.i.n = nonConfigurationInstance.b;
                this.a = nonConfigurationInstance.c;
                if (!(this.i == null || this.i.n == null || this.i.n.c == null)) {
                    addView(this.i.n.c);
                }
                MMLog.b(g, "Restoring configurationinstance w/ controller= " + nonConfigurationInstance.b);
            } else {
                MMLog.b(g, "Null configurationinstance ");
            }
        }
        float f = adViewOverlayActivity.c.getResources().getDisplayMetrics().density;
        layoutParams = (this.a.q == 0 || this.a.r == 0) ? new RelativeLayout.LayoutParams(-1, -1) : new RelativeLayout.LayoutParams((int) (((float) this.a.r) * f), (int) (((float) this.a.q) * f));
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        setLayoutParams(layoutParams);
        Integer valueOf = Integer.valueOf((int) ((0.0625f * f) * ((float) this.a.n)));
        setPadding(valueOf.intValue(), valueOf.intValue(), valueOf.intValue(), valueOf.intValue());
        this.d = a(adViewOverlayActivity.c, f);
        if (this.a.b() && !this.a.d()) {
            this.i.q = this.a.z;
        }
        MMAdImplController.b(this.i);
        if (this.d != null) {
            addView(this.d);
        }
        if (!(this.e || this.a.b() || this.a.c())) {
            s();
        }
        if (this.a.j()) {
            if (!(this.i == null || this.i.n == null || this.i.n.c == null)) {
                this.i.n.c.setBackgroundColor(0);
            }
            setBackgroundColor(0);
        } else {
            if (!(this.i == null || this.i.n == null || this.i.n.c == null)) {
                this.i.n.c.setBackgroundColor(-1);
            }
            setBackgroundColor(-1);
        }
        if (!(!this.a.k() || this.i == null || this.i.n == null || this.i.n.c == null)) {
            this.i.n.c.c();
        }
        if (nonConfigurationInstance == null) {
            t();
        }
        a(this.a.i());
    }

    private Button a(Context context, float f) {
        Button button = new Button(context);
        button.setId(301);
        button.setContentDescription(h);
        this.c = new CloseTopDrawable(true, f);
        button.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MMLog.a(g, "Close button clicked.");
                AdViewOverlayView.this.c();
            }
        });
        LayoutParams a = a(f);
        button.setLayoutParams(a);
        button.post(new SetCloseButtonTouchDelegateRunnable(button, a.topMargin, a.leftMargin, a.bottomMargin, a.rightMargin));
        return button;
    }

    private RelativeLayout.LayoutParams a(float f) {
        int i = (int) (50.0f * f + 0.5f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
        return layoutParams;
    }

    private void s() {
        AdViewOverlayActivity adViewOverlayActivity = (AdViewOverlayActivity) this.b.get();
        if (adViewOverlayActivity != null) {
            this.f = new ProgressBar(adViewOverlayActivity.c);
            this.f.setIndeterminate(true);
            this.f.setVisibility(0);
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
            addView(this.f, layoutParams);
        }
    }

    private void t() {
        Animation translateAnimation;
        if (this.a.g().equals("slideup")) {
            translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
            MMLog.a(g, "Translate up");
        } else if (this.a.g().equals("slidedown")) {
            translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, -1.0f, 1, 0.0f);
            MMLog.a(g, "Translate down");
        } else if (this.a.g().equals("explode")) {
            Animation scaleAnimation = new ScaleAnimation(1.1f, 0.9f, 0.1f, 0.9f, 1, 0.5f, 1, 0.5f);
            MMLog.a(g, "Explode");
            translateAnimation = scaleAnimation;
        } else {
            return;
        }
        translateAnimation.setDuration(this.a.f());
        startAnimation(translateAnimation);
    }

    private void u() {
        if (!this.e && this.f != null) {
            this.e = true;
            this.f.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            removeView(this.f);
            this.f = null;
        }
    }

    Object a() {
        NonConfigurationInstance nonConfigurationInstance = new NonConfigurationInstance();
        if (this.i != null) {
            MMLog.b(g, "Saving getNonConfigurationInstance for " + this.i);
            if (!(this.i.n == null || this.i.n.c == null)) {
                this.i.n.c.w();
            }
            nonConfigurationInstance.b = this.i.n;
        }
        nonConfigurationInstance.a = this.e;
        nonConfigurationInstance.c = this.a;
        return nonConfigurationInstance;
    }

    void a(String str) {
        if (this.i.n != null) {
            this.i.n.a(str);
        }
    }

    void a(boolean z) {
        this.a.a(z);
        this.d.setBackgroundDrawable(z ? null : this.c);
    }

    void b() {
        post(new Runnable() {
            public void run() {
                AdViewOverlayView.this.c();
            }
        });
    }

    void b(String str) {
        new FetchWebViewContentTask(this, str).execute(new Void[0]);
    }

    void c() {
        MMLog.b(g, "Ad overlay closed");
        if (((Activity) getContext()) != null) {
            Animation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setAnimationListener(new AnimationListener(this));
            alphaAnimation.setFillEnabled(true);
            alphaAnimation.setFillBefore(true);
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setDuration(400);
            startAnimation(alphaAnimation);
        }
    }

    boolean d() {
        return this.i != null && this.i.q != 0 && MMAdImplController.c(this.i);
    }

    void e() {
        super.e();
        f();
    }

    void f() {
        if (this.d != null) {
            this.d.bringToFront();
        }
    }

    void g() {
        removeView(this.t);
        addView(this.t, this.u.getCustomLayoutParams());
        f();
    }

    void h() {
        removeView(this.t);
        addView(this.t, new RelativeLayout.LayoutParams(-1, -1));
        f();
    }

    void i() {
        if (this.u != null && this.t != null) {
            this.t.setLayoutParams(this.u.getCustomLayoutParams());
            f();
        }
    }

    void j() {
        removeAllViews();
        ViewParent parent = getParent();
        if (parent != null && parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this);
        }
    }

    void k() {
        BridgeMMSpeechkit.a();
        if (this.i != null && this.i.n != null && this.i.n.c != null) {
            this.i.n.c.clearFocus();
            this.i.n.c.q();
            if (this.i.h == "i") {
                this.i.n.c.p();
            }
            this.i.n.c.onPauseWebView();
        }
    }
}