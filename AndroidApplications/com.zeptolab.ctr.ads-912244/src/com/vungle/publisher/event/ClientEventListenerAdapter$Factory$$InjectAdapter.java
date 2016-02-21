package com.vungle.publisher.event;

import a.a.b;
import a.a.l;
import com.vungle.publisher.event.ClientEventListenerAdapter.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class ClientEventListenerAdapter$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public ClientEventListenerAdapter$Factory$$InjectAdapter() {
        super("com.vungle.publisher.event.ClientEventListenerAdapter$Factory", "members/com.vungle.publisher.event.ClientEventListenerAdapter$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("javax.inject.Provider<com.vungle.publisher.event.ClientEventListenerAdapter>", (Object)Factory.class, getClass().getClassLoader());
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