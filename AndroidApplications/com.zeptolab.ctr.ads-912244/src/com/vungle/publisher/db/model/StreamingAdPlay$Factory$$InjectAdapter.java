package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class StreamingAdPlay$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public StreamingAdPlay$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAdPlay$Factory", "members/com.vungle.publisher.db.model.StreamingAdPlay$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("javax.inject.Provider<com.vungle.publisher.db.model.StreamingAdPlay>", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.StreamingAdReportEvent$Factory", (Object)Factory.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.db.model.AdPlay$Factory", Factory.class, getClass().getClassLoader(), false, true);
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
        factory.a = (Provider) this.a.get();
        factory.c = (Factory) this.b.get();
        this.c.injectMembers(factory);
    }
}