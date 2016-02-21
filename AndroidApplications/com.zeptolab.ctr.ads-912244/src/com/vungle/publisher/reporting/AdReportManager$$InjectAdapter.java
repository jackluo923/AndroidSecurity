package com.vungle.publisher.reporting;

import a.a.b;
import a.a.l;
import com.vungle.publisher.cj;
import com.vungle.publisher.db.model.AdReport.Factory;
import com.vungle.publisher.db.model.LocalAdReport;
import com.vungle.publisher.db.model.StreamingAdReport;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import java.util.Set;
import javax.inject.Provider;

public final class AdReportManager$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;
    private b f;

    public AdReportManager$$InjectAdapter() {
        super("com.vungle.publisher.reporting.AdReportManager", "members/com.vungle.publisher.reporting.AdReportManager", true, AdReportManager.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.cj", (Object)AdReportManager.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.AdReport$Factory", (Object)AdReportManager.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.db.model.LocalAdReport$Factory", (Object)AdReportManager.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.protocol.ProtocolHttpGateway", (Object)AdReportManager.class, getClass().getClassLoader());
        this.e = lVar.a("com.vungle.publisher.env.SdkState", (Object)AdReportManager.class, getClass().getClassLoader());
        this.f = lVar.a("com.vungle.publisher.db.model.StreamingAdReport$Factory", (Object)AdReportManager.class, getClass().getClassLoader());
    }

    public final AdReportManager get() {
        AdReportManager adReportManager = new AdReportManager();
        injectMembers(adReportManager);
        return adReportManager;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
        set2.add(this.f);
    }

    public final void injectMembers(AdReportManager adReportManager) {
        adReportManager.a = (cj) this.a.get();
        adReportManager.b = (Factory) this.b.get();
        adReportManager.c = (LocalAdReport.Factory) this.c.get();
        adReportManager.d = (ProtocolHttpGateway) this.d.get();
        adReportManager.e = (SdkState) this.e.get();
        adReportManager.f = (StreamingAdReport.Factory) this.f.get();
    }
}