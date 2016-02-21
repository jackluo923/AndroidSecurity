package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError.CBImpressionError;
import com.chartboost.sdk.Model.a;
import com.chartboost.sdk.Model.a.c;
import com.chartboost.sdk.impl.o;
import com.chartboost.sdk.impl.t;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

final class b {
    private static b e;
    protected boolean a;
    private Chartboost b;
    private CBPreferences c;
    private t d;

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ boolean a;
        final /* synthetic */ a b;

        AnonymousClass_2(boolean z, a aVar) {
            this.a = z;
            this.b = aVar;
        }

        public void run() {
            if (!this.a) {
                b.this.a = true;
            }
            b.this = com.chartboost.sdk.Model.a.b.e;
            com.chartboost.sdk.impl.o.b bVar = com.chartboost.sdk.impl.o.b.a;
            if (this.b.d == c.b) {
                bVar = com.chartboost.sdk.impl.o.b.c;
            }
            com.chartboost.sdk.impl.o.b a = com.chartboost.sdk.impl.o.b.a(this.b.a.optInt("animation"));
            if (a != null) {
                bVar = a;
            }
            if (b.this.getAnimationsOff()) {
                bVar = com.chartboost.sdk.impl.o.b.f;
            }
            o.b(bVar, this.b, new o.a() {

                class AnonymousClass_1 implements Runnable {
                    final /* synthetic */ a a;

                    AnonymousClass_1(a aVar) {
                        this.a = aVar;
                    }

                    public void run() {
                        AnonymousClass_1.this.a.c.c(this.a);
                    }
                }

                public void a(a aVar) {
                    AnonymousClass_2.this = false;
                    if (aVar.c != com.chartboost.sdk.Model.a.b.f) {
                        AnonymousClass_2.this.c.b.c.post(new AnonymousClass_1(aVar));
                    }
                    aVar.f();
                }
            });
        }
    }

    static /* synthetic */ class AnonymousClass_3 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[com.chartboost.sdk.Model.a.b.values().length];
            try {
                a[com.chartboost.sdk.Model.a.b.g.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[com.chartboost.sdk.Model.a.b.a.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            a[com.chartboost.sdk.Model.a.b.f.ordinal()] = 3;
        }
    }

    private b(Chartboost chartboost) {
        this.a = false;
        this.d = null;
        this.b = chartboost;
        this.c = CBPreferences.getInstance();
    }

    protected static b a(Chartboost chartboost) {
        if (e == null) {
            e = new b(chartboost);
        }
        return e;
    }

    private void d() {
        Activity c = this.b.c();
        if (c != null && c instanceof CBImpressionActivity) {
            this.b.d();
            c.finish();
        }
    }

    private void d(a aVar) {
        if (this.d == null || this.d.h() == aVar) {
            int i;
            CBImpressionError cBImpressionError;
            i = aVar.c != com.chartboost.sdk.Model.a.b.c ? 1 : 0;
            aVar.c = com.chartboost.sdk.Model.a.b.c;
            Context c = this.b.c();
            cBImpressionError = c == null ? CBImpressionError.NO_HOST_ACTIVITY : null;
            if (cBImpressionError == null) {
                cBImpressionError = aVar.d();
            }
            if (cBImpressionError != null) {
                aVar.a(cBImpressionError);
            } else {
                if (this.d == null) {
                    this.d = new t(c, aVar);
                    c.addContentView(this.d, new LayoutParams(-1, -1));
                }
                this.d.a();
                aVar.h = this.d;
                if (i != 0) {
                    this.d.e().a();
                    com.chartboost.sdk.impl.o.b bVar = com.chartboost.sdk.impl.o.b.a;
                    if (aVar.d == c.b) {
                        bVar = com.chartboost.sdk.impl.o.b.c;
                    }
                    com.chartboost.sdk.impl.o.b a = com.chartboost.sdk.impl.o.b.a(aVar.a.optInt("animation"));
                    if (a != null) {
                        bVar = a;
                    }
                    if (this.c.getAnimationsOff()) {
                        bVar = com.chartboost.sdk.impl.o.b.f;
                    }
                    aVar.g();
                    o.a(bVar, aVar, new o.a() {
                        public void a(a aVar) {
                            aVar.h();
                        }
                    });
                }
                ChartboostDelegate delegate = this.c.getDelegate();
                if (delegate == null) {
                    return;
                }
                if (aVar.d == c.a) {
                    delegate.didShowInterstitial(aVar.e);
                } else if (aVar.d == c.b) {
                    delegate.didShowMoreApps();
                }
            }
        } else {
            aVar.a(CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
        }
    }

    private void e(a aVar) {
        Context c = this.b.c();
        if (c == null) {
            CBLogging.c(this, "No host activity to display loading view");
        } else {
            if (this.d == null) {
                this.d = new t(c, aVar);
                c.addContentView(this.d, new LayoutParams(-1, -1));
            }
            this.d.b();
        }
    }

    protected void a(a aVar) {
        switch (AnonymousClass_3.a[aVar.c.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
            case GoogleScorer.CLIENT_PLUS:
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                e(aVar);
            default:
                d(aVar);
        }
    }

    public void a(a aVar, boolean z) {
        Runnable anonymousClass_2 = new AnonymousClass_2(z, aVar);
        if (aVar.k) {
            aVar.b(anonymousClass_2);
        } else {
            anonymousClass_2.run();
        }
    }

    public void a(boolean z) {
        if (a()) {
            this.d.c();
            if (z && this.d != null && this.d.h() != null) {
                c(this.d.h());
            }
        }
    }

    public boolean a() {
        return this.d != null && this.d.g();
    }

    public void b_(a aVar) {
        if (a()) {
            a(false);
        }
        aVar.c();
        try {
            ((ViewGroup) this.d.getParent()).removeView(this.d);
        } catch (Exception e) {
            CBLogging.a("CBViewController", "Exception removing impression silently", e);
        }
        this.d = null;
    }

    protected boolean b_() {
        return this.d != null;
    }

    public t c() {
        return this.d;
    }

    public void c(a aVar) {
        aVar.c = com.chartboost.sdk.Model.a.b.g;
        if (this.d != null) {
            try {
                ((ViewGroup) this.d.getParent()).removeView(this.d);
            } catch (Exception e) {
                CBLogging.a("CBViewController", "Exception removing impression ", e);
            }
            aVar.b();
            this.d = null;
            this.a = false;
            if (this.c.getImpressionsUseActivities()) {
                d();
            }
        } else if (this.c.getImpressionsUseActivities()) {
            d();
        }
    }
}