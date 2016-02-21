package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.AdWebViewUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.Map;
import java.util.Random;

public final class MMAdView extends MMLayout implements OnClickListener, AnimationListener {
    public static final int TRANSITION_DOWN = 3;
    public static final int TRANSITION_FADE = 1;
    public static final int TRANSITION_NONE = 0;
    public static final int TRANSITION_RANDOM = 4;
    public static final int TRANSITION_UP = 2;
    static final int a = -50;
    private static final String w = "MMAdView";
    ImageView b;
    int c;
    int d;
    int e;
    int f;
    int g;
    ResizeView h;

    class BannerBounds {
        int a;
        int b;
        DTOResizeParameters c;

        private class BoundsResult {
            int a;
            int b;

            private BoundsResult() {
            }
        }

        BannerBounds(DTOResizeParameters dTOResizeParameters) {
            this.c = dTOResizeParameters;
            this.a = MMAdView.this;
            this.b = dTOResizeParameters.e;
        }

        private BoundsResult a(int i, int i2, int i3, int i4) {
            if (i + i3 + i2 > i4) {
                i2 += i4 - i3;
                if (i2 < 0) {
                    i2 = TRANSITION_NONE;
                    i3 = i4;
                } else if (i2 + i3 > i4) {
                    i2 = i4 - i3;
                }
            } else if (i2 <= 0) {
                i2 = i;
            }
            BoundsResult boundsResult = new BoundsResult(null);
            boundsResult.a = i2 - i;
            boundsResult.b = i3;
            return boundsResult;
        }

        private void b() {
            int[] iArr = new int[2];
            MMAdView.this.getLocationInWindow(iArr);
            BoundsResult a = a(iArr[0], MMAdView.this, this.c.a, this.c.g);
            this.c.a = a.b;
            this.a = a.a;
        }

        private void c() {
            int[] iArr = new int[2];
            MMAdView.this.getLocationInWindow(iArr);
            BoundsResult a = a(iArr[1], this.c.e, this.c.b, this.c.h);
            this.c.b = a.b;
            this.b = a.a;
        }

        LayoutParams a(LayoutParams layoutParams) {
            layoutParams.width = this.c.a;
            layoutParams.height = this.c.b;
            return layoutParams;
        }

        void a() {
            b();
            c();
        }
    }

    class MMAdViewMMAdImpl extends MMLayoutMMAdImpl {

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ Animation a;

            AnonymousClass_1(Animation animation) {
                this.a = animation;
            }

            public void run() {
                MMAdViewMMAdImpl.this.startAnimation(this.a);
            }
        }

        public MMAdViewMMAdImpl(Context context) {
            super(context);
            this.p = new MMAdViewWebViewClientListener(this);
        }

        void a(Bitmap bitmap) {
            MMAdView.this.b.setImageBitmap(bitmap);
            MMAdView.this.b.setVisibility(TRANSITION_NONE);
            MMAdView.this.b.bringToFront();
        }

        void a(Map map) {
            if (MMAdView.this.d > 0) {
                map.put(MMRequest.KEY_HEIGHT, String.valueOf(MMAdView.this.d));
            }
            if (MMAdView.this.e > 0) {
                map.put(MMRequest.KEY_WIDTH, String.valueOf(MMAdView.this.e));
            }
            super.a(map);
        }

        boolean h() {
            return MMAdView.this.c != 0;
        }

        public boolean hasCachedVideoSupport() {
            return false;
        }

