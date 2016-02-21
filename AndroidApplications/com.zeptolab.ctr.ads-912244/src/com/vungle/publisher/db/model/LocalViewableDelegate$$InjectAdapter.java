package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.as;
import com.vungle.publisher.cj;
import com.vungle.publisher.net.http.DownloadHttpGateway;
import java.util.Set;
import javax.inject.Provider;

public final class LocalViewableDelegate$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public LocalViewableDelegate$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalViewableDelegate", "members/com.vungle.publisher.db.model.LocalViewableDelegate", false, LocalViewableDelegate.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.net.http.DownloadHttpGateway", (Object)LocalViewableDelegate.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.as", (Object)LocalViewableDelegate.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.cj", (Object)LocalViewableDelegate.class, getClass().getClassLoader());
    }

    public final LocalViewableDelegate get() {
        LocalViewableDelegate localViewableDelegate = new LocalViewableDelegate();
        injectMembers(localViewableDelegate);
        return localViewableDelegate;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(LocalViewableDelegate localViewableDelegate) {
        localViewableDelegate.e = (DownloadHttpGateway) this.a.get();
        localViewableDelegate.f = (as) this.b.get();
        localViewableDelegate.g = (cj) this.c.get();
    }
}