package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import com.vungle.publisher.AdConfig;
import com.vungle.publisher.as;
import com.vungle.publisher.at;
import com.vungle.publisher.bj;
import com.vungle.publisher.protocol.message.RequestAd.DeviceInfo.DisplayDimension;
import com.vungle.publisher.protocol.message.RequestAd.DeviceInfo.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class RequestAd$DeviceInfo$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;
    private b f;

    public RequestAd$DeviceInfo$Factory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAd$DeviceInfo$Factory", "members/com.vungle.publisher.protocol.message.RequestAd$DeviceInfo$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.AdConfig", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.as", (Object)Factory.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.protocol.message.RequestAd$DeviceInfo$DisplayDimension$Factory", (Object)Factory.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.bj", (Object)Factory.class, getClass().getClassLoader());
        this.e = lVar.a("com.vungle.publisher.at", (Object)Factory.class, getClass().getClassLoader());
        this.f = lVar.a("members/com.vungle.publisher.protocol.message.MessageFactory", Factory.class, getClass().getClassLoader(), false, true);
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
        factory.a = (AdConfig) this.a.get();
        factory.b = (as) this.b.get();
        factory.c = (DisplayDimension.Factory) this.c.get();
        factory.d = (bj) this.d.get();
        factory.e = (at) this.e.get();
        this.f.injectMembers(factory);
    }
}