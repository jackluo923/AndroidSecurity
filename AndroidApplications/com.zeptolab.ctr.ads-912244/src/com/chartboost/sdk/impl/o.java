package com.chartboost.sdk.impl;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.chartboost.sdk.CBPreferences;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBOrientation.Difference;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class o {

    public static interface a {
        void a_(com.chartboost.sdk.Model.a aVar);
    }

    final class AnonymousClass_1 implements OnGlobalLayoutListener {
        final /* synthetic */ View a;
        final /* synthetic */ com.chartboost.sdk.impl.o.b b;
        final /* synthetic */ com.chartboost.sdk.Model.a c;
        final /* synthetic */ com.chartboost.sdk.impl.o.a d;
        final /* synthetic */ boolean e;

        AnonymousClass_1(View view, com.chartboost.sdk.impl.o.b bVar, com.chartboost.sdk.Model.a aVar, com.chartboost.sdk.impl.o.a aVar2, boolean z) {
            this.a = view;
            this.b = bVar;
            this.c = aVar;
            this.d = aVar2;
            this.e = z;
        }

        public void onGlobalLayout() {
            this.a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            o.c(this.b, this.c, this.d, this.e);
        }
    }

    final class AnonymousClass_2 implements Runnable {
        final /* synthetic */ com.chartboost.sdk.impl.o.a a;
        final /* synthetic */ com.chartboost.sdk.Model.a b;

        AnonymousClass_2(com.chartboost.sdk.impl.o.a aVar, com.chartboost.sdk.Model.a aVar2) {
            this.a = aVar;
            this.b = aVar2;
        }

        public void run() {
            this.a.a(this.b);
        }
    }

    static /* synthetic */ class AnonymousClass_3 {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            b = new int[com.chartboost.sdk.impl.o.b.values().length];
            try {
                b[com.chartboost.sdk.impl.o.b.c.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                b[com.chartboost.sdk.impl.o.b.a.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                b[com.chartboost.sdk.impl.o.b.d.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                b[com.chartboost.sdk.impl.o.b.e.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                b[com.chartboost.sdk.impl.o.b.b.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            a = new int[Difference.values().length];
            try {
                a[Difference.ANGLE_90.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[Difference.ANGLE_180.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[Difference.ANGLE_270.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            a[Difference.ANGLE_0.ordinal()] = 4;
        }
    }

    public enum b {
        PERSPECTIVE_ROTATE,
        BOUNCE,
        PERSPECTIVE_ZOOM,
        SLIDE_FROM_BOTTOM,
        SLIDE_FROM_TOP,
        NONE;

        static {
            a = new com.chartboost.sdk.impl.o.b("PERSPECTIVE_ROTATE", 0);
            b = new com.chartboost.sdk.impl.o.b("BOUNCE", 1);
            c = new com.chartboost.sdk.impl.o.b("PERSPECTIVE_ZOOM", 2);
            d = new com.chartboost.sdk.impl.o.b("SLIDE_FROM_BOTTOM", 3);
            e = new com.chartboost.sdk.impl.o.b("SLIDE_FROM_TOP", 4);
            f = new com.chartboost.sdk.impl.o.b("NONE", 5);
            g = new com.chartboost.sdk.impl.o.b[]{a, b, c, d, e, f};
        }

        public static com.chartboost.sdk.impl.o.b a(int i) {
            return (i != 0 && i > 0 && i <= values().length) ? values()[i - 1] : null;
        }
    }

    public static void a(View view) {
        Animation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(510);
        alphaAnimation.setFillAfter(true);
        view.startAnimation(alphaAnimation);
    }

    public static void a(b bVar, com.chartboost.sdk.Model.a aVar, a aVar2) {
        b(bVar, aVar, aVar2, true);
    }

    public static void b(View view) {
        Animation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(510);
        alphaAnimation.setFillAfter(true);
        view.startAnimation(alphaAnimation);
    }

    public static void b(b bVar, com.chartboost.sdk.Model.a aVar, a aVar2) {
        c(bVar, aVar, aVar2, false);
    }

    private static void b(b bVar, com.chartboost.sdk.Model.a aVar, a aVar2, boolean z) {
        if (bVar == b.f) {
            if (aVar2 != null) {
                aVar2.a(aVar);
            }
        } else if (aVar == null || aVar.h == null) {
            CBLogging.a("CBAnimationManager", "Transition of impression canceled due to lack of container");
        } else {
            View f = aVar.h.f();
            if (f == null) {
                CBLogging.a("CBAnimationManager", "Transition of impression canceled due to lack of view");
            } else {
                ViewTreeObserver viewTreeObserver = f.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnGlobalLayoutListener(new AnonymousClass_1(f, bVar, aVar, aVar2, z));
                }
            }
        }
    }

    private static void c(b bVar, com.chartboost.sdk.Model.a aVar, a aVar2, boolean z) {
        CBPreferences instance = CBPreferences.getInstance();
        Animation animationSet = new AnimationSet(true);
        animationSet.addAnimation(new AlphaAnimation(1.0f, 1.0f));
        if (aVar == null || aVar.h == null) {
            CBLogging.a("CBAnimationManager", "Transition of impression canceled due to lack of container");
        } else {
            View f = aVar.h.f();
            if (f == null) {
                CBLogging.a("CBAnimationManager", "Transition of impression canceled due to lack of view");
            } else {
                float width = (float) f.getWidth();
                float height = (float) f.getHeight();
                float f2 = (1.0f - 0.4f) / 2.0f;
                Difference forcedOrientationDifference = instance.getForcedOrientationDifference();
                Animation qVar;
                float f3;
                float f4;
                float f5;
                float f6;
                boolean z2;
                switch (AnonymousClass_3.b[bVar.ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                        switch (AnonymousClass_3.a[forcedOrientationDifference.ordinal()]) {
                            case GoogleScorer.CLIENT_GAMES:
                                qVar = z ? new q(-true, 0.0f, width / 2.0f, height / 2.0f, true) : new q(0.0f, 60.0f, width / 2.0f, height / 2.0f, true);
                                break;
                            case GoogleScorer.CLIENT_PLUS:
                                qVar = z ? new q(60.0f, 0.0f, width / 2.0f, height / 2.0f, false) : new q(0.0f, -true, width / 2.0f, height / 2.0f, false);
                                break;
                            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                qVar = z ? new q(60.0f, 0.0f, width / 2.0f, height / 2.0f, true) : new q(0.0f, -true, width / 2.0f, height / 2.0f, true);
                                break;
                            default:
                                qVar = z ? new q(-true, 0.0f, width / 2.0f, height / 2.0f, false) : new q(0.0f, 60.0f, width / 2.0f, height / 2.0f, false);
                                break;
                        }
                        qVar.setDuration(600);
                        qVar.setFillAfter(true);
                        animationSet.addAnimation(qVar);
                        qVar = z ? new ScaleAnimation(0.4f, 1.0f, 0.4f, 1.0f) : new ScaleAnimation(1.0f, 0.4f, 1.0f, 0.4f);
                        qVar.setDuration(600);
                        qVar.setFillAfter(true);
                        animationSet.addAnimation(qVar);
                        switch (AnonymousClass_3.a[forcedOrientationDifference.ordinal()]) {
                            case GoogleScorer.CLIENT_GAMES:
                                qVar = z ? new TranslateAnimation(width, 0.0f, height * f2, 0.0f) : new TranslateAnimation(0.0f, (-width) * 0.4f, 0.0f, height * f2);
                                break;
                            case GoogleScorer.CLIENT_PLUS:
                                qVar = z ? new TranslateAnimation(width * f2, 0.0f, height, 0.0f) : new TranslateAnimation(0.0f, width * f2, 0.0f, (-height) * 0.4f);
                                break;
                            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                qVar = z ? new TranslateAnimation((-width) * 0.4f, 0.0f, height * f2, 0.0f) : new TranslateAnimation(0.0f, width, 0.0f, height * f2);
                                break;
                            default:
                                qVar = z ? new TranslateAnimation(width * f2, 0.0f, (-height) * 0.4f, 0.0f) : new TranslateAnimation(0.0f, width * f2, 0.0f, height);
                                break;
                        }
                        qVar.setDuration(600);
                        qVar.setFillAfter(true);
                        animationSet.addAnimation(qVar);
                        break;
                    case GoogleScorer.CLIENT_PLUS:
                        switch (AnonymousClass_3.a[forcedOrientationDifference.ordinal()]) {
                            case GoogleScorer.CLIENT_GAMES:
                                qVar = z ? new q(60.0f, 0.0f, width / 2.0f, height / 2.0f, false) : new q(0.0f, -true, width / 2.0f, height / 2.0f, false);
                                break;
                            case GoogleScorer.CLIENT_PLUS:
                                qVar = z ? new q(60.0f, 0.0f, width / 2.0f, height / 2.0f, true) : new q(0.0f, -true, width / 2.0f, height / 2.0f, true);
                                break;
                            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                qVar = z ? new q(-true, 0.0f, width / 2.0f, height / 2.0f, false) : new q(0.0f, 60.0f, width / 2.0f, height / 2.0f, false);
                                break;
                            default:
                                qVar = z ? new q(-true, 0.0f, width / 2.0f, height / 2.0f, true) : new q(0.0f, 60.0f, width / 2.0f, height / 2.0f, true);
                                break;
                        }
                        qVar.setDuration(600);
                        qVar.setFillAfter(true);
                        animationSet.addAnimation(qVar);
                        qVar = z ? new ScaleAnimation(0.4f, 1.0f, 0.4f, 1.0f) : new ScaleAnimation(1.0f, 0.4f, 1.0f, 0.4f);
                        qVar.setDuration(600);
                        qVar.setFillAfter(true);
                        animationSet.addAnimation(qVar);
                        switch (AnonymousClass_3.a[forcedOrientationDifference.ordinal()]) {
                            case GoogleScorer.CLIENT_GAMES:
                                qVar = z ? new TranslateAnimation(width * f2, 0.0f, (-height) * 0.4f, 0.0f) : new TranslateAnimation(0.0f, width * f2, 0.0f, height);
                                break;
                            case GoogleScorer.CLIENT_PLUS:
                                qVar = z ? new TranslateAnimation(width, 0.0f, height * f2, 0.0f) : new TranslateAnimation(0.0f, (-width) * 0.4f, 0.0f, height * f2);
                                break;
                            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                qVar = z ? new TranslateAnimation(width * f2, 0.0f, height, 0.0f) : new TranslateAnimation(0.0f, width * f2, 0.0f, (-height) * 0.4f);
                                break;
                            default:
                                qVar = z ? new TranslateAnimation((-width) * 0.4f, 0.0f, height * f2, 0.0f) : new TranslateAnimation(0.0f, width, 0.0f, height * f2);
                                break;
                        }
                        qVar.setDuration(600);
                        qVar.setFillAfter(true);
                        animationSet.addAnimation(qVar);
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        switch (AnonymousClass_3.a[forcedOrientationDifference.ordinal()]) {
                            case GoogleScorer.CLIENT_GAMES:
                                f3 = z ? -width : BitmapDescriptorFactory.HUE_RED;
                                f4 = 0.0f;
                                f5 = z ? BitmapDescriptorFactory.HUE_RED : -width;
                                f6 = 0.0f;
                                break;
                            case GoogleScorer.CLIENT_PLUS:
                                f4 = z ? -height : BitmapDescriptorFactory.HUE_RED;
                                f6 = z ? BitmapDescriptorFactory.HUE_RED : -height;
                                f5 = 0.0f;
                                f3 = 0.0f;
                                break;
                            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                f3 = z ? width : BitmapDescriptorFactory.HUE_RED;
                                if (z) {
                                    z2 = 0;
                                } else {
                                    f6 = width;
                                }
                                f4 = 0.0f;
                                f5 = f6;
                                f6 = 0.0f;
                                break;
                            case GoogleScorer.CLIENT_APPSTATE:
                                f4 = z ? height : BitmapDescriptorFactory.HUE_RED;
                                f6 = z ? BitmapDescriptorFactory.HUE_RED : height;
                                f5 = 0.0f;
                                f3 = 0.0f;
                                break;
                            default:
                                f6 = 0.0f;
                                f4 = 0.0f;
                                f5 = 0.0f;
                                f3 = 0.0f;
                                break;
                        }
                        Animation translateAnimation = new TranslateAnimation(f3, f5, f4, f6);
                        translateAnimation.setDuration(600);
                        translateAnimation.setFillAfter(true);
                        animationSet.addAnimation(translateAnimation);
                        break;
                    case GoogleScorer.CLIENT_APPSTATE:
                        switch (AnonymousClass_3.a[forcedOrientationDifference.ordinal()]) {
                            case GoogleScorer.CLIENT_GAMES:
                                if (z) {
                                    f6 = width;
                                } else {
                                    z2 = 0;
                                }
                                if (z) {
                                    width = BitmapDescriptorFactory.HUE_RED;
                                }
                                f4 = 0.0f;
                                f5 = f6;
                                f6 = 0.0f;
                                break;
                            case GoogleScorer.CLIENT_PLUS:
                                if (z) {
                                    f6 = height;
                                } else {
                                    z2 = 0;
                                }
                                if (z) {
                                    height = BitmapDescriptorFactory.HUE_RED;
                                }
                                f4 = f6;
                                width = 0.0f;
                                f5 = 0.0f;
                                f6 = height;
                                break;
                            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                f3 = z ? -width : BitmapDescriptorFactory.HUE_RED;
                                width = z ? BitmapDescriptorFactory.HUE_RED : -width;
                                f6 = 0.0f;
                                f4 = 0.0f;
                                f5 = f3;
                                break;
                            case GoogleScorer.CLIENT_APPSTATE:
                                f4 = z ? -height : BitmapDescriptorFactory.HUE_RED;
                                f6 = z ? BitmapDescriptorFactory.HUE_RED : -height;
                                width = 0.0f;
                                f5 = 0.0f;
                                break;
                            default:
                                f6 = 0.0f;
                                width = 0.0f;
                                f4 = 0.0f;
                                f5 = 0.0f;
                                break;
                        }
                        Animation translateAnimation2 = new TranslateAnimation(f5, width, f4, f6);
                        translateAnimation2.setDuration(600);
                        translateAnimation2.setFillAfter(true);
                        animationSet.addAnimation(translateAnimation2);
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                        if (z) {
                            qVar = new ScaleAnimation(0.6f, 1.1f, 0.6f, 1.1f, 1, 0.5f, 1, 0.5f);
                            qVar.setDuration((long) Math.round(((float) true) * 0.6f));
                            qVar.setStartOffset(0);
                            qVar.setFillAfter(true);
                            animationSet.addAnimation(qVar);
                            qVar = new ScaleAnimation(1.0f, 0.81818175f, 1.0f, 0.81818175f, 1, 0.5f, 1, 0.5f);
                            qVar.setDuration((long) Math.round(((float) true) * 0.19999999f));
                            qVar.setStartOffset((long) Math.round(((float) true) * 0.6f));
                            qVar.setFillAfter(true);
                            animationSet.addAnimation(qVar);
                            qVar = new ScaleAnimation(1.0f, 1.1111112f, 1.0f, 1.1111112f, 1, 0.5f, 1, 0.5f);
                            qVar.setDuration((long) Math.round(((float) true) * 0.099999964f));
                            qVar.setStartOffset((long) Math.round(((float) true) * 0.8f));
                            qVar.setFillAfter(true);
                            animationSet.addAnimation(qVar);
                        } else {
                            qVar = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 1, 0.5f, 1, 0.5f);
                            qVar.setDuration(600);
                            qVar.setStartOffset(0);
                            qVar.setFillAfter(true);
                            animationSet.addAnimation(qVar);
                        }
                        break;
                }
                if (bVar != b.f) {
                    if (aVar2 != null) {
                        new Handler().postDelayed(new AnonymousClass_2(aVar2, aVar), 600);
                    }
                    f.startAnimation(animationSet);
                } else if (aVar2 != null) {
                    aVar2.a(aVar);
                }
            }
        }
    }
}