        void i() {
            if (MMAdView.this.b.getDrawable() != null) {
                Animation translateAnimation;
                int i = MMAdView.this.c;
                if (i == 4) {
                    i = new Random().nextInt(TRANSITION_RANDOM);
                }
                switch (i) {
                    case TRANSITION_UP:
                        translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, -((float) MMAdView.this.getHeight()));
                        break;
                    case TRANSITION_DOWN:
                        translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, (float) MMAdView.this.getHeight());
                        break;
                    default:
                        translateAnimation = new AlphaAnimation(1.0f, 0.0f);
                        break;
                }
                translateAnimation.setDuration(AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                translateAnimation.setAnimationListener(MMAdView.this);
                translateAnimation.setFillEnabled(true);
                translateAnimation.setFillBefore(true);
                translateAnimation.setFillAfter(true);
                MMSDK.a(new AnonymousClass_1(translateAnimation));
            }
        }

        public boolean isBanner() {
            return true;
        }

        String m() {
            return MMBroadcastReceiver.ACTION_GETAD_FAILED;
        }

        String n() {
            return MMBroadcastReceiver.ACTION_GETAD_SUCCEEDED;
        }

        String o() {
            return "getad";
        }

        boolean r() {
            return MMAdView.this.getWindowToken() != null;
        }
    }

    private static class MMAdViewWebViewClientListener extends BasicWebViewClientListener {
        MMAdViewWebViewClientListener(MMAdImpl mMAdImpl) {
            super(mMAdImpl);
        }

        public void onPageFinished(String str) {
            super.onPageFinished(str);
            MMAdImpl mMAdImpl = (MMAdImpl) this.a.get();
            if (mMAdImpl != null && mMAdImpl.h()) {
                mMAdImpl.i();
            }
        }
    }

    class ResizeView extends View {
        public ResizeView(Context context) {
            super(context);
        }

        synchronized void a(View view) {
            MMAdView.this.a(view);
            if (getParent() != null && getParent() instanceof ViewGroup) {
                ((ViewGroup) getParent()).addView(view);
            }
        }

        protected void onRestoreInstanceState(Parcelable parcelable) {
            MMLog.b(w, "onRestoreInstanceState");
            MMAdView.this.b(MMAdView.this);
            super.onRestoreInstanceState(parcelable);
        }

        protected Parcelable onSaveInstanceState() {
            MMLog.b(w, "onSaveInstanceState");
            a(MMAdView.this);
            return super.onSaveInstanceState();
        }
    }

    public MMAdView(Context context) {
        super(context);
        this.c = 4;
        this.d = 0;
        this.e = 0;
        this.f = -50;
        this.g = -50;
        this.i = new MMAdViewMMAdImpl(context);
        b(context);
    }

    @Deprecated
    public MMAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public MMAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = 4;
        this.d = 0;
        this.e = 0;
        this.f = -50;
        this.g = -50;
        if (isInEditMode()) {
            c(context);
        } else {
            MMLog.b(w, "Creating MMAdView from XML layout.");
            this.i = new MMAdViewMMAdImpl(context);
            if (attributeSet != null) {
                String str = "http://millennialmedia.com/android/schema";
                setApid(attributeSet.getAttributeValue(str, "apid"));
                this.i.f = attributeSet.getAttributeBooleanValue(str, "ignoreDensityScaling", false);
                Object attributeValue = attributeSet.getAttributeValue(str, MMLayout.KEY_HEIGHT);
                Object attributeValue2 = attributeSet.getAttributeValue(str, MMLayout.KEY_WIDTH);
                try {
                    if (!TextUtils.isEmpty(attributeValue)) {
                        this.d = Integer.parseInt(attributeValue);
                    }
                    if (!TextUtils.isEmpty(attributeValue2)) {
                        this.e = Integer.parseInt(attributeValue2);
                    }
                } catch (NumberFormatException e) {
                    MMLog.e(w, "Error reading attrs file from xml", e);
                }
                if (this.i.d != null) {
                    this.i.d.a = attributeSet.getAttributeValue(str, MMRequest.KEY_AGE);
                    this.i.d.b = attributeSet.getAttributeValue(str, MMRequest.KEY_CHILDREN);
                    this.i.d.c = attributeSet.getAttributeValue(str, MMRequest.KEY_EDUCATION);
                    this.i.d.d = attributeSet.getAttributeValue(str, MMRequest.KEY_ETHNICITY);
                    this.i.d.e = attributeSet.getAttributeValue(str, MMRequest.KEY_GENDER);
                    this.i.d.f = attributeSet.getAttributeValue(str, MMRequest.KEY_INCOME);
                    this.i.d.g = attributeSet.getAttributeValue(str, MMRequest.KEY_KEYWORDS);
                    this.i.d.h = attributeSet.getAttributeValue(str, MMRequest.KEY_MARITAL_STATUS);
                    this.i.d.i = attributeSet.getAttributeValue(str, MMRequest.KEY_POLITICS);
                    this.i.d.j = attributeSet.getAttributeValue(str, MMRequest.KEY_VENDOR);
                    this.i.d.k = attributeSet.getAttributeValue(str, MMRequest.KEY_ZIP_CODE);
                }
                this.j = attributeSet.getAttributeValue(str, "goalId");
            }
            b(context);
        }
    }

    private void a(int i) {
        try {
            View.class.getMethod("setTranslationX", new Class[]{Float.TYPE}).invoke(this, new Object[]{Integer.valueOf(i)});
        } catch (Exception e) {
            MMLog.e(w, "Unable to call setTranslationX", e);
        }
    }

    private synchronized void a(View view) {
        if (view != null) {
            ViewParent parent = getParent();
            if (parent != null && parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
        }
    }

    private void b(int i) {
        try {
            View.class.getMethod("setTranslationY", new Class[]{Float.TYPE}).invoke(this, new Object[]{Integer.valueOf(i)});
        } catch (Exception e) {
            MMLog.e(w, "Unable to call setTranslationY", e);
        }
    }

    private void b(Context context) {
        setBackgroundColor(TRANSITION_NONE);
        this.i.h = "b";
        setOnClickListener(this);
        setFocusable(true);
        this.b = new ImageView(context);
        this.b.setScaleType(ScaleType.FIT_XY);
        this.b.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        addView(this.b, new RelativeLayout.LayoutParams(-2, -2));
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
    }

    private synchronized void b(View view) {
        a(view);
        Context context = getContext();
        if (context != null && context instanceof Activity) {
            Window window = ((Activity) context).getWindow();
            if (window != null) {
                View decorView = window.getDecorView();
                if (decorView != null && decorView instanceof ViewGroup) {
                    ((ViewGroup) decorView).addView(view);
                }
            }
        }
    }

    private void c() {
        if (d()) {
            LayoutParams layoutParams = getLayoutParams();
            this.g = layoutParams.width;
            this.f = layoutParams.height;
            if (this.g <= 0) {
                this.g = getWidth();
            }
            if (this.f <= 0) {
                this.f = getHeight();
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void c(android.content.Context r8) {
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.android.MMAdView.c(android.content.Context):void");
        /*
        r7 = this;
        r1 = 0;
        r4 = new android.widget.ImageView;
        r4.<init>(r8);
        r0 = "http://images.millennialmedia.com/9513/192134.gif";
        r0 = "java.io.tmpdir";
        r0 = java.lang.System.getProperty(r0);	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        if (r0 == 0) goto L_0x002b;
    L_0x0010:
        r2 = java.io.File.separator;	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r2 = r0.endsWith(r2);	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        if (r2 != 0) goto L_0x002b;
    L_0x0018:
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r2.<init>();	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r0 = r2.append(r0);	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r2 = java.io.File.separator;	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r0 = r0.append(r2);	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r0 = r0.toString();	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
    L_0x002b:
        r5 = new java.io.File;	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r2.<init>();	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r0 = r2.append(r0);	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r2 = "millenial355jns6u3l1nmedia.png";
        r0 = r0.append(r2);	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r0 = r0.toString();	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r5.<init>(r0);	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r0 = r5.exists();	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        if (r0 != 0) goto L_0x00e4;
    L_0x0049:
        r0 = new java.net.URL;	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r2 = "http://images.millennialmedia.com/9513/192134.gif";
        r0.<init>(r2);	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r0 = r0.openConnection();	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r2 = 1;
        r0.setDoOutput(r2);	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r2 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
        r0.setConnectTimeout(r2);	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r0.connect();	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r3 = r0.getInputStream();	 Catch:{ Exception -> 0x00dc, all -> 0x00b7 }
        r2 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x00df, all -> 0x00d3 }
        r2.<init>(r5);	 Catch:{ Exception -> 0x00df, all -> 0x00d3 }
        r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r0 = new byte[r0];	 Catch:{ Exception -> 0x007a, all -> 0x00d6 }
    L_0x006f:
        r1 = r3.read(r0);	 Catch:{ Exception -> 0x007a, all -> 0x00d6 }
        if (r1 <= 0) goto L_0x0092;
    L_0x0075:
        r6 = 0;
        r2.write(r0, r6, r1);	 Catch:{ Exception -> 0x007a, all -> 0x00d6 }
        goto L_0x006f;
    L_0x007a:
        r0 = move-exception;
        r1 = r2;
        r2 = r3;
    L_0x007d:
        r3 = "MMAdView";
        r5 = "Error with eclipse xml image display: ";
        com.millennialmedia.android.MMLog.e(r3, r5, r0);	 Catch:{ all -> 0x00da }
        if (r2 == 0) goto L_0x0089;
    L_0x0086:
        r2.close();	 Catch:{ Exception -> 0x00cd }
    L_0x0089:
        if (r1 == 0) goto L_0x008e;
    L_0x008b:
        r1.close();	 Catch:{ Exception -> 0x00cd }
    L_0x008e:
        r7.addView(r4);
        return;
    L_0x0092:
        r1 = r2;
        r2 = r3;
    L_0x0094:
        r0 = r5.getAbsolutePath();	 Catch:{ Exception -> 0x00e2 }
        r0 = android.graphics.BitmapFactory.decodeFile(r0);	 Catch:{ Exception -> 0x00e2 }
        if (r4 == 0) goto L_0x00a3;
    L_0x009e:
        if (r0 == 0) goto L_0x00a3;
    L_0x00a0:
        r4.setImageBitmap(r0);	 Catch:{ Exception -> 0x00e2 }
    L_0x00a3:
        if (r2 == 0) goto L_0x00a8;
    L_0x00a5:
        r2.close();	 Catch:{ Exception -> 0x00ae }
    L_0x00a8:
        if (r1 == 0) goto L_0x008e;
    L_0x00aa:
        r1.close();	 Catch:{ Exception -> 0x00ae }
        goto L_0x008e;
    L_0x00ae:
        r0 = move-exception;
        r1 = "MMAdView";
        r2 = "Error closing file";
    L_0x00b3:
        com.millennialmedia.android.MMLog.e(r1, r2, r0);
        goto L_0x008e;
    L_0x00b7:
        r0 = move-exception;
        r2 = r1;
    L_0x00b9:
        if (r2 == 0) goto L_0x00be;
    L_0x00bb:
        r2.close();	 Catch:{ Exception -> 0x00c4 }
    L_0x00be:
        if (r1 == 0) goto L_0x00c3;
    L_0x00c0:
        r1.close();	 Catch:{ Exception -> 0x00c4 }
    L_0x00c3:
        throw r0;
    L_0x00c4:
        r1 = move-exception;
        r2 = "MMAdView";
        r3 = "Error closing file";
        com.millennialmedia.android.MMLog.e(r2, r3, r1);
        goto L_0x00c3;
    L_0x00cd:
        r0 = move-exception;
        r1 = "MMAdView";
        r2 = "Error closing file";
        goto L_0x00b3;
    L_0x00d3:
        r0 = move-exception;
        r2 = r3;
        goto L_0x00b9;
    L_0x00d6:
        r0 = move-exception;
        r1 = r2;
        r2 = r3;
        goto L_0x00b9;
    L_0x00da:
        r0 = move-exception;
        goto L_0x00b9;
    L_0x00dc:
        r0 = move-exception;
        r2 = r1;
        goto L_0x007d;
    L_0x00df:
        r0 = move-exception;
        r2 = r3;
        goto L_0x007d;
    L_0x00e2:
        r0 = move-exception;
        goto L_0x007d;
    L_0x00e4:
        r2 = r1;
        goto L_0x0094;
        */
    }

    private boolean d() {
        return this.g == -50 && this.f == -50;
    }

    private void getAdInternal() {
        if (this.i != null) {
            this.i.f();
        }
    }

    synchronized void a() {
        if (MMSDK.d()) {
            l();
            if (!d()) {
                LayoutParams layoutParams = getLayoutParams();
                layoutParams.width = this.g;
                layoutParams.height = this.f;
                a((int)TRANSITION_NONE);
                b((int)TRANSITION_NONE);
                this.g = -50;
                this.f = -50;
            }
            if (this.h != null) {
                this.k = true;
                this.h.a(this);
                ViewParent parent = getParent();
                if (parent != null && parent instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    if (this.h.getParent() != null) {
                        viewGroup.removeView(this.h);
                    }
                }
                this.k = false;
            }
        }
    }

    synchronized void a(DTOResizeParameters dTOResizeParameters) {
        this.b.setImageBitmap(null);
        if (MMSDK.d()) {
            if (this.h == null) {
                this.h = new ResizeView(getContext());
                this.h.setId(304025022);
                this.h.setLayoutParams(new RelativeLayout.LayoutParams(1, 1));
                this.h.setBackgroundColor(TRANSITION_NONE);
            }
            if (this.h.getParent() == null) {
                ViewParent parent = getParent();
                if (parent != null && parent instanceof ViewGroup) {
                    ((ViewGroup) parent).addView(this.h);
                }
            }
            BannerBounds bannerBounds = new BannerBounds(dTOResizeParameters);
            if (!dTOResizeParameters.f) {
                bannerBounds.a();
            }
            int[] iArr = new int[2];
            getLocationInWindow(iArr);
            b(this);
            int[] iArr2 = new int[2];
            getLocationInWindow(iArr2);
            c();
            int i = iArr[0] - iArr2[0];
            int i2 = iArr[1] - iArr2[1];
            bannerBounds.a(getLayoutParams());
            a(bannerBounds.a + i);
            b(bannerBounds.b + i2);
            setCloseArea(dTOResizeParameters.c);
        }
    }

    public /* bridge */ /* synthetic */ void addBlackView() {
        super.addBlackView();
    }

    void b() {
        this.i.q();
    }

    public void getAd() {
        if (this.i == null || this.i.e == null) {
            getAdInternal();
        } else {
            getAd(this.i.e);
        }
    }

    public void getAd(RequestListener requestListener) {
        if (this.i != null) {
            this.i.e = requestListener;
        }
        getAdInternal();
    }

    public /* bridge */ /* synthetic */ String getApid() {
        return super.getApid();
    }

    public /* bridge */ /* synthetic */ boolean getIgnoresDensityScaling() {
        return super.getIgnoresDensityScaling();
    }

    public /* bridge */ /* synthetic */ RequestListener getListener() {
        return super.getListener();
    }

    public /* bridge */ /* synthetic */ MMRequest getMMRequest() {
        return super.getMMRequest();
    }

    @Deprecated
    public void onAnimationEnd(Animation animation) {
        this.b.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
    }

    @Deprecated
    public void onAnimationRepeat(Animation animation) {
    }

    @Deprecated
    public void onAnimationStart(Animation animation) {
    }

    @Deprecated
    public void onClick(View view) {
        MMLog.b(w, "On click for " + view.getId() + " view, " + view + " adimpl" + this.i);
        onTouchEvent(MotionEvent.obtain(0, System.currentTimeMillis(), TRANSITION_FADE, BitmapDescriptorFactory.HUE_RED, 0.0f, TRANSITION_NONE));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        ThreadUtils.a(new Runnable() {
            public void run() {
                float f = MMAdView.this.getContext().getResources().getDisplayMetrics().density;
                if (MMAdView.this.e <= 0) {
                    MMAdView.this.e = (int) (((float) MMAdView.this.getWidth()) / f);
                }
                if (MMAdView.this.d <= 0) {
                    MMAdView.this.d = (int) (((float) MMAdView.this.getHeight()) / f);
                }
            }
        });
    }

    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z && this.i != null && this.i.n != null) {
            if (this.i.n.c == null) {
                this.i.n.c = MMAdImplController.d(this.i);
            }
            View view = this.i.n.c;
            if (view != null && !view.a(this.i.k) && !view.g.equals("expanded")) {
                view.w();
                addView(view);
            }
        }
    }

    public /* bridge */ /* synthetic */ void removeBlackView() {
        super.removeBlackView();
    }

    public /* bridge */ /* synthetic */ void setApid(String str) {
        super.setApid(str);
    }

    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        if (this.i != null && this.i.n != null && this.i.n.c != null) {
            this.i.n.c.setBackgroundColor(i);
        }
    }

    public void setHeight(int i) {
        this.d = i;
    }

    public /* bridge */ /* synthetic */ void setIgnoresDensityScaling(boolean z) {
        super.setIgnoresDensityScaling(z);
    }

    public /* bridge */ /* synthetic */ void setListener(RequestListener requestListener) {
        super.setListener(requestListener);
    }

    public /* bridge */ /* synthetic */ void setMMRequest(MMRequest mMRequest) {
        super.setMMRequest(mMRequest);
    }

    public void setTransitionType(int i) {
        this.c = i;
    }

    public void setWidth(int i) {
        this.e = i;
    }
}