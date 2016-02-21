package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.StreamingAdReport.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class StreamingAdReport$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;

    public StreamingAdReport$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAdReport$Factory", "members/com.vungle.publisher.db.model.StreamingAdReport$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.StreamingAdPlay$Factory", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.StreamingAd$Factory", (Object)Factory.class, getClass().getClassLoader());
        this.c = lVar.a("javax.inject.Provider<com.vungle.publisher.db.model.StreamingAdReport>", (Object)Factory.class, getClass().getClassLoader());
        this.d = lVar.a("members/com.vungle.publisher.db.model.AdReport$BaseFactory", Factory.class, getClass().getClassLoader(), false, true);
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
        set2.add(this.d);
    }

    public final void injectMembers(Factory factory) {
        factory.c = (Factory) this.a.get();
        factory.d = (StreamingAd.Factory) this.b.get();
        factory.e = (Provider) this.c.get();
        this.d.injectMembers(factory);
    }
}