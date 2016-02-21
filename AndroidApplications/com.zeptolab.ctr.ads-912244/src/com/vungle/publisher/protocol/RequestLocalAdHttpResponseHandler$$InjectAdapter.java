package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.ad.AdPreparer;
import com.vungle.publisher.cj;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse.Factory;
import com.vungle.publisher.reporting.AdServiceReportingHandler;
import java.util.Set;
import javax.inject.Provider;

public final class RequestLocalAdHttpResponseHandler$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;
    private b f;
    private b g;

    public RequestLocalAdHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestLocalAdHttpResponseHandler", "members/com.vungle.publisher.protocol.RequestLocalAdHttpResponseHandler", true, RequestLocalAdHttpResponseHandler.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("javax.inject.Provider<com.vungle.publisher.ad.AdManager>", (Object)RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.ad.AdPreparer", (Object)RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.c = lVar.a("javax.inject.Provider<com.vungle.publisher.env.SdkState>", (Object)RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.cj", (Object)RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.e = lVar.a("com.vungle.publisher.protocol.message.RequestLocalAdResponse$Factory", (Object)RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.f = lVar.a("com.vungle.publisher.reporting.AdServiceReportingHandler", (Object)RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader());
        this.g = lVar.a("members/com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler", RequestLocalAdHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    public final RequestLocalAdHttpResponseHandler get() {
        RequestLocalAdHttpResponseHandler requestLocalAdHttpResponseHandler = new RequestLocalAdHttpResponseHandler();
        injectMembers(requestLocalAdHttpResponseHandler);
        return requestLocalAdHttpResponseHandler;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
        set2.add(this.f);
        set2.add(this.g);
    }

    public final void injectMembers(RequestLocalAdHttpResponseHandler requestLocalAdHttpResponseHandler) {
        requestLocalAdHttpResponseHandler.a = (Provider) this.a.get();
        requestLocalAdHttpResponseHandler.b = (AdPreparer) this.b.get();
        requestLocalAdHttpResponseHandler.c = (Provider) this.c.get();
        requestLocalAdHttpResponseHandler.d = (cj) this.d.get();
        requestLocalAdHttpResponseHandler.e = (Factory) this.e.get();
        requestLocalAdHttpResponseHandler.i = (AdServiceReportingHandler) this.f.get();
        this.g.injectMembers(requestLocalAdHttpResponseHandler);
    }
}