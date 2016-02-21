package com.vungle.publisher.ad;

import android.content.Context;
import android.database.SQLException;
import com.vungle.log.Logger;
import com.vungle.publisher.as;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.aw;
import com.vungle.publisher.bi;
import com.vungle.publisher.bj;
import com.vungle.publisher.c;
import com.vungle.publisher.cj;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.Ad.a;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LocalAd.Factory;
import com.vungle.publisher.db.model.StreamingAd;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.inject.annotations.FullScreenAdActivityClass;
import com.vungle.publisher.j;
import com.vungle.publisher.k;
import com.vungle.publisher.n;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import com.vungle.publisher.protocol.RequestStreamingAdHttpTransactionFactory;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse;
import com.vungle.publisher.q;
import com.vungle.publisher.t;
import com.vungle.publisher.z;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONException;

@Singleton
public class AdManager {
    @Inject
    public AdPreparer a;
    @Inject
    Context b;
    @Inject
    as c;
    @Inject
    public cj d;
    @FullScreenAdActivityClass
    @Inject
    Class e;
    @Inject
    public ScheduledPriorityExecutor f;
    @Inject
    public Factory g;
    @Inject
    bj h;
    @Inject
    Provider i;
    @Inject
    Provider j;
    @Inject
    ProtocolHttpGateway k;
    @Inject
    SdkConfig l;
    @Inject
    public StreamingAd.Factory m;

    public final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ c a;

