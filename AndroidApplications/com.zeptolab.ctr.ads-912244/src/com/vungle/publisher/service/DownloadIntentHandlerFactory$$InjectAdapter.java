package com.vungle.publisher.service;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class DownloadIntentHandlerFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public DownloadIntentHandlerFactory$$InjectAdapter() {
        super("com.vungle.publisher.service.DownloadIntentHandlerFactory", "members/com.vungle.publisher.service.DownloadIntentHandlerFactory", true, DownloadIntentHandlerFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("members/com.vungle.publisher.service.HttpRequestExecutorIntentHandler$Factory", DownloadIntentHandlerFactory.class, getClass().getClassLoader(), false, true);
    }

    public final DownloadIntentHandlerFactory get() {
        DownloadIntentHandlerFactory downloadIntentHandlerFactory = new DownloadIntentHandlerFactory();
        injectMembers(downloadIntentHandlerFactory);
        return downloadIntentHandlerFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(DownloadIntentHandlerFactory downloadIntentHandlerFactory) {
        this.a.injectMembers(downloadIntentHandlerFactory);
    }
}