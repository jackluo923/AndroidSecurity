package com.vungle.publisher.net.http;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class HttpTransaction$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public HttpTransaction$$InjectAdapter() {
        super("com.vungle.publisher.net.http.HttpTransaction", "members/com.vungle.publisher.net.http.HttpTransaction", false, HttpTransaction.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.net.http.HttpTransport", (Object)HttpTransaction.class, getClass().getClassLoader());
    }

    public final HttpTransaction get() {
        HttpTransaction httpTransaction = new HttpTransaction();
        injectMembers(httpTransaction);
        return httpTransaction;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(HttpTransaction httpTransaction) {
        httpTransaction.d = (HttpTransport) this.a.get();
    }
}