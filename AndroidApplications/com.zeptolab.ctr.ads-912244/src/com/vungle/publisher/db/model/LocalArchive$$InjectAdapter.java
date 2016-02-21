package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.ArchiveEntry.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class LocalArchive$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;

    public LocalArchive$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalArchive", "members/com.vungle.publisher.db.model.LocalArchive", false, LocalArchive.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.LocalArchive$Factory", (Object)LocalArchive.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.ArchiveEntry$Factory", (Object)LocalArchive.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.db.model.LocalAd$Factory", (Object)LocalArchive.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.db.model.LocalViewableDelegate", (Object)LocalArchive.class, getClass().getClassLoader());
        this.e = lVar.a("members/com.vungle.publisher.db.model.BaseViewable", LocalArchive.class, getClass().getClassLoader(), false, true);
    }

    public final LocalArchive get() {
        LocalArchive localArchive = new LocalArchive();
        injectMembers(localArchive);
        return localArchive;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
    }

    public final void injectMembers(LocalArchive localArchive) {
        localArchive.i = (Factory) this.a.get();
        localArchive.j = (Factory) this.b.get();
        localArchive.k = (LocalAd.Factory) this.c.get();
        localArchive.l = (LocalViewableDelegate) this.d.get();
        this.e.injectMembers(localArchive);
    }
}