        public AnonymousClass_1(c cVar) {
            this.a = cVar;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void run() {
            throw new UnsupportedOperationException("Method not decompiled: com.vungle.publisher.ad.AdManager.AnonymousClass_1.run():void");
            /*
            r6 = this;
            r1 = 0;
            r0 = 0;
            r4 = com.vungle.publisher.ad.AdManager.this;	 Catch:{ Exception -> 0x008d }
            r5 = r6.a;	 Catch:{ Exception -> 0x008d }
            r2 = r4.a();	 Catch:{ Exception -> 0x008d }
            if (r2 != 0) goto L_0x0049;
        L_0x000c:
            r3 = r1;
        L_0x000d:
            r3 = r4.a(r3, r5);	 Catch:{ Exception -> 0x008d }
            if (r3 != 0) goto L_0x004e;
        L_0x0013:
            r4 = "VungleAd";
            r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x008d }
            r3 = "next ad ";
            r5.<init>(r3);	 Catch:{ Exception -> 0x008d }
            if (r2 != 0) goto L_0x0050;
        L_0x001e:
            r3 = r1;
        L_0x001f:
            r3 = r5.append(r3);	 Catch:{ Exception -> 0x008d }
            r3 = r3.toString();	 Catch:{ Exception -> 0x008d }
            com.vungle.log.Logger.i(r4, r3);	 Catch:{ Exception -> 0x008d }
            if (r2 != 0) goto L_0x0055;
        L_0x002c:
            r1 = "VungleAd";
            r3 = "no ad to play";
            com.vungle.log.Logger.d(r1, r3);	 Catch:{ Exception -> 0x00b2 }
            r1 = com.vungle.publisher.ad.AdManager.this;	 Catch:{ Exception -> 0x00b2 }
            r1 = r1.d;	 Catch:{ Exception -> 0x00b2 }
            r3 = new com.vungle.publisher.ad;	 Catch:{ Exception -> 0x00b2 }
            r3.<init>();	 Catch:{ Exception -> 0x00b2 }
            r1.b(r3);	 Catch:{ Exception -> 0x00b2 }
        L_0x003f:
            if (r0 != 0) goto L_0x0048;
        L_0x0041:
            r0 = com.vungle.publisher.ad.AdManager.this;
            r0 = r0.k;
            r0.e();
        L_0x0048:
            return;
        L_0x0049:
            r3 = r2.d();	 Catch:{ Exception -> 0x008d }
            goto L_0x000d;
        L_0x004e:
            r2 = r3;
            goto L_0x0013;
        L_0x0050:
            r3 = r2.x();	 Catch:{ Exception -> 0x008d }
            goto L_0x001f;
        L_0x0055:
            r0 = com.vungle.publisher.ad.AdManager.this;	 Catch:{ Exception -> 0x00b2 }
            r0 = r0.i;	 Catch:{ Exception -> 0x00b2 }
            r0 = r0.get();	 Catch:{ Exception -> 0x00b2 }
            r0 = (com.vungle.publisher.ad.AdManager.PlayAdEventListener) r0;	 Catch:{ Exception -> 0x00b2 }
            r0.b();	 Catch:{ Exception -> 0x00b2 }
            r0 = new android.content.Intent;	 Catch:{ Exception -> 0x00b2 }
            r1 = com.vungle.publisher.ad.AdManager.this;	 Catch:{ Exception -> 0x00b2 }
            r1 = com.vungle.publisher.ad.AdManager.this;	 Catch:{ Exception -> 0x00b2 }
            r3 = com.vungle.publisher.ad.AdManager.this;	 Catch:{ Exception -> 0x00b2 }
            r3 = r3.e;	 Catch:{ Exception -> 0x00b2 }
            r0.<init>(r1, r3);	 Catch:{ Exception -> 0x00b2 }
            r1 = 805306368; // 0x30000000 float:4.656613E-10 double:3.97874211E-315;
            r0.addFlags(r1);	 Catch:{ Exception -> 0x00b2 }
            r1 = "adConfig";
            r3 = r6.a;	 Catch:{ Exception -> 0x00b2 }
            r0.putExtra(r1, r3);	 Catch:{ Exception -> 0x00b2 }
            r1 = "adId";
            r3 = r2.d();	 Catch:{ Exception -> 0x00b2 }
            r0.putExtra(r1, r3);	 Catch:{ Exception -> 0x00b2 }
            r1 = com.vungle.publisher.ad.AdManager.this;	 Catch:{ Exception -> 0x00b2 }
            r1 = com.vungle.publisher.ad.AdManager.this;	 Catch:{ Exception -> 0x00b2 }
            r1.startActivity(r0);	 Catch:{ Exception -> 0x00b2 }
            r0 = 1;
            goto L_0x003f;
        L_0x008d:
            r0 = move-exception;
        L_0x008e:
            r2 = "VungleAd";
            r3 = "error launching ad";
            com.vungle.log.Logger.e(r2, r3, r0);	 Catch:{ all -> 0x00a9 }
            r0 = com.vungle.publisher.ad.AdManager.this;	 Catch:{ all -> 0x00a9 }
            r0 = r0.d;	 Catch:{ all -> 0x00a9 }
            r2 = new com.vungle.publisher.af;	 Catch:{ all -> 0x00a9 }
            r2.<init>(r1);	 Catch:{ all -> 0x00a9 }
            r0.b(r2);	 Catch:{ all -> 0x00a9 }
            r0 = com.vungle.publisher.ad.AdManager.this;
            r0 = r0.k;
            r0.e();
            goto L_0x0048;
        L_0x00a9:
            r0 = move-exception;
            r1 = com.vungle.publisher.ad.AdManager.this;
            r1 = r1.k;
            r1.e();
            throw r0;
        L_0x00b2:
            r0 = move-exception;
            r1 = r2;
            goto L_0x008e;
            */
        }
    }

