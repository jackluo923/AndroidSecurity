package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.protocol.RequestStreamingAdHttpRequest.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class RequestStreamingAdHttpTransactionFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public RequestStreamingAdHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestStreamingAdHttpTransactionFactory", "members/com.vungle.publisher.protocol.RequestStreamingAdHttpTransactionFactory", true, RequestStreamingAdHttpTransactionFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.RequestStreamingAdHttpRequest$Factory", (Object)RequestStreamingAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.protocol.RequestStreamingAdHttpResponseHandler", (Object)RequestStreamingAdHttpTransactionFactory.class, getClass().getClassLoader());
    }

    public final RequestStreamingAdHttpTransactionFactory get() {
        RequestStreamingAdHttpTransactionFactory requestStreamingAdHttpTransactionFactory = new RequestStreamingAdHttpTransactionFactory();
        injectMembers(requestStreamingAdHttpTransactionFactory);
        return requestStreamingAdHttpTransactionFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(RequestStreamingAdHttpTransactionFactory requestStreamingAdHttpTransactionFactory) {
        requestStreamingAdHttpTransactionFactory.a = (Factory) this.a.get();
        requestStreamingAdHttpTransactionFactory.b = (RequestStreamingAdHttpResponseHandler) this.b.get();
    }
}