package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class ReportAdHttpResponseHandler$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public ReportAdHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.protocol.ReportAdHttpResponseHandler", "members/com.vungle.publisher.protocol.ReportAdHttpResponseHandler", true, ReportAdHttpResponseHandler.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("javax.inject.Provider<com.vungle.publisher.reporting.AdReportManager>", (Object)ReportAdHttpResponseHandler.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler", ReportAdHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    public final ReportAdHttpResponseHandler get() {
        ReportAdHttpResponseHandler reportAdHttpResponseHandler = new ReportAdHttpResponseHandler();
        injectMembers(reportAdHttpResponseHandler);
        return reportAdHttpResponseHandler;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(ReportAdHttpResponseHandler reportAdHttpResponseHandler) {
        reportAdHttpResponseHandler.a = (Provider) this.a.get();
        this.b.injectMembers(reportAdHttpResponseHandler);
    }
}