package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.cj;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class RequestStreamingAdHttpResponseHandler$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public RequestStreamingAdHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestStreamingAdHttpResponseHandler", "members/com.vungle.publisher.protocol.RequestStreamingAdHttpResponseHandler", true, RequestStreamingAdHttpResponseHandler.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.cj", (Object)RequestStreamingAdHttpResponseHandler.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.protocol.message.RequestStreamingAdResponse$Factory", (Object)RequestStreamingAdHttpResponseHandler.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.net.http.MaxRetryAgeHttpResponseHandler", RequestStreamingAdHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    public final RequestStreamingAdHttpResponseHandler get() {
        RequestStreamingAdHttpResponseHandler requestStreamingAdHttpResponseHandler = new RequestStreamingAdHttpResponseHandler();
        injectMembers(requestStreamingAdHttpResponseHandler);
        return requestStreamingAdHttpResponseHandler;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(RequestStreamingAdHttpResponseHandler requestStreamingAdHttpResponseHandler) {
        requestStreamingAdHttpResponseHandler.a = (cj) this.a.get();
        requestStreamingAdHttpResponseHandler.b = (Factory) this.b.get();
        this.c.injectMembers(requestStreamingAdHttpResponseHandler);
    }
}