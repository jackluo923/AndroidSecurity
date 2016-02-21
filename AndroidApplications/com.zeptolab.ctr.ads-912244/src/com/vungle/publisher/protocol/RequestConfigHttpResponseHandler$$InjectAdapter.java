package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.protocol.message.RequestConfigResponse.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class RequestConfigHttpResponseHandler$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;

    public RequestConfigHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestConfigHttpResponseHandler", "members/com.vungle.publisher.protocol.RequestConfigHttpResponseHandler", false, RequestConfigHttpResponseHandler.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.message.RequestConfigResponse$Factory", (Object)RequestConfigHttpResponseHandler.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.env.SdkConfig", (Object)RequestConfigHttpResponseHandler.class, getClass().getClassLoader());
        this.c = lVar.a("javax.inject.Provider<com.vungle.publisher.protocol.RequestConfigAsync>", (Object)RequestConfigHttpResponseHandler.class, getClass().getClassLoader());
        this.d = lVar.a("members/com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler", RequestConfigHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    public final RequestConfigHttpResponseHandler get() {
        RequestConfigHttpResponseHandler requestConfigHttpResponseHandler = new RequestConfigHttpResponseHandler();
        injectMembers(requestConfigHttpResponseHandler);
        return requestConfigHttpResponseHandler;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
    }

    public final void injectMembers(RequestConfigHttpResponseHandler requestConfigHttpResponseHandler) {
        requestConfigHttpResponseHandler.a = (Factory) this.a.get();
        requestConfigHttpResponseHandler.b = (SdkConfig) this.b.get();
        requestConfigHttpResponseHandler.c = (Provider) this.c.get();
        this.d.injectMembers(requestConfigHttpResponseHandler);
    }
}