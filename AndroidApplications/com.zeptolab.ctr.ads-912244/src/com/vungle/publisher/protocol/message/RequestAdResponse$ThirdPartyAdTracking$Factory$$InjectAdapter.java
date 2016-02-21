package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.Factory;
import com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint;
import java.util.Set;
import javax.inject.Provider;

public final class RequestAdResponse$ThirdPartyAdTracking$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public RequestAdResponse$ThirdPartyAdTracking$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$Factory", "members/com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$Factory", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.protocol.message.JsonDeserializationFactory", Factory.class, getClass().getClassLoader(), false, true);
    }

    public final Factory get() {
        Factory factory = new Factory();
        injectMembers(factory);
        return factory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(Factory factory) {
        factory.a = (PlayCheckpoint.Factory) this.a.get();
        this.b.injectMembers(factory);
    }
}