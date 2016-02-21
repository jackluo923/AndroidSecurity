package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.LocalAd.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class LocalAd$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public LocalAd$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAd", "members/com.vungle.publisher.db.model.LocalAd", false, LocalAd.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.LocalAd$Factory", (Object)LocalAd.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.db.model.Ad", LocalAd.class, getClass().getClassLoader(), false, true);
    }

    public final LocalAd get() {
        LocalAd localAd = new LocalAd();
        injectMembers(localAd);
        return localAd;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(LocalAd localAd) {
        localAd.y = (Factory) this.a.get();
        this.b.injectMembers(localAd);
    }
}