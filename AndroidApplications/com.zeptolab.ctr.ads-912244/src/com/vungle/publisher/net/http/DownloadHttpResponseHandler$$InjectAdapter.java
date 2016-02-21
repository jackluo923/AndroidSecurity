package com.vungle.publisher.net.http;

import a.a.b;
import a.a.l;
import com.vungle.publisher.ad.AdPreparer;
import com.vungle.publisher.cj;
import java.util.Set;
import javax.inject.Provider;

public final class DownloadHttpResponseHandler$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public DownloadHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.net.http.DownloadHttpResponseHandler", "members/com.vungle.publisher.net.http.DownloadHttpResponseHandler", false, DownloadHttpResponseHandler.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.ad.AdPreparer", (Object)DownloadHttpResponseHandler.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.cj", (Object)DownloadHttpResponseHandler.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.net.http.MaxRetryAgeHttpResponseHandler", DownloadHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    public final DownloadHttpResponseHandler get() {
        DownloadHttpResponseHandler downloadHttpResponseHandler = new DownloadHttpResponseHandler();
        injectMembers(downloadHttpResponseHandler);
        return downloadHttpResponseHandler;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(DownloadHttpResponseHandler downloadHttpResponseHandler) {
        downloadHttpResponseHandler.d = (AdPreparer) this.a.get();
        downloadHttpResponseHandler.e = (cj) this.b.get();
        this.c.injectMembers(downloadHttpResponseHandler);
    }
}