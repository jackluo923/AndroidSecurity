package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import com.vungle.publisher.as;
import com.vungle.publisher.at;
import com.vungle.publisher.protocol.message.RequestAd.Demographic.Factory;
import com.vungle.publisher.protocol.message.RequestAd.DeviceInfo;
import com.vungle.publisher.protocol.message.RequestAd.a;
import java.util.Set;

public final class RequestAd$Factory$$InjectAdapter extends b implements a.b {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;

    public RequestAd$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.protocol.message.RequestAd$Factory", false, a.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.message.RequestAd$Demographic$Factory", (Object)a.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.as", (Object)a.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.protocol.message.RequestAd$DeviceInfo$Factory", (Object)a.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.at", (Object)a.class, getClass().getClassLoader());
        this.e = lVar.a("members/com.vungle.publisher.protocol.message.MessageFactory", a.class, getClass().getClassLoader(), false, true);
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
    }

    public final void injectMembers(a aVar) {
        aVar.a = (Factory) this.a.get();
        aVar.b = (as) this.b.get();
        aVar.c = (DeviceInfo.Factory) this.c.get();
        aVar.d = (at) this.d.get();
        this.e.injectMembers(aVar);
    }
}