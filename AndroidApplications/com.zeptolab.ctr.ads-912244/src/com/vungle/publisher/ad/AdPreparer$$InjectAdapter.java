package com.vungle.publisher.ad;

import a.a.b;
import a.a.l;
import android.content.Context;
import java.util.Set;
import javax.inject.Provider;

public final class AdPreparer$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public AdPreparer$$InjectAdapter() {
        super("com.vungle.publisher.ad.AdPreparer", "members/com.vungle.publisher.ad.AdPreparer", true, AdPreparer.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("android.content.Context", (Object)AdPreparer.class, getClass().getClassLoader());
        this.b = lVar.a("@com.vungle.publisher.inject.annotations.VungleServiceClass()/java.lang.Class", (Object)AdPreparer.class, getClass().getClassLoader());
    }

    public final AdPreparer get() {
        AdPreparer adPreparer = new AdPreparer();
        injectMembers(adPreparer);
        return adPreparer;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(AdPreparer adPreparer) {
        adPreparer.a = (Context) this.a.get();
        adPreparer.b = (Class) this.b.get();
    }
}