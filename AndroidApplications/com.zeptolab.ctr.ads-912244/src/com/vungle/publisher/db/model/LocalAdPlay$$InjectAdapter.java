package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class LocalAdPlay$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public LocalAdPlay$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAdPlay", "members/com.vungle.publisher.db.model.LocalAdPlay", false, LocalAdPlay.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.LocalAdPlay$Factory", (Object)LocalAdPlay.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.LocalAdReportEvent$Factory", (Object)LocalAdPlay.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.db.model.AdPlay", LocalAdPlay.class, getClass().getClassLoader(), false, true);
    }

    public final LocalAdPlay get() {
        LocalAdPlay localAdPlay = new LocalAdPlay();
        injectMembers(localAdPlay);
        return localAdPlay;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(LocalAdPlay localAdPlay) {
        localAdPlay.e = (Factory) this.a.get();
        localAdPlay.f = (Factory) this.b.get();
        this.c.injectMembers(localAdPlay);
    }
}