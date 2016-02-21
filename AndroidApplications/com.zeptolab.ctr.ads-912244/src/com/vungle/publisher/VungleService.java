package com.vungle.publisher;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.vungle.log.Logger;
import com.vungle.publisher.db.DatabaseHelper;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.service.DownloadIntentHandlerFactory;
import com.vungle.publisher.service.ExternalHttpIntentHandlerFactory;
import com.vungle.publisher.service.PrepareLocalAdIntentHandler;
import com.vungle.publisher.service.PrepareLocalAdIntentHandler.Factory;
import com.vungle.publisher.service.ProtocolIntentHandlerFactory;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;

public class VungleService extends Service {
    public static final String ACTIVITY_EVENT_EXTRA_KEY = "activityEvent";
    public static final String ACTIVITY_PAUSE = "activityPause";
    public static final String ACTIVITY_PAUSE_MILLIS_EXTRA_KEY = "activityPauseMillis";
    public static final String ACTIVITY_RESUME = "activityResume";
    public static final String AD_ID_EXTRA_KEY = "adId";
    public static final String DOWNLOAD_ACTION;
    public static final String DOWNLOAD_ACTION_SHORT_NAME = "DOWNLOAD";
    public static final String EXTERNAL_REQUEST_ACTION;
    public static final String EXTERNAL_REQUEST_ACTION_SHORT_NAME = "HTTP";
    public static final String HTTP_TRANSACTION_EXTRA_KEY = "transaction";
    public static final String PREPARE_AD_ACTION;
    public static final String PREPARE_AD_ACTION_SHORT_NAME = "PREPARE_AD";
    public static final String PROTOCOL_ACTION;
    public static final String PROTOCOL_ACTION_SHORT_NAME = "PROTOCOL";
    public static final String SESSION_EVENT_ACTION;
    public static final String SESSION_EVENT_ACTION_SHORT_NAME = "SESSION";
    public static final String SESSION_START_MILLIS_EXTRA_KEY = "sessionStartMillis";
    public static final String VIEWABLE_SIZE_EXTRA_KEY = "viewableSize";
    public static final String VIEWABLE_TYPE_EXTRA_KEY = "viewableType";
    private static final String g;
    final String a;
    @Inject
    DownloadIntentHandlerFactory b;
    @Inject
    ExternalHttpIntentHandlerFactory c;
    @Inject
    Factory d;
    @Inject
    ProtocolIntentHandlerFactory e;
    @Inject
    DatabaseHelper f;
    private final a h;

    class a {
        final Map a;
        volatile int b;

        abstract class g implements com.vungle.publisher.bw.a {
            final String c;
            bw d;
            final cg e;

            g(String str) {
                this.e = new cg();
                this.c = a.this.c.a + "[" + str + "]";
                a();
            }

            abstract void a();

            abstract void b(int i);

            public final void c(int i) {
                int i2 = a.this.b;
                if (this.e.a(i, 0, false)) {
                    d(i2);
                } else {
                    Logger.d(Logger.SERVICE_TAG, this.c + " subservice shutdown ignored: received token " + i + ", expected token " + this.e.a());
                }
            }

            final void d(int i) {
                a aVar = a.this;
                List arrayList = new ArrayList();
                Iterator it = aVar.a.values().iterator();
                while (it.hasNext()) {
                    g gVar = (g) it.next();
                    cf cfVar = gVar.e;
                    cfVar.b();
                    int i2 = cfVar.b.get();
                    ca.b(0);
                    if (((i2 & 1) != 0 ? 1 : false) != 0) {
                        arrayList.add(gVar.c);
                    }
                }
                if (arrayList.isEmpty()) {
                    Logger.d(Logger.SERVICE_TAG, this.c + " sending " + a.this.c.a + " shutdown signal: " + i);
                    if (a.this.c.stopSelfResult(i)) {
                        Logger.i(Logger.SERVICE_TAG, this.c + " " + a.this.c.a + " shutdown");
                    } else {
                        Logger.d(Logger.SERVICE_TAG, this.c + " " + a.this.c.a + " shutdown ignored: received token " + i + ", expected token " + a.this.b);
                    }
                } else {
                    Logger.d(Logger.SERVICE_TAG, this.c + " " + a.this.c.a + " shutdown ignored: " + arrayList + " still running");
                }
            }
        }

        abstract class h extends g {
            h(String str) {
                super(str);
            }

            public final void a(int i) {
                int i2;
                boolean z;
                int i3 = a.this;
                int a;
                do {
                    a = this.e.a();
                    i2 = a - i;
                    z = i2 != 0;
                } while (!this.e.a(a, i2, z));
                Logger.d(Logger.SERVICE_TAG, this.c + " " + a.this.c.a + " forced shutdown: current number of tasks " + i2);
                if (!z) {
                    d(i3);
                }
            }

