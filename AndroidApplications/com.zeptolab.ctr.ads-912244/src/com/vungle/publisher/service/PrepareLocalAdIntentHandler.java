package com.vungle.publisher.service;

import android.content.Context;
import android.content.Intent;
import com.vungle.log.Logger;
import com.vungle.publisher.VungleService;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.al;
import com.vungle.publisher.az;
import com.vungle.publisher.bs;
import com.vungle.publisher.cj;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LocalAdReport;
import com.vungle.publisher.net.http.DownloadHttpGateway;
import com.vungle.publisher.o;
import com.vungle.publisher.reporting.AdReportManager;
import com.vungle.publisher.v;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;

public final class PrepareLocalAdIntentHandler extends bs {
    public AdManager f;
    public Context g;
    public DownloadHttpGateway h;
    public cj i;
    public AdReportManager j;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;
        static final /* synthetic */ int[] c;

        static {
            c = new int[com.vungle.publisher.am.a.values().length];
            try {
                c[com.vungle.publisher.am.a.a.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                c[com.vungle.publisher.am.a.b.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                c[com.vungle.publisher.am.a.c.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                c[com.vungle.publisher.am.a.d.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            b = new int[com.vungle.publisher.am.b.values().length];
            try {
                b[com.vungle.publisher.am.b.c.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                b[com.vungle.publisher.am.b.b.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            a = new int[com.vungle.publisher.db.model.Ad.a.values().length];
            try {
                a[com.vungle.publisher.db.model.Ad.a.a.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[com.vungle.publisher.db.model.Ad.a.d.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                a[com.vungle.publisher.db.model.Ad.a.f.ordinal()] = 3;
            } catch (NoSuchFieldError e9) {
            }
            try {
                a[com.vungle.publisher.db.model.Ad.a.c.ordinal()] = 4;
            } catch (NoSuchFieldError e10) {
            }
            try {
                a[com.vungle.publisher.db.model.Ad.a.e.ordinal()] = 5;
            } catch (NoSuchFieldError e11) {
            }
            a[com.vungle.publisher.db.model.Ad.a.b.ordinal()] = 6;
        }
    }

    @Singleton
    public static class Factory {
        @Inject
        public AdManager a;
        @Inject
        public Context b;
        @Inject
        public DownloadHttpGateway c;
        @Inject
        public cj d;
        @Inject
        public AdReportManager e;
    }

    static class a extends RuntimeException {
        a(String str) {
            super(str);
        }

        a(String str, Throwable th) {
            super(str, th);
        }
    }

    static class b extends RuntimeException {
        b(String str) {
            super(str);
        }
    }

    class c implements Runnable {
        private final String b;
        private final com.vungle.publisher.am.b c;
        private final Integer d;

        c(String str, com.vungle.publisher.am.b bVar, Integer num) {
            this.b = str;
            this.c = bVar;
            this.d = num;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private com.vungle.publisher.db.model.LocalAd a(java.lang.String r10, com.vungle.publisher.am.b r11, java.lang.Integer r12) {
            throw new UnsupportedOperationException("Method not decompiled: com.vungle.publisher.service.PrepareLocalAdIntentHandler.c.a(java.lang.String, com.vungle.publisher.am$b, java.lang.Integer):com.vungle.publisher.db.model.LocalAd");
            /*
            r9 = this;
            r0 = com.vungle.publisher.service.PrepareLocalAdIntentHandler.this;
            r0 = r0.f;
            r0 = r0.g;
            r0 = r0.a(r10);
            if (r0 != 0) goto L_0x0021;
        L_0x000c:
            r0 = new java.lang.IllegalArgumentException;
            r1 = new java.lang.StringBuilder;
            r2 = "no ad ";
            r1.<init>(r2);
            r1 = r1.append(r10);
            r1 = r1.toString();
            r0.<init>(r1);
            throw r0;
        L_0x0021:
            r1 = r0.h();
            r2 = com.vungle.publisher.service.PrepareLocalAdIntentHandler.AnonymousClass_1.a;
            r1 = r1.ordinal();
            r1 = r2[r1];
            switch(r1) {
                case 4: goto L_0x0101;
                case 5: goto L_0x0118;
                default: goto L_0x0030;
            };
        L_0x0030:
            if (r11 == 0) goto L_0x0064;
        L_0x0032:
            r1 = r0.b(r11);	 Catch:{ all -> 0x00fc }
            r2 = com.vungle.publisher.service.PrepareLocalAdIntentHandler.AnonymousClass_1.b;	 Catch:{ all -> 0x00fc }
            r3 = r11.ordinal();	 Catch:{ all -> 0x00fc }
            r2 = r2[r3];	 Catch:{ all -> 0x00fc }
            switch(r2) {
                case 1: goto L_0x0139;
                case 2: goto L_0x0139;
                default: goto L_0x0041;
            };	 Catch:{ all -> 0x00fc }
        L_0x0041:
            r2 = "VunglePrepare";
            r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00fc }
            r3.<init>();	 Catch:{ all -> 0x00fc }
            r3 = r3.append(r11);	 Catch:{ all -> 0x00fc }
            r4 = " downloaded for ad ";
            r3 = r3.append(r4);	 Catch:{ all -> 0x00fc }
            r4 = r9.b;	 Catch:{ all -> 0x00fc }
            r3 = r3.append(r4);	 Catch:{ all -> 0x00fc }
            r3 = r3.toString();	 Catch:{ all -> 0x00fc }
            com.vungle.log.Logger.i(r2, r3);	 Catch:{ all -> 0x00fc }
            r2 = com.vungle.publisher.am.a.c;	 Catch:{ all -> 0x00fc }
            r1.a(r2);	 Catch:{ all -> 0x00fc }
        L_0x0064:
            r1 = r0.d();	 Catch:{ all -> 0x00fc }
            r2 = r0.h();	 Catch:{ all -> 0x00fc }
            r3 = com.vungle.publisher.db.model.Ad.a.b;	 Catch:{ all -> 0x00fc }
            if (r2 != r3) goto L_0x00a9;
        L_0x0070:
            r3 = com.vungle.publisher.db.model.Ad.a.d;	 Catch:{ all -> 0x00fc }
            r4 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x00fc }
            r6 = r0.i();	 Catch:{ all -> 0x00fc }
            r8 = (r4 > r6 ? 1 : (r4 == r6? 0 : -1));
            if (r8 >= 0) goto L_0x013e;
        L_0x007e:
            r4 = "VunglePrepare";
            r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00fc }
            r6 = "clock change detected; updating ad.id ";
            r5.<init>(r6);	 Catch:{ all -> 0x00fc }
            r1 = r5.append(r1);	 Catch:{ all -> 0x00fc }
            r5 = " status from ";
            r1 = r1.append(r5);	 Catch:{ all -> 0x00fc }
            r1 = r1.append(r2);	 Catch:{ all -> 0x00fc }
            r2 = " to ";
            r1 = r1.append(r2);	 Catch:{ all -> 0x00fc }
            r1 = r1.append(r3);	 Catch:{ all -> 0x00fc }
            r1 = r1.toString();	 Catch:{ all -> 0x00fc }
            com.vungle.log.Logger.d(r4, r1);	 Catch:{ all -> 0x00fc }
            r0.a(r3);	 Catch:{ all -> 0x00fc }
        L_0x00a9:
            r1 = com.vungle.publisher.db.model.Ad.a.b;	 Catch:{ all -> 0x00fc }
        L_0x00ab:
            r2 = r0.t;	 Catch:{ all -> 0x00fc }
            r1 = 3;
            if (r2 >= r1) goto L_0x0245;
        L_0x00b0:
            r1 = com.vungle.publisher.service.PrepareLocalAdIntentHandler.AnonymousClass_1.a;	 Catch:{ b -> 0x00d4 }
            r3 = r0.h();	 Catch:{ b -> 0x00d4 }
            r4 = r3.ordinal();	 Catch:{ b -> 0x00d4 }
            r1 = r1[r4];	 Catch:{ b -> 0x00d4 }
            switch(r1) {
                case 1: goto L_0x01a7;
                case 2: goto L_0x01b3;
                case 3: goto L_0x021c;
                default: goto L_0x00bf;
            };	 Catch:{ b -> 0x00d4 }
        L_0x00bf:
            r1 = new java.lang.IllegalStateException;	 Catch:{ b -> 0x00d4 }
            r2 = new java.lang.StringBuilder;	 Catch:{ b -> 0x00d4 }
            r4 = "unexpected ad.status: ";
            r2.<init>(r4);	 Catch:{ b -> 0x00d4 }
            r2 = r2.append(r3);	 Catch:{ b -> 0x00d4 }
            r2 = r2.toString();	 Catch:{ b -> 0x00d4 }
            r1.<init>(r2);	 Catch:{ b -> 0x00d4 }
            throw r1;	 Catch:{ b -> 0x00d4 }
        L_0x00d4:
            r1 = move-exception;
            r2 = "VunglePrepare";
            r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00fc }
            r3.<init>();	 Catch:{ all -> 0x00fc }
            r1 = r1.getMessage();	 Catch:{ all -> 0x00fc }
            r1 = r3.append(r1);	 Catch:{ all -> 0x00fc }
            r3 = " for ad.id: ";
            r1 = r1.append(r3);	 Catch:{ all -> 0x00fc }
            r1 = r1.append(r10);	 Catch:{ all -> 0x00fc }
            r1 = r1.toString();	 Catch:{ all -> 0x00fc }
            com.vungle.log.Logger.w(r2, r1);	 Catch:{ all -> 0x00fc }
            r1 = r0.t;	 Catch:{ all -> 0x00fc }
            r1 = r1 + 1;
            r0.t = r1;	 Catch:{ all -> 0x00fc }
            goto L_0x00ab;
        L_0x00fc:
            r1 = move-exception;
            r0.l();	 Catch:{ Exception -> 0x0265 }
        L_0x0100:
            throw r1;
        L_0x0101:
            r0 = new com.vungle.publisher.service.PrepareLocalAdIntentHandler$a;
            r1 = new java.lang.StringBuilder;
            r2 = "ad status: ";
            r1.<init>(r2);
            r2 = com.vungle.publisher.db.model.Ad.a.c;
            r1 = r1.append(r2);
            r1 = r1.toString();
            r0.<init>(r1);
            throw r0;
        L_0x0118:
            r1 = "VunglePrepare";
            r2 = new java.lang.StringBuilder;
            r3 = "ad already ";
            r2.<init>(r3);
            r3 = com.vungle.publisher.db.model.Ad.a.e;
            r2 = r2.append(r3);
            r3 = ": ";
            r2 = r2.append(r3);
            r2 = r2.append(r10);
            r2 = r2.toString();
            com.vungle.log.Logger.d(r1, r2);
        L_0x0138:
            return r0;
        L_0x0139:
            r1.a(r12);	 Catch:{ all -> 0x00fc }
            goto L_0x0041;
        L_0x013e:
            r4 = r4 - r6;
            r6 = 60000; // 0xea60 float:8.4078E-41 double:2.9644E-319;
            r4 = r4 / r6;
            r6 = 1440; // 0x5a0 float:2.018E-42 double:7.115E-321;
            r6 = (r4 > r6 ? 1 : (r4 == r6? 0 : -1));
            if (r6 < 0) goto L_0x018c;
        L_0x0149:
            r6 = "VunglePrepare";
            r7 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00fc }
            r8 = "retrying ";
            r7.<init>(r8);	 Catch:{ all -> 0x00fc }
            r8 = com.vungle.publisher.db.model.Ad.a.b;	 Catch:{ all -> 0x00fc }
            r7 = r7.append(r8);	 Catch:{ all -> 0x00fc }
            r8 = " ad.id ";
            r7 = r7.append(r8);	 Catch:{ all -> 0x00fc }
            r1 = r7.append(r1);	 Catch:{ all -> 0x00fc }
            r7 = " after ";
            r1 = r1.append(r7);	 Catch:{ all -> 0x00fc }
            r1 = r1.append(r4);	 Catch:{ all -> 0x00fc }
            r4 = "/1440 minutes; updating status from ";
            r1 = r1.append(r4);	 Catch:{ all -> 0x00fc }
            r1 = r1.append(r2);	 Catch:{ all -> 0x00fc }
            r2 = " to ";
            r1 = r1.append(r2);	 Catch:{ all -> 0x00fc }
            r1 = r1.append(r3);	 Catch:{ all -> 0x00fc }
            r1 = r1.toString();	 Catch:{ all -> 0x00fc }
            com.vungle.log.Logger.d(r6, r1);	 Catch:{ all -> 0x00fc }
            r0.a(r3);	 Catch:{ all -> 0x00fc }
            goto L_0x00a9;
        L_0x018c:
            r1 = new com.vungle.publisher.service.PrepareLocalAdIntentHandler$a;	 Catch:{ all -> 0x00fc }
            r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00fc }
            r3 = "ad marked failed ";
            r2.<init>(r3);	 Catch:{ all -> 0x00fc }
            r2 = r2.append(r4);	 Catch:{ all -> 0x00fc }
            r3 = " minutes ago";
            r2 = r2.append(r3);	 Catch:{ all -> 0x00fc }
            r2 = r2.toString();	 Catch:{ all -> 0x00fc }
            r1.<init>(r2);	 Catch:{ all -> 0x00fc }
            throw r1;	 Catch:{ all -> 0x00fc }
        L_0x01a7:
            r1 = com.vungle.publisher.service.PrepareLocalAdIntentHandler.this;	 Catch:{ b -> 0x00d4 }
            r1 = r1.j;	 Catch:{ b -> 0x00d4 }
            r1.a(r0);	 Catch:{ b -> 0x00d4 }
            r1 = com.vungle.publisher.db.model.Ad.a.d;	 Catch:{ b -> 0x00d4 }
            r0.a(r1);	 Catch:{ b -> 0x00d4 }
        L_0x01b3:
            r3 = "VunglePrepare";
            r4 = new java.lang.StringBuilder;	 Catch:{ b -> 0x00d4 }
            r4.<init>();	 Catch:{ b -> 0x00d4 }
            if (r11 != 0) goto L_0x0206;
        L_0x01bc:
            r1 = "download ";
        L_0x01be:
            r1 = r4.append(r1);	 Catch:{ b -> 0x00d4 }
            r4 = "prepare_retry_count ";
            r1 = r1.append(r4);	 Catch:{ b -> 0x00d4 }
            r1 = r1.append(r2);	 Catch:{ b -> 0x00d4 }
            r2 = " for ad ";
            r1 = r1.append(r2);	 Catch:{ b -> 0x00d4 }
            r1 = r1.append(r10);	 Catch:{ b -> 0x00d4 }
            r1 = r1.toString();	 Catch:{ b -> 0x00d4 }
            com.vungle.log.Logger.d(r3, r1);	 Catch:{ b -> 0x00d4 }
            r9.a(r0);	 Catch:{ b -> 0x00d4 }
            r0.l();	 Catch:{ Exception -> 0x01e5 }
            goto L_0x0138;
        L_0x01e5:
            r1 = move-exception;
            r1 = "VunglePrepare";
            r2 = new java.lang.StringBuilder;
            r3 = "error saving ad ";
            r2.<init>(r3);
            r3 = r0.d();
            r2 = r2.append(r3);
            r3 = " to database";
            r2 = r2.append(r3);
            r2 = r2.toString();
            com.vungle.log.Logger.e(r1, r2);
            goto L_0x0138;
        L_0x0206:
            r1 = new java.lang.StringBuilder;	 Catch:{ b -> 0x00d4 }
            r5 = "prepare ";
            r1.<init>(r5);	 Catch:{ b -> 0x00d4 }
            r1 = r1.append(r11);	 Catch:{ b -> 0x00d4 }
            r5 = " ";
            r1 = r1.append(r5);	 Catch:{ b -> 0x00d4 }
            r1 = r1.toString();	 Catch:{ b -> 0x00d4 }
            goto L_0x01be;
        L_0x021c:
            r9.b(r0);	 Catch:{ b -> 0x00d4 }
            r0.l();	 Catch:{ Exception -> 0x0224 }
            goto L_0x0138;
        L_0x0224:
            r1 = move-exception;
            r1 = "VunglePrepare";
            r2 = new java.lang.StringBuilder;
            r3 = "error saving ad ";
            r2.<init>(r3);
            r3 = r0.d();
            r2 = r2.append(r3);
            r3 = " to database";
            r2 = r2.append(r3);
            r2 = r2.toString();
            com.vungle.log.Logger.e(r1, r2);
            goto L_0x0138;
        L_0x0245:
            r1 = com.vungle.publisher.db.model.Ad.a.b;	 Catch:{ all -> 0x00fc }
            r0.a(r1);	 Catch:{ all -> 0x00fc }
            r1 = new com.vungle.publisher.service.PrepareLocalAdIntentHandler$a;	 Catch:{ all -> 0x00fc }
            r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00fc }
            r4 = "failed to prepare ad after ";
            r3.<init>(r4);	 Catch:{ all -> 0x00fc }
            r2 = r3.append(r2);	 Catch:{ all -> 0x00fc }
            r3 = " attempts";
            r2 = r2.append(r3);	 Catch:{ all -> 0x00fc }
            r2 = r2.toString();	 Catch:{ all -> 0x00fc }
            r1.<init>(r2);	 Catch:{ all -> 0x00fc }
            throw r1;	 Catch:{ all -> 0x00fc }
        L_0x0265:
            r2 = move-exception;
            r2 = "VunglePrepare";
            r3 = new java.lang.StringBuilder;
            r4 = "error saving ad ";
            r3.<init>(r4);
            r0 = r0.d();
            r0 = r3.append(r0);
            r3 = " to database";
            r0 = r0.append(r3);
            r0 = r0.toString();
            com.vungle.log.Logger.e(r2, r0);
            goto L_0x0100;
            */
        }

        private void a(LocalAd localAd) {
            boolean z = 1;
            c(localAd);
            al[] s = localAd.s();
            int length = s.length;
            int i = 0;
            while (i < length) {
                if (!a(s[i])) {
                    z = false;
                }
                i++;
            }
            if (i != 0) {
                Logger.i(Logger.PREPARE_TAG, new StringBuilder("ad ready ").append(localAd.d()).toString());
                localAd.a(com.vungle.publisher.db.model.Ad.a.e);
                ((LocalAdReport) PrepareLocalAdIntentHandler.this.j.c.b(localAd)).d(Long.valueOf(System.currentTimeMillis()));
            } else {
                Logger.d(Logger.PREPARE_TAG, new StringBuilder("ad not ready ").append(localAd.d()).toString());
            }
        }

        private boolean a(al alVar) {
            com.vungle.publisher.am.b i = alVar.i();
            com.vungle.publisher.am.a h = alVar.h();
            switch (AnonymousClass_1.c[h.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    try {
                        alVar.t();
                        return false;
                    } catch (az e) {
                        throw new a("external storage not available, could not download ad", e);
                    }
                case GoogleScorer.CLIENT_PLUS:
                    Logger.d(Logger.PREPARE_TAG, i + " still downloading for ad_id " + this.b);
                    return false;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    try {
                        if (alVar.z()) {
                            return true;
                        }
                        throw new b(alVar.i() + " post processing failed for ad_id " + alVar.f());
                    } catch (az e2) {
                        throw new a("external storage not available, could not post process ad", e2);
                    }
                case GoogleScorer.CLIENT_APPSTATE:
                    Logger.v(Logger.PREPARE_TAG, i + " already " + h + " for ad_id " + this.b);
                    return true;
                default:
                    throw new IllegalStateException(new StringBuilder("unexpected ").append(i).append(" status: ").append(h).toString());
            }
        }

        private void b(LocalAd localAd) {
            String d = localAd.d();
            Logger.d(Logger.PREPARE_TAG, new StringBuilder("re-verify prepare_retry_count ").append(localAd.t).append(" for ad ").append(d).toString());
            c(localAd);
            al[] s = localAd.s();
            int length = s.length;
            int i = 0;
            while (i < length) {
                al alVar = s[i];
                if (alVar.B()) {
                    i++;
                } else {
                    throw new b(alVar.i() + " re-verification failed for ad_id " + alVar.f());
                }
            }
            com.vungle.publisher.db.model.Ad.a aVar = com.vungle.publisher.db.model.Ad.a.e;
            Logger.i(Logger.PREPARE_TAG, new StringBuilder("re-verified ad and set to ").append(aVar).append(": ").append(d).toString());
            PrepareLocalAdIntentHandler.this.j.a(localAd).d(Long.valueOf(-1));
            localAd.a(aVar);
        }

        private static void c_(LocalAd localAd) {
            if (!localAd.t()) {
                throw new a("invalid ad - no viewables");
            }
        }

        public final void run() {
            try {
                if (a(this.b, this.c, this.d).h() == com.vungle.publisher.db.model.Ad.a.e) {
                    PrepareLocalAdIntentHandler.this.i.c(new v());
                }
            } catch (a e) {
                Logger.w(Logger.PREPARE_TAG, e.getMessage() + " for ad.id " + this.b);
                PrepareLocalAdIntentHandler.this.i.b(new o());
            } catch (Exception e2) {
                Logger.e(Logger.PREPARE_TAG, new StringBuilder("error processing ad.id: ").append(this.b).toString(), e2);
                PrepareLocalAdIntentHandler.this.i.b(new o());
            }
        }
    }

    public PrepareLocalAdIntentHandler(String str) {
        super(str, 1, 10);
    }

    protected final Runnable a(Intent intent) {
        String stringExtra = intent.getStringExtra(VungleService.AD_ID_EXTRA_KEY);
        com.vungle.publisher.am.b bVar = (com.vungle.publisher.am.b) intent.getParcelableExtra(VungleService.VIEWABLE_TYPE_EXTRA_KEY);
        Integer valueOf = intent.hasExtra(VungleService.VIEWABLE_SIZE_EXTRA_KEY) ? Integer.valueOf(intent.getIntExtra(VungleService.VIEWABLE_SIZE_EXTRA_KEY, -1)) : null;
        if (stringExtra == null) {
            throw new IllegalArgumentException("no adId in intent");
        }
        Logger.d(Logger.SERVICE_TAG, this.a + " creating runnable: adId " + stringExtra + ", viewableType " + bVar + ", viewableSize " + valueOf);
        return new c(stringExtra, bVar, valueOf);
    }

    public final /* bridge */ /* synthetic */ void a(int i, int i2, List list) {
        super.a(i, i2, list);
    }

    public final /* bridge */ /* synthetic */ void a(Thread thread, Runnable runnable, int i, int i2) {
        super.a(thread, runnable, i, i2);
    }

    public final /* bridge */ /* synthetic */ void b(int i) {
        super.b(i);
    }

    public final /* bridge */ /* synthetic */ void c(int i) {
        super.c(i);
    }
}