package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.as;
import com.vungle.publisher.protocol.TrackInstallHttpRequest.Factory;
import com.vungle.publisher.protocol.message.RequestLocalAd;
import java.util.Set;
import javax.inject.Provider;

public final class TrackInstallHttpRequest$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public TrackInstallHttpRequest$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.TrackInstallHttpRequest$Factory", "members/com.vungle.publisher.protocol.TrackInstallHttpRequest$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.as", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.protocol.message.RequestLocalAd$Factory", (Object)Factory.class, getClass().getClassLoader());
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
        factory.f = (as) this.a.get();
        factory.g = (RequestLocalAd.Factory) this.b.get();
        this.c.injectMembers(factory);
    }
}