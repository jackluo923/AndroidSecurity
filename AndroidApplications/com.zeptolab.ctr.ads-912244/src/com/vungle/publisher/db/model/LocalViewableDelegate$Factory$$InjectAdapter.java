package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class LocalViewableDelegate$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public LocalViewableDelegate$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalViewableDelegate$Factory", "members/com.vungle.publisher.db.model.LocalViewableDelegate$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("javax.inject.Provider<com.vungle.publisher.db.model.LocalViewableDelegate>", (Object)Factory.class, getClass().getClassLoader());
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
        factory.a = (Provider) this.a.get();
    }
}