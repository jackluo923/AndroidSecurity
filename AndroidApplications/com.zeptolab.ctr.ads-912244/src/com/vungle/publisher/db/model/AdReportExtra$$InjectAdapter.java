package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.AdReportExtra.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class AdReportExtra$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public AdReportExtra$$InjectAdapter() {
        super("com.vungle.publisher.db.model.AdReportExtra", "members/com.vungle.publisher.db.model.AdReportExtra", false, AdReportExtra.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.AdReportExtra$Factory", (Object)AdReportExtra.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.db.model.BaseModel", AdReportExtra.class, getClass().getClassLoader(), false, true);
    }

    public final AdReportExtra get() {
        AdReportExtra adReportExtra = new AdReportExtra();
        injectMembers(adReportExtra);
        return adReportExtra;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(AdReportExtra adReportExtra) {
        adReportExtra.d = (Factory) this.a.get();
        this.b.injectMembers(adReportExtra);
    }
}