package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import com.vungle.publisher.protocol.message.SessionEnd.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class SessionEnd$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public SessionEnd$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.SessionEnd$Factory", "members/com.vungle.publisher.protocol.message.SessionEnd$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.message.SessionStart$Factory", (Object)Factory.class, getClass().getClassLoader());
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
        factory.a = (SessionStart.Factory) this.a.get();
    }
}