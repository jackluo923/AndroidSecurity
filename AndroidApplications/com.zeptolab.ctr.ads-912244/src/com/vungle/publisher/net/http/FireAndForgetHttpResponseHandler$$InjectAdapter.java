package com.vungle.publisher.net.http;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class FireAndForgetHttpResponseHandler$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public FireAndForgetHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", "members/com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", true, FireAndForgetHttpResponseHandler.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("members/com.vungle.publisher.net.http.MaxRetryAgeHttpResponseHandler", FireAndForgetHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    public final FireAndForgetHttpResponseHandler get() {
        FireAndForgetHttpResponseHandler fireAndForgetHttpResponseHandler = new FireAndForgetHttpResponseHandler();
        injectMembers(fireAndForgetHttpResponseHandler);
        return fireAndForgetHttpResponseHandler;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(FireAndForgetHttpResponseHandler fireAndForgetHttpResponseHandler) {
        this.a.injectMembers(fireAndForgetHttpResponseHandler);
    }
}