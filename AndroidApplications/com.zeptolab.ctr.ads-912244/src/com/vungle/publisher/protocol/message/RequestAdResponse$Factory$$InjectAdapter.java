package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import com.vungle.publisher.protocol.message.RequestAdResponse.CallToActionOverlay.Factory;
import com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking;
import com.vungle.publisher.protocol.message.RequestAdResponse.a;
import java.util.Set;

public final class RequestAdResponse$Factory$$InjectAdapter extends b implements a.b {
    private b a;
    private b b;
    private b c;

    public RequestAdResponse$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.protocol.message.RequestAdResponse$Factory", false, a.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.message.RequestAdResponse$CallToActionOverlay$Factory", (Object)a.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$Factory", (Object)a.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.protocol.message.JsonDeserializationFactory", a.class, getClass().getClassLoader(), false, true);
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(a aVar) {
        aVar.a = (Factory) this.a.get();
        aVar.b = (ThirdPartyAdTracking.Factory) this.b.get();
        this.c.injectMembers(aVar);
    }
}