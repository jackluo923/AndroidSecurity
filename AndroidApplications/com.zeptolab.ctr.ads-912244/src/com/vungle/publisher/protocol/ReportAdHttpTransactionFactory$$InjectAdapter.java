package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class ReportAdHttpTransactionFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public ReportAdHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.ReportAdHttpTransactionFactory", "members/com.vungle.publisher.protocol.ReportAdHttpTransactionFactory", true, ReportAdHttpTransactionFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.ReportAdHttpResponseHandler", (Object)ReportAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.protocol.ReportLocalAdHttpRequest$Factory", (Object)ReportAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.protocol.ReportStreamingAdHttpRequest$Factory", (Object)ReportAdHttpTransactionFactory.class, getClass().getClassLoader());
    }

    public final ReportAdHttpTransactionFactory get() {
        ReportAdHttpTransactionFactory reportAdHttpTransactionFactory = new ReportAdHttpTransactionFactory();
        injectMembers(reportAdHttpTransactionFactory);
        return reportAdHttpTransactionFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(ReportAdHttpTransactionFactory reportAdHttpTransactionFactory) {
        reportAdHttpTransactionFactory.a = (ReportAdHttpResponseHandler) this.a.get();
        reportAdHttpTransactionFactory.b = (Factory) this.b.get();
        reportAdHttpTransactionFactory.c = (Factory) this.c.get();
    }
}