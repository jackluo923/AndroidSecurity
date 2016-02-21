package com.vungle.publisher.protocol;

import android.os.SystemClock;
import com.vungle.log.Logger;
import com.vungle.publisher.SafeBundleAdConfigFactory;
import com.vungle.publisher.VungleService;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.async.ScheduledPriorityExecutor.b;
import com.vungle.publisher.aw;
import com.vungle.publisher.bm;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.LocalAdReport;
import com.vungle.publisher.db.model.StreamingAdReport;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.inject.annotations.RequestConfigHttpTransaction;
import com.vungle.publisher.inject.annotations.RequestLocalAdHttpTransaction;
import com.vungle.publisher.inject.annotations.TrackInstallHttpTransaction;
import com.vungle.publisher.m;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.reporting.AdServiceReportingHandler;
import com.vungle.publisher.s;
import com.vungle.publisher.v;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONException;

@Singleton
public class ProtocolHttpGateway extends bm {
    @Inject
    public ScheduledPriorityExecutor a;
    @Inject
    PrepareLocalAdEventListener d;
    @Inject
    ReportAdHttpTransactionFactory e;
    @Inject
    @RequestConfigHttpTransaction
    HttpTransaction f;
    @RequestLocalAdHttpTransaction
    @Inject
    Provider g;
    @Inject
    public RequestStreamingAdHttpTransactionFactory h;
    @Inject
    SafeBundleAdConfigFactory i;
    @Inject
    public SessionEndHttpTransactionFactory j;
    @Inject
    public SessionStartHttpTransactionFactory k;
    @TrackInstallHttpTransaction
    @Inject
    public Provider l;
    @Inject
    UnfilledAdHttpTransactionFactory m;
    @Inject
    AdServiceReportingHandler n;
    private AtomicBoolean o;

    public final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ AdReport a;

        public AnonymousClass_1(AdReport adReport) {
            this.a = adReport;
        }

        public final void run() {
            try {
                HttpTransaction httpTransaction;
                ProtocolHttpGateway protocolHttpGateway = ProtocolHttpGateway.this;
                ReportAdHttpTransactionFactory reportAdHttpTransactionFactory = ProtocolHttpGateway.this.e;
                AdReport adReport = this.a;
                if (adReport instanceof LocalAdReport) {
                    httpTransaction = new HttpTransaction(ProtocolHttpGateway.this.a((LocalAdReport) adReport), reportAdHttpTransactionFactory.a);
                } else if (adReport instanceof StreamingAdReport) {
                    httpTransaction = new HttpTransaction(reportAdHttpTransactionFactory.c.a((StreamingAdReport) adReport), reportAdHttpTransactionFactory.a);
                } else {
                    throw new UnsupportedOperationException(new StringBuilder("unknown report type ").append(adReport).toString());
                }
                protocolHttpGateway.a(httpTransaction);
            } catch (JSONException e) {
                Logger.w(Logger.PROTOCOL_TAG, e);
            }
        }
    }

    @Singleton
    static class PrepareLocalAdEventListener extends aw {
        @Inject
        Provider a;
        @Inject
        SdkConfig b;

        PrepareLocalAdEventListener() {
        }

        private void a(boolean z) {
            d();
            ProtocolHttpGateway protocolHttpGateway = (ProtocolHttpGateway) this.a.get();
            protocolHttpGateway.o.set(false);
            if (z) {
                protocolHttpGateway.d();
            }
        }

        public void onEvent(m mVar) {
            a(false);
        }

        public void onEvent(s sVar) {
            a(true);
        }

        public void onEvent(v vVar) {
            d();
            ((ProtocolHttpGateway) this.a.get()).o.set(false);
        }
    }

    ProtocolHttpGateway() {
        this.o = new AtomicBoolean();
    }

    protected final String a() {
        return VungleService.PROTOCOL_ACTION;
    }

    protected final String b() {
        return Logger.PROTOCOL_TAG;
    }

    public final void c() {
        a(this.f);
    }

    public final void d() {
        this.a.a(new Runnable() {
            public final void run() {
                if (ProtocolHttpGateway.this.o.compareAndSet(false, true)) {
                    ProtocolHttpGateway.this = SystemClock.elapsedRealtime();
                    ProtocolHttpGateway.this.d.b();
                    ProtocolHttpGateway.this.a((HttpTransaction) ProtocolHttpGateway.this.g.get());
                } else {
                    Logger.d(Logger.PROTOCOL_TAG, "request ad already in progress");
                }
            }
        }, b.d);
    }

    public final void e() {
        UnfilledAdHttpTransactionFactory unfilledAdHttpTransactionFactory = this.m;
        a(new HttpTransaction(unfilledAdHttpTransactionFactory.a.a(System.currentTimeMillis() / 1000), unfilledAdHttpTransactionFactory.b));
    }
}