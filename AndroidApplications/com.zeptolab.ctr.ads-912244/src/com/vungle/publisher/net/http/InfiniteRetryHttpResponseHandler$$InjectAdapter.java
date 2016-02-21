package com.vungle.publisher.net.http;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class InfiniteRetryHttpResponseHandler$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public InfiniteRetryHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler", "members/com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler", true, InfiniteRetryHttpResponseHandler.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("members/com.vungle.publisher.net.http.MaxRetryAgeHttpResponseHandler", InfiniteRetryHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    public final InfiniteRetryHttpResponseHandler get() {
        InfiniteRetryHttpResponseHandler infiniteRetryHttpResponseHandler = new InfiniteRetryHttpResponseHandler();
        injectMembers(infiniteRetryHttpResponseHandler);
        return infiniteRetryHttpResponseHandler;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(InfiniteRetryHttpResponseHandler infiniteRetryHttpResponseHandler) {
        this.a.injectMembers(infiniteRetryHttpResponseHandler);
    }
}