package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.protocol.RequestConfigHttpRequest.Factory;
import com.vungle.publisher.protocol.message.RequestConfig;
import java.util.Set;
import javax.inject.Provider;

public final class RequestConfigHttpRequest$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public RequestConfigHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestConfigHttpRequest$Factory", "members/com.vungle.publisher.protocol.RequestConfigHttpRequest$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.RequestConfigHttpRequest", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.protocol.message.RequestConfig", (Object)Factory.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.protocol.ProtocolHttpRequest$Factory", Factory.class, getClass().getClassLoader(), false, true);
    }

    public final Factory get() {
        Factory factory = new Factory();
        injectMembers(factory);
        return factory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(Factory factory) {
        factory.f = (RequestConfigHttpRequest) this.a.get();
        factory.g = (RequestConfig) this.b.get();
        this.c.injectMembers(factory);
    }
}