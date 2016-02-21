package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class ExtraInfo$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public ExtraInfo$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.ExtraInfo$Factory", "members/com.vungle.publisher.protocol.message.ExtraInfo$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("members/com.vungle.publisher.protocol.message.MessageFactory", Factory.class, getClass().getClassLoader(), false, true);
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