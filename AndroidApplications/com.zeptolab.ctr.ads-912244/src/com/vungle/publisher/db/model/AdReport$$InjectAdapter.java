package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.AdReportExtra.Factory;
import java.util.Set;

public final class AdReport$$InjectAdapter extends b implements a.b {
    private b a;
    private b b;

    public AdReport$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.db.model.AdReport", false, AdReport.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.AdReportExtra$Factory", (Object)AdReport.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.db.model.BaseModel", AdReport.class, getClass().getClassLoader(), false, true);
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(AdReport adReport) {
        adReport.o = (Factory) this.a.get();
        this.b.injectMembers(adReport);
    }
}