    public static /* synthetic */ class AnonymousClass_2 {
        public static final /* synthetic */ int[] a;

        static {
            a = new int[a.values().length];
            try {
                a[a.a.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[a.b.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[a.d.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[a.f.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            a[a.e.ordinal()] = 5;
        }
    }

    @Singleton
    static class PlayAdEventListener extends aw {
        final String a;
        @Inject
        AdManager b;

        PlayAdEventListener() {
            this.a = Logger.PREPARE_TAG;
        }

        public void onEvent(j jVar) {
            Logger.d(Logger.PREPARE_TAG, "report ads complete - fetching next local ad");
            this.b.a();
            d();
        }

        public void onEvent(t tVar) {
            try {
                Ad a = tVar.a();
                a.a(a.f);
                a.l();
                AdManager adManager = this.b;
                if ((adManager.g.c() != null ? 1 : 0) == 0) {
                    adManager.d.a(n.class);
                }
            } catch (Exception e) {
                Logger.e(Logger.PREPARE_TAG, "error processing start play ad event");
            }
        }

        public void onEvent(z zVar) {
            Logger.d(Logger.PREPARE_TAG, "play ad failure - unregistering play ad listener");
            d();
        }
    }

    static class PrepareStreamingAdEventListener extends aw {
        final String a;
        volatile boolean b;
        volatile StreamingAd c;
        final long d;
        @Inject
        StreamingAd.Factory e;

        PrepareStreamingAdEventListener() {
            this.a = Logger.PREPARE_TAG;
            this.d = System.currentTimeMillis();
        }

        final void a() {
            this.b = true;
            synchronized (this) {
                notifyAll();
            }
        }

        public void onEvent(k kVar) {
            d();
            Logger.d(Logger.PREPARE_TAG, new StringBuilder("request streaming ad failure after ").append(kVar.c - this.d).append(" ms").toString());
            a();
        }

        public void onEvent(q qVar) {
            d();
            long j = qVar.c - this.d;
            RequestStreamingAdResponse requestStreamingAdResponse = qVar.a;
            if (Boolean.TRUE.equals(requestStreamingAdResponse.r)) {
                Logger.d(Logger.PREPARE_TAG, new StringBuilder("received streaming ad ").append(requestStreamingAdResponse.f()).append(" after ").append(j).append(" ms").toString());
                String f = requestStreamingAdResponse.f();
                StreamingAd streamingAd = (StreamingAd) this.e.a(f, true);
                if (streamingAd == null) {
                    streamingAd = this.e.a(requestStreamingAdResponse);
                    this.c = streamingAd;
                    Logger.d(Logger.PREPARE_TAG, new StringBuilder("inserting new ").append(streamingAd.x()).toString());
                    try {
                        streamingAd.k();
                    } catch (SQLException e) {
                        Logger.d(Logger.PREPARE_TAG, "did not insert streaming ad - possible duplicate");
                    }
                } else {
                    try {
                        this.e.a(streamingAd, requestStreamingAdResponse);
                    } catch (Exception e2) {
                        Logger.w(Logger.PREPARE_TAG, new StringBuilder("error updating ad ").append(f).toString(), e2);
                    }
                    a h = streamingAd.h();
                    switch (com.vungle.publisher.ad.AdManager.AnonymousClass_2.a[h.ordinal()]) {
                        case GoogleScorer.CLIENT_GAMES:
                            Logger.w(Logger.PREPARE_TAG, new StringBuilder("unexpected ad status ").append(h).append(" for ").append(streamingAd.x()).toString());
                            Logger.d(Logger.PREPARE_TAG, new StringBuilder("existing ").append(streamingAd.x()).append(" with status ").append(h).toString());
                            if (h != a.e) {
                                streamingAd.a(a.e);
                                streamingAd.l();
                            }
                            this.c = streamingAd;
                            break;
                        case GoogleScorer.CLIENT_APPSTATE:
                        case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                            Logger.d(Logger.PREPARE_TAG, new StringBuilder("existing ").append(streamingAd.x()).append(" with status ").append(h).toString());
                            if (h != a.e) {
                                streamingAd.a(a.e);
                                streamingAd.l();
                            }
                            this.c = streamingAd;
                            break;
                        default:
                            Logger.w(Logger.PREPARE_TAG, new StringBuilder("existing ").append(streamingAd.x()).append(" with status ").append(h).append(" - ignoring").toString());
                            break;
                    }
                }
            } else {
                Logger.d(Logger.PREPARE_TAG, new StringBuilder("no streaming ad to play after ").append(j).append(" ms").toString());
            }
            a();
        }
    }

    public final LocalAd a() {
        if (this.c.i()) {
            LocalAd c = this.g.c();
            if (c == null) {
                Logger.d(Logger.PREPARE_TAG, "no local ad available");
                this.k.d();
                return null;
            } else {
                Logger.v(Logger.PREPARE_TAG, "local ad already available");
                return c;
            }
        } else {
            Logger.w(Logger.PREPARE_TAG, "unable to fetch local ad -  no external storage available");
            return null;
        }
    }

    final StreamingAd a(String str, c cVar) {
        StreamingAd streamingAd;
        Throwable th;
        StreamingAd streamingAd2 = null;
        boolean z = false;
        try {
            if (this.l.b) {
                bi a = this.h.a();
                z = this.l.c.contains(a);
                Logger.d(Logger.PREPARE_TAG, new StringBuilder("ad streaming ").append(z ? "enabled" : "disabled").append(" for ").append(a).append(" connectivity").toString());
            } else {
                Logger.d(Logger.PREPARE_TAG, "ad streaming disabled");
            }
            if (!z) {
                return streamingAd2;
            }
            Logger.d(Logger.PREPARE_TAG, "requesting streaming ad");
            PrepareStreamingAdEventListener prepareStreamingAdEventListener = (PrepareStreamingAdEventListener) this.j.get();
            prepareStreamingAdEventListener.b();
            ProtocolHttpGateway protocolHttpGateway = this.k;
            try {
                RequestStreamingAdHttpTransactionFactory requestStreamingAdHttpTransactionFactory = protocolHttpGateway.h;
                protocolHttpGateway.a(new HttpTransaction(requestStreamingAdHttpTransactionFactory.a.a(str, cVar), requestStreamingAdHttpTransactionFactory.b));
            } catch (JSONException e) {
                Logger.w(Logger.PROTOCOL_TAG, e);
            }
            long j = prepareStreamingAdEventListener.d;
            int i = this.l.d;
            Logger.d(Logger.CONFIG_TAG, new StringBuilder("streaming response timeout config ").append(i).append(" ms").toString());
            long j2 = ((long) i) + j;
            synchronized (prepareStreamingAdEventListener) {
                while (!prepareStreamingAdEventListener.b) {
                    try {
                        long currentTimeMillis = j2 - System.currentTimeMillis();
                        if (currentTimeMillis > 0) {
                            try {
                                prepareStreamingAdEventListener.wait(currentTimeMillis);
                            } catch (InterruptedException e2) {
                            }
                        }
                    } catch (Throwable th2) {
                        streamingAd = streamingAd2;
                        th = th2;
                    }
                }
                break;
                long currentTimeMillis2 = System.currentTimeMillis() - j;
                if (prepareStreamingAdEventListener.b) {
                    streamingAd = prepareStreamingAdEventListener.c;
                    if (streamingAd != null) {
                        try {
                            Logger.d(Logger.PREPARE_TAG, new StringBuilder("request streaming ad success after ").append(currentTimeMillis2).append(" ms ").append(streamingAd.x()).toString());
                            streamingAd2 = streamingAd;
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                throw th;
                            } catch (Exception e3) {
                                th = e3;
                                streamingAd = streamingAd;
                                Logger.w(Logger.PREPARE_TAG, "error getting streaming ad", th);
                                return streamingAd;
                            }
                        }
                    } else {
                        streamingAd2 = streamingAd;
                    }
                } else {
                    Logger.d(Logger.PREPARE_TAG, new StringBuilder("request streaming ad timeout after ").append(currentTimeMillis2).append(" ms").toString());
                    prepareStreamingAdEventListener.a();
                }
                try {
                } catch (Throwable th4) {
                    streamingAd = streamingAd2;
                    th = th4;
                    throw th;
                }
            }
            return streamingAd2;
        } catch (Exception e4) {
            StreamingAd streamingAd3 = streamingAd2;
            th = e4;
            Logger.w(Logger.PREPARE_TAG, "error getting streaming ad", th);
            return streamingAd3;
        }
    }
}