package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$Factory", "members/com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("members/com.vungle.publisher.protocol.message.JsonDeserializationFactory", Factory.class, getClass().getClassLoader(), false, true);
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