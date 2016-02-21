package com.vungle.publisher.service;

import a.a.b;
import a.a.l;
import com.vungle.publisher.bj;
import com.vungle.publisher.bv.a;
import java.util.Set;
import javax.inject.Provider;

public final class HttpRequestExecutorIntentHandler$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public HttpRequestExecutorIntentHandler$Factory$$InjectAdapter() {
        super("com.vungle.publisher.bv$a", "members/com.vungle.publisher.service.HttpRequestExecutorIntentHandler$Factory", false, a.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.bj", (Object)a.class, getClass().getClassLoader());
    }

    public final a get() {
        a aVar = new a();
        injectMembers(aVar);
        return aVar;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(a aVar) {
        aVar.a = (bj) this.a.get();
    }
}