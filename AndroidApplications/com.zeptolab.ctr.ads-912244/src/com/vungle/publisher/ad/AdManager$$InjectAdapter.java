package com.vungle.publisher.ad;

import a.a.b;
import a.a.l;
import android.content.Context;
import com.vungle.publisher.as;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.bj;
import com.vungle.publisher.cj;
import com.vungle.publisher.db.model.LocalAd.Factory;
import com.vungle.publisher.db.model.StreamingAd;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import java.util.Set;
import javax.inject.Provider;

public final class AdManager$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;
    private b f;
    private b g;
    private b h;
    private b i;
    private b j;
    private b k;
    private b l;
    private b m;

    public AdManager$$InjectAdapter() {
        super("com.vungle.publisher.ad.AdManager", "members/com.vungle.publisher.ad.AdManager", true, AdManager.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.ad.AdPreparer", (Object)AdManager.class, getClass().getClassLoader());
        this.b = lVar.a("android.content.Context", (Object)AdManager.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.as", (Object)AdManager.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.cj", (Object)AdManager.class, getClass().getClassLoader());
        this.e = lVar.a("@com.vungle.publisher.inject.annotations.FullScreenAdActivityClass()/java.lang.Class", (Object)AdManager.class, getClass().getClassLoader());
        this.f = lVar.a("com.vungle.publisher.async.ScheduledPriorityExecutor", (Object)AdManager.class, getClass().getClassLoader());
        this.g = lVar.a("com.vungle.publisher.db.model.LocalAd$Factory", (Object)AdManager.class, getClass().getClassLoader());
        this.h = lVar.a("com.vungle.publisher.bj", (Object)AdManager.class, getClass().getClassLoader());
        this.i = lVar.a("javax.inject.Provider<com.vungle.publisher.ad.AdManager$PlayAdEventListener>", (Object)AdManager.class, getClass().getClassLoader());
        this.j = lVar.a("javax.inject.Provider<com.vungle.publisher.ad.AdManager$PrepareStreamingAdEventListener>", (Object)AdManager.class, getClass().getClassLoader());
        this.k = lVar.a("com.vungle.publisher.protocol.ProtocolHttpGateway", (Object)AdManager.class, getClass().getClassLoader());
        this.l = lVar.a("com.vungle.publisher.env.SdkConfig", (Object)AdManager.class, getClass().getClassLoader());
        this.m = lVar.a("com.vungle.publisher.db.model.StreamingAd$Factory", (Object)AdManager.class, getClass().getClassLoader());
    }

    public final AdManager get() {
        AdManager adManager = new AdManager();
        injectMembers(adManager);
        return adManager;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
        set2.add(this.f);
        set2.add(this.g);
        set2.add(this.h);
        set2.add(this.i);
        set2.add(this.j);
        set2.add(this.k);
        set2.add(this.l);
        set2.add(this.m);
    }

    public final void injectMembers(AdManager adManager) {
        adManager.a = (AdPreparer) this.a.get();
        adManager.b = (Context) this.b.get();
        adManager.c = (as) this.c.get();
        adManager.d = (cj) this.d.get();
        adManager.e = (Class) this.e.get();
        adManager.f = (ScheduledPriorityExecutor) this.f.get();
        adManager.g = (Factory) this.g.get();
        adManager.h = (bj) this.h.get();
        adManager.i = (Provider) this.i.get();
        adManager.j = (Provider) this.j.get();
        adManager.k = (ProtocolHttpGateway) this.k.get();
        adManager.l = (SdkConfig) this.l.get();
        adManager.m = (StreamingAd.Factory) this.m.get();
    }
}