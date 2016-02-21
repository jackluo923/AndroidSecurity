package com.vungle.publisher.reporting;

import com.vungle.log.Logger;
import com.vungle.publisher.async.ScheduledPriorityExecutor.b;
import com.vungle.publisher.cj;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.AdReport.Factory;
import com.vungle.publisher.db.model.AdReport.a;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LocalAdReport;
import com.vungle.publisher.db.model.StreamingAdReport;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.j;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import com.vungle.publisher.protocol.ProtocolHttpGateway.AnonymousClass_1;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class AdReportManager {
    @Inject
    cj a;
    @Inject
    Factory b;
    @Inject
    public LocalAdReport.Factory c;
    @Inject
    public ProtocolHttpGateway d;
    @Inject
    public SdkState e;
    @Inject
    StreamingAdReport.Factory f;

    public final LocalAdReport a(LocalAd localAd) {
        return (LocalAdReport) this.c.a(localAd);
    }

    public final void a() {
        List a = this.b.a();
        Logger.i(Logger.REPORT_TAG, new StringBuilder("sending ").append(a.size()).append(" ad reports").toString());
        Iterator it = a.iterator();
        while (it.hasNext()) {
            AdReport adReport = (AdReport) it.next();
            String x = adReport.x();
            try {
                Logger.d(Logger.REPORT_TAG, new StringBuilder("sending ").append(x).toString());
                ProtocolHttpGateway protocolHttpGateway = this.d;
                protocolHttpGateway.a.a(new AnonymousClass_1(adReport), b.f);
            } catch (Exception e) {
                Logger.e(Logger.REPORT_TAG, new StringBuilder("error sending ").append(x).toString(), e);
                adReport.a(a.b);
                adReport.l();
            }
        }
        this.a.b(new j());
    }
}