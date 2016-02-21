package com.vungle.publisher.net.http;

import a.a.b;
import a.a.l;
import com.vungle.publisher.net.http.DownloadHttpRequest.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class DownloadHttpTransactionFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public DownloadHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.net.http.DownloadHttpTransactionFactory", "members/com.vungle.publisher.net.http.DownloadHttpTransactionFactory", true, DownloadHttpTransactionFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.net.http.DownloadHttpRequest$Factory", (Object)DownloadHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.net.http.DownloadHttpResponseHandler$Factory", (Object)DownloadHttpTransactionFactory.class, getClass().getClassLoader());
    }

    public final DownloadHttpTransactionFactory get() {
        DownloadHttpTransactionFactory downloadHttpTransactionFactory = new DownloadHttpTransactionFactory();
        injectMembers(downloadHttpTransactionFactory);
        return downloadHttpTransactionFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(DownloadHttpTransactionFactory downloadHttpTransactionFactory) {
        downloadHttpTransactionFactory.a = (Factory) this.a.get();
        downloadHttpTransactionFactory.b = (DownloadHttpResponseHandler.Factory) this.b.get();
    }
}