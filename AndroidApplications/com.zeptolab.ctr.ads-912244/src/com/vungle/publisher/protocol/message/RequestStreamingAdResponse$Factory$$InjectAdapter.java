package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class RequestStreamingAdResponse$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public RequestStreamingAdResponse$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestStreamingAdResponse$Factory", "members/com.vungle.publisher.protocol.message.RequestStreamingAdResponse$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("members/com.vungle.publisher.protocol.message.RequestAdResponse$Factory", Factory.class, getClass().getClassLoader(), false, true);
    }

    public final Factory get() {
        Factory factory = new Factory();
        injectMembers(factory);
        return factory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(Factory factory) {
        this.a.injectMembers(factory);
    }
}