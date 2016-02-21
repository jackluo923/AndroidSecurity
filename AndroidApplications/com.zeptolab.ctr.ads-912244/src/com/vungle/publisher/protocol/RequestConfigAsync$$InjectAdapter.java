package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class RequestConfigAsync$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public RequestConfigAsync$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestConfigAsync", "members/com.vungle.publisher.protocol.RequestConfigAsync", true, RequestConfigAsync.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.RequestConfigAsync$RequestConfigRunnable", (Object)RequestConfigAsync.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.async.ExecutorAsync", RequestConfigAsync.class, getClass().getClassLoader(), false, true);
    }

    public final RequestConfigAsync get() {
        RequestConfigAsync requestConfigAsync = new RequestConfigAsync();
        injectMembers(requestConfigAsync);
        return requestConfigAsync;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(RequestConfigAsync requestConfigAsync) {
        requestConfigAsync.b = (RequestConfigRunnable) this.a.get();
        this.b.injectMembers(requestConfigAsync);
    }
}