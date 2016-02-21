package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class LocalAdReportEvent$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public LocalAdReportEvent$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAdReportEvent", "members/com.vungle.publisher.db.model.LocalAdReportEvent", false, LocalAdReportEvent.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.LocalAdReportEvent$Factory", (Object)LocalAdReportEvent.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.LocalAdPlay$Factory", (Object)LocalAdReportEvent.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.db.model.AdReportEvent", LocalAdReportEvent.class, getClass().getClassLoader(), false, true);
    }

    public final LocalAdReportEvent get() {
        LocalAdReportEvent localAdReportEvent = new LocalAdReportEvent();
        injectMembers(localAdReportEvent);
        return localAdReportEvent;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(LocalAdReportEvent localAdReportEvent) {
        localAdReportEvent.e = (Factory) this.a.get();
        localAdReportEvent.f = (Factory) this.b.get();
        this.c.injectMembers(localAdReportEvent);
    }
}