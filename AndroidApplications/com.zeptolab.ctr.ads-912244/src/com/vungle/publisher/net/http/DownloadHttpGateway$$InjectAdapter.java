package com.vungle.publisher.net.http;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class DownloadHttpGateway$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public DownloadHttpGateway$$InjectAdapter() {
        super("com.vungle.publisher.net.http.DownloadHttpGateway", "members/com.vungle.publisher.net.http.DownloadHttpGateway", true, DownloadHttpGateway.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.net.http.DownloadHttpTransactionFactory", (Object)DownloadHttpGateway.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.net.http.HttpGateway", DownloadHttpGateway.class, getClass().getClassLoader(), false, true);
    }

    public final DownloadHttpGateway get() {
        DownloadHttpGateway downloadHttpGateway = new DownloadHttpGateway();
        injectMembers(downloadHttpGateway);
        return downloadHttpGateway;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(DownloadHttpGateway downloadHttpGateway) {
        downloadHttpGateway.a = (DownloadHttpTransactionFactory) this.a.get();
        this.b.injectMembers(downloadHttpGateway);
    }
}