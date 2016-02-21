package com.vungle.publisher;

import a.a.b;
import a.a.l;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.db.DatabaseBroadcastReceiver;
import com.vungle.publisher.db.DatabaseHelper;
import com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.file.CacheManager;
import java.util.Set;

public final class VunglePubBase$$InjectAdapter extends b implements a.b {
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

    public VunglePubBase$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.VunglePubBase", false, VunglePubBase.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.ad.AdManager", (Object)VunglePubBase.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.VunglePubBase$AsyncInitEventListener", (Object)VunglePubBase.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.file.CacheManager", (Object)VunglePubBase.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.db.DatabaseBroadcastReceiver", (Object)VunglePubBase.class, getClass().getClassLoader());
        this.e = lVar.a("com.vungle.publisher.db.DatabaseHelper", (Object)VunglePubBase.class, getClass().getClassLoader());
        this.f = lVar.a("com.vungle.publisher.Demographic", (Object)VunglePubBase.class, getClass().getClassLoader());
        this.g = lVar.a("com.vungle.publisher.as", (Object)VunglePubBase.class, getClass().getClassLoader());
        this.h = lVar.a("com.vungle.publisher.cj", (Object)VunglePubBase.class, getClass().getClassLoader());
        this.i = lVar.a("com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver", (Object)VunglePubBase.class, getClass().getClassLoader());
        this.j = lVar.a("com.vungle.publisher.AdConfig", (Object)VunglePubBase.class, getClass().getClassLoader());
        this.k = lVar.a("com.vungle.publisher.SafeBundleAdConfigFactory", (Object)VunglePubBase.class, getClass().getClassLoader());
        this.l = lVar.a("com.vungle.publisher.env.SdkConfig", (Object)VunglePubBase.class, getClass().getClassLoader());
        this.m = lVar.a("com.vungle.publisher.env.SdkState", (Object)VunglePubBase.class, getClass().getClassLoader());
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

    public final void injectMembers(VunglePubBase vunglePubBase) {
        vunglePubBase.a = (AdManager) this.a.get();
        vunglePubBase.b = (AsyncInitEventListener) this.b.get();
        vunglePubBase.c = (CacheManager) this.c.get();
        vunglePubBase.d = (DatabaseBroadcastReceiver) this.d.get();
        vunglePubBase.e = (DatabaseHelper) this.e.get();
        vunglePubBase.f = (Demographic) this.f.get();
        vunglePubBase.g = (as) this.g.get();
        vunglePubBase.h = (cj) this.h.get();
        vunglePubBase.i = (ExternalStorageStateBroadcastReceiver) this.i.get();
        vunglePubBase.j = (AdConfig) this.j.get();
        vunglePubBase.k = (SafeBundleAdConfigFactory) this.k.get();
        vunglePubBase.l = (SdkConfig) this.l.get();
        vunglePubBase.m = (SdkState) this.m.get();
    }
}