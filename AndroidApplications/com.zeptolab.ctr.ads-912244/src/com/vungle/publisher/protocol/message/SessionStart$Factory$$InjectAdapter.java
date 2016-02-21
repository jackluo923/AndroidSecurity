package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import com.vungle.publisher.as;
import com.vungle.publisher.at;
import com.vungle.publisher.protocol.message.SessionStart.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class SessionStart$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public SessionStart$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.SessionStart$Factory", "members/com.vungle.publisher.protocol.message.SessionStart$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.as", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.at", (Object)Factory.class, getClass().getClassLoader());
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
        factory.a = (as) this.a.get();
        factory.b = (at) this.b.get();
    }
}