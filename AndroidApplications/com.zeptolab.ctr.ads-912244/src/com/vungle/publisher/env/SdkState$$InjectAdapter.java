package com.vungle.publisher.env;

import a.a.b;
import a.a.l;
import android.content.Context;
import android.content.SharedPreferences;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.as;
import com.vungle.publisher.cj;
import com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver;
import java.util.Set;
import javax.inject.Provider;

public final class SdkState$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;
    private b f;
    private b g;
    private b h;

    public SdkState$$InjectAdapter() {
        super("com.vungle.publisher.env.SdkState", "members/com.vungle.publisher.env.SdkState", true, SdkState.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.ad.AdManager", (Object)SdkState.class, getClass().getClassLoader());
        this.b = lVar.a("android.content.Context", (Object)SdkState.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.as", (Object)SdkState.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.cj", (Object)SdkState.class, getClass().getClassLoader());
        this.e = lVar.a("com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver", (Object)SdkState.class, getClass().getClassLoader());
        this.f = lVar.a("javax.inject.Provider<com.vungle.publisher.env.SdkState$EndAdEventListener>", (Object)SdkState.class, getClass().getClassLoader());
        this.g = lVar.a("@com.vungle.publisher.inject.annotations.VungleServiceClass()/java.lang.Class", (Object)SdkState.class, getClass().getClassLoader());
        this.h = lVar.a("@com.vungle.publisher.inject.annotations.EnvSharedPreferences()/android.content.SharedPreferences", (Object)SdkState.class, getClass().getClassLoader());
    }

    public final SdkState get() {
        SdkState sdkState = new SdkState();
        injectMembers(sdkState);
        return sdkState;
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
    }

    public final void injectMembers(SdkState sdkState) {
        sdkState.a = (AdManager) this.a.get();
        sdkState.b = (Context) this.b.get();
        sdkState.c = (as) this.c.get();
        sdkState.d = (cj) this.d.get();
        sdkState.e = (ExternalStorageStateBroadcastReceiver) this.e.get();
        sdkState.f = (Provider) this.f.get();
        sdkState.g = (Class) this.g.get();
        sdkState.k = (SharedPreferences) this.h.get();
    }
}