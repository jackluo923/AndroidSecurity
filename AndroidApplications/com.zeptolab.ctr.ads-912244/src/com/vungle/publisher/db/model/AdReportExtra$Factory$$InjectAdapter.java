package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.AdReportExtra.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class AdReportExtra$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public AdReportExtra$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.AdReportExtra$Factory", "members/com.vungle.publisher.db.model.AdReportExtra$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("javax.inject.Provider<com.vungle.publisher.db.model.AdReportExtra>", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.db.model.BaseModel$Factory", Factory.class, getClass().getClassLoader(), false, true);
    }

    public final Factory get() {
        Factory factory = new Factory();
        injectMembers(factory);
        return factory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(Factory factory) {
        factory.a = (Provider) this.a.get();
        this.b.injectMembers(factory);
    }
}