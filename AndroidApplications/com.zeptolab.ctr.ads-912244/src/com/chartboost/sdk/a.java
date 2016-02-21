package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.chartboost.sdk.Chartboost.CBAgeGateConfirmation;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.Model.CBError.CBClickError;
import com.chartboost.sdk.Model.CBError.CBImpressionError;
import com.chartboost.sdk.Model.a.c;
import com.chartboost.sdk.impl.i;
import com.chartboost.sdk.impl.i.b;
import com.chartboost.sdk.impl.j;
import com.chartboost.sdk.impl.l;
import com.chartboost.sdk.impl.m;
import com.chartboost.sdk.impl.t;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

final class a {
    private static a j;
    private Handler a;
    private Chartboost b;
    private CBPreferences c;
    private i d;
    private m e;
    private ArrayList f;
    private com.chartboost.sdk.Model.a g;
    private Map h;
    private com.chartboost.sdk.Model.a i;
    private com.chartboost.sdk.Model.a.a k;
    private com.chartboost.sdk.impl.m.a l;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ com.chartboost.sdk.Model.a b;

        AnonymousClass_1(String str, com.chartboost.sdk.Model.a aVar) {
            this.a = str;
            this.b = aVar;
        }

        public void run() {
            if (a.this.b.hasCachedInterstitial(this.a)) {
                a.this.d((com.chartboost.sdk.Model.a) a.this.h.get(this.a));
            } else {
                a.this.f(this.b);
            }
        }
    }

    class AnonymousClass_3 implements Runnable {
        final /* synthetic */ com.chartboost.sdk.Model.a a;
        final /* synthetic */ String b;

        AnonymousClass_3(com.chartboost.sdk.Model.a aVar, String str) {
            this.a = aVar;
            this.b = str;
        }

        public void run() {
            a.this.e.a(this.a, this.b, a.this.b.getHostActivity());
        }
    }

    class AnonymousClass_4 implements CBAgeGateConfirmation {
        final /* synthetic */ com.chartboost.sdk.Model.a a;
        final /* synthetic */ String b;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ boolean a;

            AnonymousClass_1(boolean z) {
                this.a = z;
            }

            public void run() {
                if (this.a) {
                    AnonymousClass_4.this.c.a(AnonymousClass_4.this.a, AnonymousClass_4.this);
                } else {
                    AnonymousClass_4.this.c.l.a(AnonymousClass_4.this.a, false, AnonymousClass_4.this, CBClickError.AGE_GATE_FAILURE);
                }
            }
        }

        AnonymousClass_4(com.chartboost.sdk.Model.a aVar, String str) {
            this.a = aVar;
            this.b = str;
        }

        public void execute(boolean z) {
            a.this.b.a(new AnonymousClass_1(z));
        }
    }

    class AnonymousClass_5 implements b {
        final /* synthetic */ com.chartboost.sdk.Model.a a;

        AnonymousClass_5(com.chartboost.sdk.Model.a aVar) {
            this.a = aVar;
        }

        public void a(j jVar, CBError cBError) {
            a.this.a(this.a, cBError.b());
            b a = a.this.a();
            if (a != null && a.a()) {
                a.a(true);
            }
        }

        public void a(JSONObject jSONObject, j jVar) {
            a.this.a(jSONObject, this.a);
        }
    }

    class AnonymousClass_6 implements b {
        final /* synthetic */ com.chartboost.sdk.Model.a a;

        AnonymousClass_6(com.chartboost.sdk.Model.a aVar) {
            this.a = aVar;
        }

        public void a(j jVar, CBError cBError) {
            a.this.a(this.a, cBError.b());
            b a = a.this.a();
            if (a != null && a.a()) {
                a.a(true);
            }
        }

        public void a(JSONObject jSONObject, j jVar) {
            a.this.a(jSONObject, this.a);
        }
    }

    static /* synthetic */ class AnonymousClass_9 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[com.chartboost.sdk.Model.a.b.values().length];
            try {
                a[com.chartboost.sdk.Model.a.b.a.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[com.chartboost.sdk.Model.a.b.f.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[com.chartboost.sdk.Model.a.b.d.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[com.chartboost.sdk.Model.a.b.b.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            a[com.chartboost.sdk.Model.a.b.c.ordinal()] = 5;
        }
    }

    private a(Chartboost chartboost) {
        this.f = new ArrayList();
        this.g = null;
        this.k = new com.chartboost.sdk.Model.a.a() {
            public void a(com.chartboost.sdk.Model.a aVar) {
                synchronized (a.this) {
                    boolean z = aVar.f;
                }
                if (aVar.c == com.chartboost.sdk.Model.a.b.a) {
                    aVar.c = com.chartboost.sdk.Model.a.b.b;
                    if (z) {
                        if (aVar.d == c.a && aVar.e != null) {
                            a.this.h.put(aVar.e, aVar);
                            if (a.this.c.getDelegate() != null) {
                                a.this.c.getDelegate().didCacheInterstitial(aVar.e);
                            }
                        } else if (aVar.d == c.b) {
                            a.this.i = aVar;
                            if (a.this.c.getDelegate() != null) {
                                a.this.c.getDelegate().didCacheMoreApps();
                            }
                        }
                        aVar.c = com.chartboost.sdk.Model.a.b.d;
                    }
                }
                if (!z) {
                    if (aVar.d == c.a) {
                        a.this.d(aVar);
                    } else if (aVar.d == c.b) {
                        a.this.e(aVar);
                    }
                }
                a.this.b(aVar);
            }

            public void a(com.chartboost.sdk.Model.a aVar, CBImpressionError cBImpressionError) {
                a.this.a(aVar, cBImpressionError);
            }

            public void a(com.chartboost.sdk.Model.a aVar, String str, JSONObject jSONObject) {
                boolean z = true;
                int i = str != null && !str.equals(AdTrackerConstants.BLANK) && !str.equals("null");
                b a;
                if (aVar.d == c.a) {
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didDismissInterstitial(aVar.e);
                    }
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didClickInterstitial(aVar.e);
                    }
                    if (aVar.c == com.chartboost.sdk.Model.a.b.c) {
                        a = a.this.b.a();
                        if (a != null) {
                            if (i != 0) {
                                z = false;
                            }
                            a.a(aVar, z);
                        }
                    }
                } else if (aVar.d == c.b) {
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didDismissMoreApps();
                    }
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didClickMoreApps();
                    }
                    if (aVar.c == com.chartboost.sdk.Model.a.b.c) {
                        a = a.this.b.a();
                        if (a != null) {
                            if (i != 0) {
                                z = false;
                            }
                            a.a(aVar, z);
                        }
                    }
                }
                if (i != 0) {
                    j jVar = new j("api/click");
                    Context c = a.this.b.c();
                    if (c == null) {
                        c = a.this.b.e();
                    }
                    jVar.a(c);
                    jVar.a(a.this, "to");
                    jVar.a(a.this, "cgn");
                    jVar.a(a.this, "creative");
                    jVar.a(a.this, "ad_id");
                    jVar.a(jSONObject, "cgn");
                    jVar.a(jSONObject, "creative");
                    jVar.a(jSONObject, AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
                    jVar.a(jSONObject, "more_type");
                    aVar.l = jVar;
                    aVar.c = com.chartboost.sdk.Model.a.b.f;
                    a.this.b.a(aVar);
                    a.this.b(aVar, str);
                } else {
                    a.this.l.a(aVar, false, str, CBClickError.URI_INVALID);
                }
            }

            public void b(com.chartboost.sdk.Model.a aVar) {
                b a;
                if (aVar.d == c.a) {
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didDismissInterstitial(aVar.e);
                    }
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didCloseInterstitial(aVar.e);
                    }
                    if (aVar.c == com.chartboost.sdk.Model.a.b.c) {
                        a = a.this.b.a();
                        if (a != null) {
                            a.a(aVar, true);
                        }
                    }
                } else if (aVar.d == c.b) {
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didDismissMoreApps();
                    }
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didCloseMoreApps();
                    }
                    if (aVar.c == com.chartboost.sdk.Model.a.b.c) {
                        a = a.this.b.a();
                        if (a != null) {
                            a.a(aVar, true);
                        }
                    }
                }
            }
        };
        this.l = new com.chartboost.sdk.impl.m.a() {

            class AnonymousClass_1 implements b {
                final /* synthetic */ com.chartboost.sdk.Model.a a;
                final /* synthetic */ String b;

                AnonymousClass_1(com.chartboost.sdk.Model.a aVar, String str) {
                    this.a = aVar;
                    this.b = str;
                }

                public void a(j jVar, CBError cBError) {
                    AnonymousClass_8.this.a.l.a(this.a, false, this.b, CBClickError.INTERNAL);
                }

                public void a(JSONObject jSONObject, j jVar) {
                }
            }

            public void a(com.chartboost.sdk.Model.a aVar, boolean z, String str, CBClickError cBClickError) {
                aVar.c = com.chartboost.sdk.Model.a.b.e;
                b a = a.this.b.a();
                if (a != null && a.a()) {
                    a.a(true);
                }
                if (z) {
                    if (aVar.l != null) {
                        aVar.l.a(true);
                        a.this.d.a(aVar.l, new AnonymousClass_1(aVar, str));
                    }
                } else if (a.this.c.getDelegate() != null) {
                    a.this.c.getDelegate().didFailToRecordClick(str, cBClickError);
                }
            }
        };
        this.b = chartboost;
        this.c = CBPreferences.getInstance();
        this.d = this.b.b;
        this.e = m.a(this.l);
        this.h = new HashMap();
        this.i = null;
        this.a = new Handler();
    }

    protected static a a_(Chartboost chartboost) {
        if (j == null) {
            j = new a(chartboost);
        }
        return j;
    }

    private void a_(com.chartboost.sdk.Model.a aVar, CBImpressionError cBImpressionError) {
        b(aVar);
        b a = this.b.a();
        if (aVar.d == c.b && a != null && a.a()) {
            a.a(true);
        }
        if (aVar.d == c.a && this.c.getDelegate() != null) {
            this.c.getDelegate().didFailToLoadInterstitial(aVar.e, cBImpressionError);
        }
        if (aVar.d == c.b && this.c.getDelegate() != null) {
            this.c.getDelegate().didFailToLoadMoreApps(cBImpressionError);
        }
    }

    private void a_(com.chartboost.sdk.Model.a aVar, String str) {
        Runnable anonymousClass_3 = new AnonymousClass_3(aVar, str);
        b a = this.b.a();
        if (a == null || !a.a) {
            anonymousClass_3.run();
        } else {
            aVar.a(anonymousClass_3);
        }
    }

    private void a_(JSONObject jSONObject, com.chartboost.sdk.Model.a aVar) {
        if (jSONObject.optString("status", AdTrackerConstants.BLANK).equals("404")) {
            a(aVar, CBImpressionError.NO_AD_FOUND);
        } else if (jSONObject.optString("status", AdTrackerConstants.BLANK).equals("200")) {
            if (aVar.d == c.b && !aVar.f) {
                boolean z = 0;
                if (this.b.a() != null && this.b.a().a()) {
                    z = 1;
                }
                if (aVar.i && i == 0) {
                    b(aVar);
                    return;
                }
            }
            aVar.a(jSONObject, this.k);
        } else {
            a(aVar, CBImpressionError.INTERNAL);
        }
    }

    private void b(com.chartboost.sdk.Model.a aVar, String str) {
        CBAgeGateConfirmation anonymousClass_4 = new AnonymousClass_4(aVar, str);
        if (this.c.getDelegate() == null || !this.c.getDelegate().shouldPauseClickForConfirmation(anonymousClass_4)) {
            a(aVar, str);
        } else {
            b a = this.b.a();
            if (a != null && a.a()) {
                a.a(true);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void d(com.chartboost.sdk.Model.a r9) {
        throw new UnsupportedOperationException("Method not decompiled: com.chartboost.sdk.a.d(com.chartboost.sdk.Model.a):void");
        /*
        r8 = this;
        r7 = 1;
        r6 = 0;
        r0 = r9.c;
        r1 = com.chartboost.sdk.Model.a.b.c;
        if (r0 == r1) goto L_0x0022;
    L_0x0008:
        r0 = r8.c;
        r0 = r0.getDelegate();
        if (r0 == 0) goto L_0x0022;
    L_0x0010:
        r0 = r8.c;
        r0 = r0.getDelegate();
        r1 = r9.e;
        r0 = r0.shouldDisplayInterstitial(r1);
        if (r0 != 0) goto L_0x0022;
    L_0x001e:
        r8.b(r9);
    L_0x0021:
        return;
    L_0x0022:
        r0 = 0;
        r1 = r9.a;
        r2 = "assets";
        r2 = r1.optJSONObject(r2);
        if (r2 != 0) goto L_0x002f;
    L_0x002d:
        r0 = com.chartboost.sdk.Model.CBError.CBImpressionError.INTERNAL;
    L_0x002f:
        r1 = r8.c;
        r1 = r1.getOrientation();
        r1 = r1.isPortrait();
        if (r1 == 0) goto L_0x0069;
    L_0x003b:
        r1 = "portrait";
    L_0x003d:
        r3 = java.util.Locale.US;
        r4 = "ad-%s";
        r5 = new java.lang.Object[r7];
        r5[r6] = r1;
        r3 = java.lang.String.format(r3, r4, r5);
        r3 = r2.optJSONObject(r3);
        if (r3 == 0) goto L_0x0061;
    L_0x004f:
        r3 = java.util.Locale.US;
        r4 = "frame-%s";
        r5 = new java.lang.Object[r7];
        r5[r6] = r1;
        r1 = java.lang.String.format(r3, r4, r5);
        r1 = r2.optJSONObject(r1);
        if (r1 != 0) goto L_0x0063;
    L_0x0061:
        r0 = com.chartboost.sdk.Model.CBError.CBImpressionError.WRONG_ORIENTATION;
    L_0x0063:
        if (r0 == 0) goto L_0x006c;
    L_0x0065:
        r8.a(r9, r0);
        goto L_0x0021;
    L_0x0069:
        r1 = "landscape";
        goto L_0x003d;
    L_0x006c:
        r0 = r9.c;
        r1 = com.chartboost.sdk.Model.a.b.d;
        if (r0 == r1) goto L_0x0076;
    L_0x0072:
        r0 = r9.g;
        if (r0 == 0) goto L_0x00ad;
    L_0x0076:
        r0 = r8.h;
        r1 = r9.e;
        r0 = r0.get(r1);
        if (r0 != r9) goto L_0x00ad;
    L_0x0080:
        r0 = r8.h;
        r1 = r9.e;
        r0.remove(r1);
        r9.f = r6;
        r0 = new com.chartboost.sdk.impl.j;
        r1 = "api/show";
        r0.<init>(r1);
        r1 = r8.b;
        r1 = r1.e();
        r0.a(r1);
        r1 = r9.a;
        r2 = "ad_id";
        r1 = r1.optString(r2);
        if (r1 == 0) goto L_0x00a8;
    L_0x00a3:
        r2 = "ad_id";
        r0.a(r2, r1);
    L_0x00a8:
        r1 = r8.d;
        r1.a(r0);
    L_0x00ad:
        r0 = r8.b;
        r0.a(r9);
        goto L_0x0021;
        */
    }

    private void e(com.chartboost.sdk.Model.a aVar) {
        if (aVar.c == com.chartboost.sdk.Model.a.b.c || this.c.getDelegate() == null || this.c.getDelegate().shouldDisplayMoreApps()) {
            if (aVar == this.i) {
                this.i = null;
                aVar.f = false;
            }
            int i = aVar.c == com.chartboost.sdk.Model.a.b.d ? 1 : false;
            b a = this.b.a();
            if (a != null) {
                if (a.a()) {
                    a.a(false);
                } else if (aVar.i && i == 0 && aVar.c != com.chartboost.sdk.Model.a.b.c) {
                    return;
                }
            }
            this.b.a(aVar);
        } else {
            b(aVar);
        }
    }

    private void f(com.chartboost.sdk.Model.a aVar) {
        if (this.b.d) {
            b a = this.b.a();
            if (!aVar.f && a != null && a.b()) {
                a(aVar, CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
            } else if (this.c.getDelegate() != null && !this.c.getDelegate().shouldRequestInterstitial(aVar.e)) {
            } else {
                if (l.a()) {
                    synchronized (this) {
                        com.chartboost.sdk.Model.a a2 = a(aVar);
                        if (a2 == null) {
                            c(aVar);
                            j jVar = new j("api/get");
                            jVar.a(this.b.e());
                            jVar.a("location", aVar.e);
                            if (aVar.f) {
                                jVar.a("cache", (Object)"1");
                            }
                            this.d.a(jVar, new AnonymousClass_5(aVar));
                        } else if (aVar.f || !a2.f) {
                            a(aVar, CBImpressionError.TOO_MANY_CONNECTIONS);
                        } else {
                            a2.f = false;
                            a2.g = true;
                        }
                    }
                } else {
                    a(aVar, CBImpressionError.INTERNET_UNAVAILABLE);
                }
            }
        } else {
            a(aVar, CBImpressionError.SESSION_NOT_STARTED);
        }
    }

    protected com.chartboost.sdk.Model.a a_() {
        b a = this.b.a();
        t c = a == null ? null : a.c();
        return c == null ? null : c.h();
    }

    public synchronized com.chartboost.sdk.Model.a a_(com.chartboost.sdk.Model.a aVar) {
        com.chartboost.sdk.Model.a aVar2;
        if (aVar.d == c.b) {
            aVar2 = this.g;
        } else if (aVar.d == c.a) {
            String str;
            str = aVar.e == null ? AdTrackerConstants.BLANK : aVar.e;
            int i = 0;
            while (i < this.f.size()) {
                if (str.equals(((com.chartboost.sdk.Model.a) this.f.get(i)).e == null ? AdTrackerConstants.BLANK : ((com.chartboost.sdk.Model.a) this.f.get(i)).e)) {
                    aVar2 = (com.chartboost.sdk.Model.a) this.f.get(i);
                    break;
                } else {
                    i++;
                }
            }
            aVar2 = null;
        } else {
            aVar2 = null;
        }
        return aVar2;
    }

    public void a_(Activity activity, com.chartboost.sdk.Model.a aVar) {
        if (aVar != null) {
            switch (AnonymousClass_9.a[aVar.c.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                case GoogleScorer.CLIENT_PLUS:
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                case GoogleScorer.CLIENT_APPSTATE:
                    if (aVar.c != com.chartboost.sdk.Model.a.b.a || aVar.i) {
                        this.b.a(aVar);
                    }
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    if (!aVar.a()) {
                        b a = this.b.a();
                        if (a != null) {
                            CBLogging.b("CBImpressionManager", "Error onActivityStart " + aVar.c.name());
                            a.c(aVar);
                        }
                    }
                default:
                    break;
            }
        }
    }

    public void a_(String str) {
        com.chartboost.sdk.Model.a aVar = new com.chartboost.sdk.Model.a(c.a, true, str, false);
        if (this.c.getDelegate() == null || this.c.getDelegate().shouldRequestInterstitialsInFirstSession() || CBUtility.a().getInt("cbPrefSessionCount", 0) > 1) {
            f(aVar);
        } else {
            a(aVar, CBImpressionError.FIRST_SESSION_INTERSTITIALS_DISABLED);
        }
    }

    protected void a_(boolean z) {
        com.chartboost.sdk.Model.a aVar = new com.chartboost.sdk.Model.a(c.b, z, null, false);
        if (this.b.d) {
            b a = this.b.a();
            if (!z && a != null && a.b()) {
                a(aVar, CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
            } else if (this.c.getDelegate() != null && !this.c.getDelegate().shouldRequestMoreApps()) {
            } else {
                if (l.a()) {
                    synchronized (this) {
                        com.chartboost.sdk.Model.a a2 = a(aVar);
                        if (a2 == null) {
                            c(aVar);
                            if (!z) {
                                if (this.c.getDelegate() == null || this.c.getDelegate().shouldDisplayLoadingViewForMoreApps()) {
                                    aVar.i = true;
                                    this.b.a(aVar);
                                }
                            }
                            j jVar = new j("api/more");
                            jVar.a(this.b.e());
                            if (z) {
                                jVar.a("cache", (Object)"1");
                            }
                            this.d.a(jVar, new AnonymousClass_6(aVar));
                        } else if (z || !a2.f) {
                            a(aVar, CBImpressionError.TOO_MANY_CONNECTIONS);
                        } else {
                            a2.f = false;
                            a2.g = true;
                        }
                    }
                } else {
                    a(aVar, CBImpressionError.INTERNET_UNAVAILABLE);
                }
            }
        } else {
            a(aVar, CBImpressionError.SESSION_NOT_STARTED);
        }
    }

    protected void b() {
        this.a.post(new Runnable() {
            public void run() {
                if (a.this.i != null) {
                    a.this.e(a.this.i);
                } else {
                    a.this.a(false);
                }
            }
        });
    }

    public synchronized void b(com.chartboost.sdk.Model.a aVar) {
        if (aVar.d == c.b) {
            this.g = null;
        } else if (aVar.d == c.a) {
            com.chartboost.sdk.Model.a a = a(aVar);
            if (a != null) {
                this.f.remove(a);
            }
        }
    }

    protected void b(String str) {
        com.chartboost.sdk.Model.a aVar = new com.chartboost.sdk.Model.a(c.a, false, str, false);
        if (this.c.getDelegate() == null || this.c.getDelegate().shouldRequestInterstitialsInFirstSession() || CBUtility.a().getInt("cbPrefSessionCount", 0) != 1) {
            this.a.post(new AnonymousClass_1(str, aVar));
        } else {
            a(aVar, CBImpressionError.FIRST_SESSION_INTERSTITIALS_DISABLED);
        }
    }

    public synchronized void c(com.chartboost.sdk.Model.a aVar) {
        if (aVar.d == c.b) {
            this.g = aVar;
        } else if (aVar.d == c.a) {
            this.f.add(aVar);
        }
    }

    protected boolean c() {
        return this.i != null;
    }

    protected boolean c(String str) {
        com.chartboost.sdk.Model.a aVar = (com.chartboost.sdk.Model.a) this.h.get(str);
        if (aVar == null) {
            return false;
        }
        return TimeUnit.MILLISECONDS.toSeconds(new Date().getTime() - aVar.b.getTime()) < 86400 ? 1 : false;
    }

    protected boolean d() {
        if (a() == null) {
            return false;
        }
        this.k.b(a());
        return true;
    }

    protected void e() {
        this.h.clear();
        this.i = null;
    }
}