            final void b(int i) {
                cf cfVar = this.e;
                if ((cfVar.c() & 1) != 1) {
                    throw new IllegalArgumentException(new StringBuilder("bit array has out of range bits set: 1 (max bits: ").append(cfVar.a).append(")").toString());
                }
                int i2;
                do {
                    i2 = a.this.get();
                } while (!a.this.compareAndSet(i2, cfVar.a(i2 >>> cfVar.a + 1, 1)));
            }
        }

        class a extends h {
            a() {
                super(DOWNLOAD_ACTION_SHORT_NAME);
            }

            final void a_() {
                this.d = a.this.c.b.a(this.c, new com.vungle.publisher.bw.a[]{this});
            }
        }

        class b extends h {
            b() {
                super(EXTERNAL_REQUEST_ACTION_SHORT_NAME);
            }

            final void a() {
                this.d = a.this.c.c.a(this.c, new com.vungle.publisher.bw.a[]{this});
            }
        }

        abstract class c extends g {
            c(String str) {
                super(str);
            }

            public final void a(int i) {
                cf cfVar = this.e;
                cfVar.b();
                ca.a(0);
                int i2;
                do {
                    i2 = cfVar.b.get();
                } while (!cfVar.b.compareAndSet(i2, ca.a(i2, 0, 0)));
                Logger.d(Logger.SERVICE_TAG, this.c + " service forced shutdown: received last task ID" + i + ", actual last task ID: " + this.e.b.get());
                d(a.this.b);
            }

            final void b(int i) {
                cf cfVar = this.e;
                cfVar.a(i);
                cfVar.b();
                int i2;
                do {
                    i2 = cfVar.b.get();
                } while (!cfVar.b.compareAndSet(i2, cfVar.a(i, ca.a(i2, 0, 1))));
            }
        }

        class d extends h {
            d() {
                super(PREPARE_AD_ACTION_SHORT_NAME);
            }

            final void a() {
                Factory factory = a.this.c.d;
                com.vungle.publisher.bw.a[] aVarArr = new com.vungle.publisher.bw.a[]{this};
                bw prepareLocalAdIntentHandler = new PrepareLocalAdIntentHandler(this.c);
                prepareLocalAdIntentHandler.f = a.this;
                prepareLocalAdIntentHandler.g = factory.b;
                prepareLocalAdIntentHandler.h = factory.c;
                prepareLocalAdIntentHandler.i = factory.d;
                prepareLocalAdIntentHandler.j = factory.e;
                prepareLocalAdIntentHandler.a(aVarArr);
                this.d = prepareLocalAdIntentHandler;
            }
        }

        class e extends h {
            e() {
                super(PROTOCOL_ACTION_SHORT_NAME);
            }

            final void a() {
                this.d = a.this.c.e.a(this.c, new com.vungle.publisher.bw.a[]{this});
            }
        }

        class f extends c {
            f() {
                super(SESSION_EVENT_ACTION_SHORT_NAME);
            }

            final void a() {
                this.d = new by(this.c);
                this.d.a(new com.vungle.publisher.bw.a[]{this});
            }
        }

        a() {
            this.a = new HashMap();
        }

        final void a_(int i) {
            Logger.v(Logger.SERVICE_TAG, VungleService.this.a + " service last task ID: " + i);
            this.b = i;
        }
    }

    static {
        g = VungleService.class.getName();
        DOWNLOAD_ACTION = g + ".DOWNLOAD";
        PREPARE_AD_ACTION = g + ".PREPARE_AD";
        EXTERNAL_REQUEST_ACTION = g + ".HTTP";
        PROTOCOL_ACTION = g + ".PROTOCOL";
        SESSION_EVENT_ACTION = g + ".SESSION";
    }

    public VungleService() {
        this.a = getClass().getSimpleName();
        this.h = new a();
    }

    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    public void onCreate() {
        try {
            super.onCreate();
            Injector.getInstance().a.a(this);
            a aVar = this.h;
            aVar.a.put(DOWNLOAD_ACTION, new a());
            aVar.a.put(EXTERNAL_REQUEST_ACTION, new b());
            aVar.a.put(PREPARE_AD_ACTION, new d());
            aVar.a.put(PROTOCOL_ACTION, new e());
            aVar.a.put(SESSION_EVENT_ACTION, new f());
        } catch (Exception e) {
            Logger.e(Logger.SERVICE_TAG, e);
        }
    }

    public void onStart(Intent intent, int i) {
        if (intent != null) {
            try {
                a aVar = this.h;
                String action = intent.getAction();
                g gVar = (g) aVar.a.get(action);
                if (gVar == null) {
                    aVar.a(i);
                    throw new IllegalArgumentException(new StringBuilder("unknown action: ").append(action).toString());
                } else {
                    gVar.b(i);
                    gVar.f.a(i);
                    gVar.d.a(intent, i);
                }
            } catch (IllegalArgumentException e) {
                Logger.w(Logger.SERVICE_TAG, e.getMessage());
            } catch (Exception e2) {
                Logger.e(Logger.SERVICE_TAG, e2);
            }
        }
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        onStart(intent, i2);
        return GoogleScorer.CLIENT_PLUS;
    }
}