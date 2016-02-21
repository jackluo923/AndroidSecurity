package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.env.SdkConfig;
import java.util.Set;
import javax.inject.Provider;

public final class ProtocolHttpGateway$PrepareLocalAdEventListener$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public ProtocolHttpGateway$PrepareLocalAdEventListener$$InjectAdapter() {
        super("com.vungle.publisher.protocol.ProtocolHttpGateway$PrepareLocalAdEventListener", "members/com.vungle.publisher.protocol.ProtocolHttpGateway$PrepareLocalAdEventListener", true, PrepareLocalAdEventListener.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("javax.inject.Provider<com.vungle.publisher.protocol.ProtocolHttpGateway>", (Object)PrepareLocalAdEventListener.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.env.SdkConfig", (Object)PrepareLocalAdEventListener.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.event.BaseEventListener", PrepareLocalAdEventListener.class, getClass().getClassLoader(), false, true);
    }

    public final PrepareLocalAdEventListener get() {
        PrepareLocalAdEventListener prepareLocalAdEventListener = new PrepareLocalAdEventListener();
        injectMembers(prepareLocalAdEventListener);
        return prepareLocalAdEventListener;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(PrepareLocalAdEventListener prepareLocalAdEventListener) {
        prepareLocalAdEventListener.a = (Provider) this.a.get();
        prepareLocalAdEventListener.b = (SdkConfig) this.b.get();
        this.c.injectMembers(prepareLocalAdEventListener);
    }
}