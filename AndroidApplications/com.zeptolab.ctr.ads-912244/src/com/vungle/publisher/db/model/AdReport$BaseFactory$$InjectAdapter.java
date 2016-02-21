package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.AdReport.BaseFactory;
import com.vungle.publisher.db.model.AdReportExtra.Factory;
import java.util.Set;

public final class AdReport$BaseFactory$$InjectAdapter extends b implements a.b {
    private b a;
    private b b;

    public AdReport$BaseFactory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.db.model.AdReport$BaseFactory", false, BaseFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.AdReportExtra$Factory", (Object)BaseFactory.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.db.model.BaseModel$Factory", BaseFactory.class, getClass().getClassLoader(), false, true);
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(BaseFactory baseFactory) {
        baseFactory.a = (Factory) this.a.get();
        this.b.injectMembers(baseFactory);
    }
}