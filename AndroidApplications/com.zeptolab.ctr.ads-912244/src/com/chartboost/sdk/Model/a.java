package com.chartboost.sdk.Model;

import android.content.Intent;
import android.net.Uri;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError.CBImpressionError;
import com.chartboost.sdk.c.d;
import com.chartboost.sdk.impl.g;
import com.chartboost.sdk.impl.j;
import com.chartboost.sdk.impl.t;
import com.chartboost.sdk.impl.w;
import com.google.android.gms.cast.Cast;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.Date;
import org.json.JSONObject;

public final class a {
    public JSONObject a;
    public Date b;
    public b c;
    public c d;
    public String e;
    public boolean f;
    public boolean g;
    public t h;
    public boolean i;
    public boolean j;
    public boolean k;
    public j l;
    private com.chartboost.sdk.c m;
    private a n;
    private Runnable o;
    private Runnable p;

    class AnonymousClass_1 implements com.chartboost.sdk.c.a {
        final /* synthetic */ a a;

        AnonymousClass_1(a aVar) {
            this.a = aVar;
        }

        public void a() {
            if (this.a.n != null) {
                this.a.n.a(this.a);
            }
        }
    }

    class AnonymousClass_2 implements com.chartboost.sdk.c.a {
        final /* synthetic */ a a;

        AnonymousClass_2(a aVar) {
            this.a = aVar;
        }

        public void a() {
            if (this.a.n != null) {
                this.a.n.b(this.a);
            }
        }
    }

    class AnonymousClass_3 implements com.chartboost.sdk.c.c {
        final /* synthetic */ a a;

        AnonymousClass_3(a aVar) {
            this.a = aVar;
        }

        public void a(a aVar, String str, JSONObject jSONObject) {
            if (aVar.c == com.chartboost.sdk.Model.a.b.c && !aVar.k) {
                if (str == null) {
                    str = this.a.a.optString("link");
                }
                String optString = this.a.a.optString("deep-link");
                if (!(optString == null || optString.equals(AdTrackerConstants.BLANK))) {
                    try {
                        if (Chartboost.sharedChartboost().getContext().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), Cast.MAX_MESSAGE_LENGTH).size() > 0) {
                            str = optString;
                        }
                    } catch (Exception e) {
                    }
                }
                this.a.n.a(this.a, str, jSONObject);
            }
        }
    }

    class AnonymousClass_4 implements d {
        final /* synthetic */ a a;

        AnonymousClass_4(a aVar) {
            this.a = aVar;
        }

        public void a(CBImpressionError cBImpressionError) {
            if (this.a.n != null) {
                this.a.n.a(this.a, cBImpressionError);
            }
        }
    }

    public static interface a {
        void a_(a aVar);

        void a_(a aVar, CBImpressionError cBImpressionError);

        void a_(a aVar, String str, JSONObject jSONObject);

        void b(a aVar);
    }

    public enum b {
        LOADING,
        LOADED,
        DISPLAYED,
        CACHED,
        DISMISSING,
        LOADING_URL,
        NONE;

        static {
            a = new com.chartboost.sdk.Model.a.b("LOADING", 0);
            b = new com.chartboost.sdk.Model.a.b("LOADED", 1);
            c = new com.chartboost.sdk.Model.a.b("DISPLAYED", 2);
            d = new com.chartboost.sdk.Model.a.b("CACHED", 3);
            e = new com.chartboost.sdk.Model.a.b("DISMISSING", 4);
            f = new com.chartboost.sdk.Model.a.b("LOADING_URL", 5);
            g = new com.chartboost.sdk.Model.a.b("NONE", 6);
            h = new com.chartboost.sdk.Model.a.b[]{a, b, c, d, e, f, g};
        }
    }

    public enum c {
        INTERSTITIAL,
        MORE_APPS;

        static {
            a = new com.chartboost.sdk.Model.a.c("INTERSTITIAL", 0);
            b = new com.chartboost.sdk.Model.a.c("MORE_APPS", 1);
            c = new com.chartboost.sdk.Model.a.c[]{a, b};
        }
    }

    public a(c cVar, boolean z, String str, boolean z2) {
        this.g = false;
        this.j = false;
        this.k = false;
        this.c = b.a;
        this.f = z;
        this.e = str;
        this.d = cVar;
        this.i = z2;
    }

    public void a_(CBImpressionError cBImpressionError) {
        if (this.m.d != null) {
            this.m.d.a(cBImpressionError);
        }
    }

    public void a_(Runnable runnable) {
        this.o = runnable;
    }

    public void a_(JSONObject jSONObject, a aVar) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        this.a = jSONObject;
        this.b = new Date();
        this.c = b.a;
        this.n = aVar;
        boolean equals = jSONObject.optString(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, AdTrackerConstants.BLANK).equals("native");
        if (equals && this.d == c.a) {
            this.m = new com.chartboost.sdk.impl.a(this);
        } else if (equals && this.d == c.b) {
            this.m = new g(this);
        } else {
            this.m = new w(this);
        }
        this.m.c = new AnonymousClass_1(this);
        this.m.a = new AnonymousClass_2(this);
        this.m.b = new AnonymousClass_3(this);
        this.m.d = new AnonymousClass_4(this);
        this.m.a(jSONObject);
    }

    public boolean a_() {
        this.m.b();
        return this.m.e() != null;
    }

    public void b() {
        c();
        if (this.m != null) {
            this.m.d();
        }
        this.m = null;
    }

    public void b(Runnable runnable) {
        this.p = runnable;
    }

    public void c() {
        if (this.h != null) {
            this.h.d();
            try {
                if (this.m.e().getParent() != null) {
                    this.h.removeView(this.m.e());
                }
            } catch (Exception e) {
                CBLogging.a("CBImpression", "Exception raised while cleaning up views", e);
            }
            this.h = null;
        }
        if (this.m != null) {
            this.m.f();
        }
    }

    public CBImpressionError d() {
        return this.m.c();
    }

    public com.chartboost.sdk.impl.t.a e() {
        return this.m.e();
    }

    public void f() {
        if (!(this.m == null || this.m.e() == null)) {
            this.m.e().setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        }
        if (this.o != null) {
            this.o.run();
            this.o = null;
        }
    }

    public void g() {
        this.k = true;
    }

    public void h() {
        if (this.p != null) {
            this.p.run();
            this.p = null;
        }
        this.k = false;
        this.j = false;
    }
}