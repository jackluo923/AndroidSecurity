package com.vungle.publisher.service;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class ExternalHttpIntentHandlerFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public ExternalHttpIntentHandlerFactory$$InjectAdapter() {
        super("com.vungle.publisher.service.ExternalHttpIntentHandlerFactory", "members/com.vungle.publisher.service.ExternalHttpIntentHandlerFactory", true, ExternalHttpIntentHandlerFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("members/com.vungle.publisher.service.HttpRequestExecutorIntentHandler$Factory", ExternalHttpIntentHandlerFactory.class, getClass().getClassLoader(), false, true);
    }

    public final ExternalHttpIntentHandlerFactory get() {
        ExternalHttpIntentHandlerFactory externalHttpIntentHandlerFactory = new ExternalHttpIntentHandlerFactory();
        injectMembers(externalHttpIntentHandlerFactory);
        return externalHttpIntentHandlerFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(ExternalHttpIntentHandlerFactory externalHttpIntentHandlerFactory) {
        this.a.injectMembers(externalHttpIntentHandlerFactory);
    }
}