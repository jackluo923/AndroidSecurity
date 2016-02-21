package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.DatabaseHelper;
import com.vungle.publisher.db.model.AdReport.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class AdReport$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public AdReport$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.AdReport$Factory", "members/com.vungle.publisher.db.model.AdReport$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.DatabaseHelper", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.LocalAdReport$Factory", (Object)Factory.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.db.model.StreamingAdReport$Factory", (Object)Factory.class, getClass().getClassLoader());
    }

    public final Factory get() {
        Factory factory = new Factory();
        injectMembers(factory);
        return factory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(Factory factory) {
        factory.a = (DatabaseHelper) this.a.get();
        factory.b = (LocalAdReport.Factory) this.b.get();
        factory.c = (StreamingAdReport.Factory) this.c.get();
    }
}