package com.vungle.publisher.service;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class ProtocolIntentHandlerFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public ProtocolIntentHandlerFactory$$InjectAdapter() {
        super("com.vungle.publisher.service.ProtocolIntentHandlerFactory", "members/com.vungle.publisher.service.ProtocolIntentHandlerFactory", true, ProtocolIntentHandlerFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("members/com.vungle.publisher.service.HttpRequestExecutorIntentHandler$Factory", ProtocolIntentHandlerFactory.class, getClass().getClassLoader(), false, true);
    }

    public final ProtocolIntentHandlerFactory get() {
        ProtocolIntentHandlerFactory protocolIntentHandlerFactory = new ProtocolIntentHandlerFactory();
        injectMembers(protocolIntentHandlerFactory);
        return protocolIntentHandlerFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(ProtocolIntentHandlerFactory protocolIntentHandlerFactory) {
        this.a.injectMembers(protocolIntentHandlerFactory);
    }
}