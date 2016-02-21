package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.cj;
import com.vungle.publisher.db.model.LocalAd.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class LocalAd$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;
    private b f;

    public LocalAd$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalAd$Factory", "members/com.vungle.publisher.db.model.LocalAd$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("@com.vungle.publisher.inject.annotations.AdTempDirectory()/javax.inject.Provider<java.lang.String>", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.LocalArchive$Factory", (Object)Factory.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.cj", (Object)Factory.class, getClass().getClassLoader());
        this.d = lVar.a("javax.inject.Provider<com.vungle.publisher.db.model.LocalAd>", (Object)Factory.class, getClass().getClassLoader());
        this.e = lVar.a("com.vungle.publisher.db.model.LocalVideo$Factory", (Object)Factory.class, getClass().getClassLoader());
        this.f = lVar.a("members/com.vungle.publisher.db.model.Ad$Factory", Factory.class, getClass().getClassLoader(), false, true);
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
        set2.add(this.d);
        set2.add(this.e);
        set2.add(this.f);
    }

    public final void injectMembers(Factory factory) {
        factory.c = (Provider) this.a.get();
        factory.d = (Factory) this.b.get();
        factory.e = (cj) this.c.get();
        factory.f = (Provider) this.d.get();
        factory.g = (LocalVideo.Factory) this.e.get();
        this.f.injectMembers(factory);
    }
}