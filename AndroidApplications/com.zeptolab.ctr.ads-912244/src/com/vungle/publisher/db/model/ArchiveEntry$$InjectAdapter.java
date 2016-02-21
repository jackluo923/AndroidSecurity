package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.ArchiveEntry.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class ArchiveEntry$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public ArchiveEntry$$InjectAdapter() {
        super("com.vungle.publisher.db.model.ArchiveEntry", "members/com.vungle.publisher.db.model.ArchiveEntry", false, ArchiveEntry.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.ArchiveEntry$Factory", (Object)ArchiveEntry.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.LocalArchive$Factory", (Object)ArchiveEntry.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.db.model.BaseModel", ArchiveEntry.class, getClass().getClassLoader(), false, true);
    }

    public final ArchiveEntry get() {
        ArchiveEntry archiveEntry = new ArchiveEntry();
        injectMembers(archiveEntry);
        return archiveEntry;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(ArchiveEntry archiveEntry) {
        archiveEntry.d = (Factory) this.a.get();
        archiveEntry.e = (Factory) this.b.get();
        this.c.injectMembers(archiveEntry);
    }
}