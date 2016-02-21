package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import com.vungle.publisher.bh;
import com.vungle.publisher.protocol.message.RequestAd.Demographic.Location.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class RequestAd$Demographic$Location$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public RequestAd$Demographic$Location$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAd$Demographic$Location$Factory", "members/com.vungle.publisher.protocol.message.RequestAd$Demographic$Location$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.bh", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.protocol.message.MessageFactory", Factory.class, getClass().getClassLoader(), false, true);
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
        factory.a = (bh) this.a.get();
        this.b.injectMembers(factory);
    }
}