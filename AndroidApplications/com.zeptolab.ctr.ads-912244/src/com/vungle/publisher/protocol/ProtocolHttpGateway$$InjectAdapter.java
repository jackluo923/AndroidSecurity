package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.SafeBundleAdConfigFactory;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.reporting.AdServiceReportingHandler;
import java.util.Set;
import javax.inject.Provider;

public final class ProtocolHttpGateway$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;
    private b f;
    private b g;
    private b h;
    private b i;
    private b j;
    private b k;
    private b l;
    private b m;

    public ProtocolHttpGateway$$InjectAdapter() {
        super("com.vungle.publisher.protocol.ProtocolHttpGateway", "members/com.vungle.publisher.protocol.ProtocolHttpGateway", true, ProtocolHttpGateway.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.async.ScheduledPriorityExecutor", (Object)ProtocolHttpGateway.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.protocol.ProtocolHttpGateway$PrepareLocalAdEventListener", (Object)ProtocolHttpGateway.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.protocol.ReportAdHttpTransactionFactory", (Object)ProtocolHttpGateway.class, getClass().getClassLoader());
        this.d = lVar.a("@com.vungle.publisher.inject.annotations.RequestConfigHttpTransaction()/com.vungle.publisher.net.http.HttpTransaction", (Object)ProtocolHttpGateway.class, getClass().getClassLoader());
        this.e = lVar.a("@com.vungle.publisher.inject.annotations.RequestLocalAdHttpTransaction()/javax.inject.Provider<com.vungle.publisher.net.http.HttpTransaction>", (Object)ProtocolHttpGateway.class, getClass().getClassLoader());
        this.f = lVar.a("com.vungle.publisher.protocol.RequestStreamingAdHttpTransactionFactory", (Object)ProtocolHttpGateway.class, getClass().getClassLoader());
        this.g = lVar.a("com.vungle.publisher.SafeBundleAdConfigFactory", (Object)ProtocolHttpGateway.class, getClass().getClassLoader());
        this.h = lVar.a("com.vungle.publisher.protocol.SessionEndHttpTransactionFactory", (Object)ProtocolHttpGateway.class, getClass().getClassLoader());
        this.i = lVar.a("com.vungle.publisher.protocol.SessionStartHttpTransactionFactory", (Object)ProtocolHttpGateway.class, getClass().getClassLoader());
        this.j = lVar.a("@com.vungle.publisher.inject.annotations.TrackInstallHttpTransaction()/javax.inject.Provider<com.vungle.publisher.net.http.HttpTransaction>", (Object)ProtocolHttpGateway.class, getClass().getClassLoader());
        this.k = lVar.a("com.vungle.publisher.protocol.UnfilledAdHttpTransactionFactory", (Object)ProtocolHttpGateway.class, getClass().getClassLoader());
        this.l = lVar.a("com.vungle.publisher.reporting.AdServiceReportingHandler", (Object)ProtocolHttpGateway.class, getClass().getClassLoader());
        this.m = lVar.a("members/com.vungle.publisher.net.http.HttpGateway", ProtocolHttpGateway.class, getClass().getClassLoader(), false, true);
    }

    public final ProtocolHttpGateway get() {
        ProtocolHttpGateway protocolHttpGateway = new ProtocolHttpGateway();
        injectMembers(protocolHttpGateway);
        return protocolHttpGateway;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
        set2.add(this.f);
        set2.add(this.g);
        set2.add(this.h);
        set2.add(this.i);
        set2.add(this.j);
        set2.add(this.k);
        set2.add(this.l);
        set2.add(this.m);
    }

    public final void injectMembers(ProtocolHttpGateway protocolHttpGateway) {
        protocolHttpGateway.a = (ScheduledPriorityExecutor) this.a.get();
        protocolHttpGateway.d = (PrepareLocalAdEventListener) this.b.get();
        protocolHttpGateway.e = (ReportAdHttpTransactionFactory) this.c.get();
        protocolHttpGateway.f = (HttpTransaction) this.d.get();
        protocolHttpGateway.g = (Provider) this.e.get();
        protocolHttpGateway.h = (RequestStreamingAdHttpTransactionFactory) this.f.get();
        protocolHttpGateway.i = (SafeBundleAdConfigFactory) this.g.get();
        protocolHttpGateway.j = (SessionEndHttpTransactionFactory) this.h.get();
        protocolHttpGateway.k = (SessionStartHttpTransactionFactory) this.i.get();
        protocolHttpGateway.l = (Provider) this.j.get();
        protocolHttpGateway.m = (UnfilledAdHttpTransactionFactory) this.k.get();
        protocolHttpGateway.n = (AdServiceReportingHandler) this.l.get();
        this.m.injectMembers(protocolHttpGateway);
    }
}