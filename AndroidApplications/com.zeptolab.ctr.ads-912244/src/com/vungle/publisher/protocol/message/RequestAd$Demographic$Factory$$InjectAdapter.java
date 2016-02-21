package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import com.vungle.publisher.Demographic;
import com.vungle.publisher.protocol.message.RequestAd.Demographic.Factory;
import com.vungle.publisher.protocol.message.RequestAd.Demographic.Location;
import java.util.Set;
import javax.inject.Provider;

public final class RequestAd$Demographic$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public RequestAd$Demographic$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAd$Demographic$Factory", "members/com.vungle.publisher.protocol.message.RequestAd$Demographic$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.Demographic", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.protocol.message.RequestAd$Demographic$Location$Factory", (Object)Factory.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.protocol.message.MessageFactory", Factory.class, getClass().getClassLoader(), false, true);
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
        factory.a = (Demographic) this.a.get();
        factory.b = (Location.Factory) this.b.get();
        this.c.injectMembers(factory);
    }
}