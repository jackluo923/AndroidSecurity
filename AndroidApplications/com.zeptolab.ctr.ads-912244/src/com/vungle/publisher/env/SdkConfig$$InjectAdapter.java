package com.vungle.publisher.env;

import a.a.b;
import a.a.l;
import android.content.Context;
import com.vungle.publisher.event.ClientEventListenerAdapter.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class SdkConfig$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public SdkConfig$$InjectAdapter() {
        super("com.vungle.publisher.env.SdkConfig", "members/com.vungle.publisher.env.SdkConfig", true, SdkConfig.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.event.ClientEventListenerAdapter$Factory", (Object)SdkConfig.class, getClass().getClassLoader());
        this.b = lVar.a("android.content.Context", (Object)SdkConfig.class, getClass().getClassLoader());
        this.c = lVar.a("@com.vungle.publisher.inject.annotations.VungleServiceClass()/java.lang.Class", (Object)SdkConfig.class, getClass().getClassLoader());
    }

    public final SdkConfig get() {
        SdkConfig sdkConfig = new SdkConfig();
        injectMembers(sdkConfig);
        return sdkConfig;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(SdkConfig sdkConfig) {
        sdkConfig.e = (Factory) this.a.get();
        sdkConfig.f = (Context) this.b.get();
        sdkConfig.g = (Class) this.c.get();
    }
}