package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.LocalAdReport.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class LocalAdReport$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public LocalAdReport$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAdReport", "members/com.vungle.publisher.db.model.LocalAdReport", false, LocalAdReport.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.LocalAdReport$Factory", (Object)LocalAdReport.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.LocalAdPlay$Factory", (Object)LocalAdReport.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.db.model.AdReport", LocalAdReport.class, getClass().getClassLoader(), false, true);
    }

    public final LocalAdReport get() {
        LocalAdReport localAdReport = new LocalAdReport();
        injectMembers(localAdReport);
        return localAdReport;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(LocalAdReport localAdReport) {
        localAdReport.t = (Factory) this.a.get();
        localAdReport.u = (Factory) this.b.get();
        this.c.injectMembers(localAdReport);
    }
}