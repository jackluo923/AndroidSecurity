package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.at;
import com.vungle.publisher.bh;
import com.vungle.publisher.protocol.ProtocolHttpRequest.a;
import java.util.Set;

public final class ProtocolHttpRequest$Factory$$InjectAdapter extends b implements a.b {
    private b a;
    private b b;
    private b c;
    private b d;

    public ProtocolHttpRequest$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.protocol.ProtocolHttpRequest$Factory", false, a.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.bh", (Object)a.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.at", (Object)a.class, getClass().getClassLoader());
        this.c = lVar.a("@com.vungle.publisher.inject.annotations.VungleBaseUrl()/java.lang.String", (Object)a.class, getClass().getClassLoader());
        this.d = lVar.a("members/com.vungle.publisher.net.http.HttpRequest$Factory", a.class, getClass().getClassLoader(), false, true);
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
    }

    public final void injectMembers(a aVar) {
        aVar.c = (bh) this.a.get();
        aVar.d = (at) this.b.get();
        aVar.e = (String) this.c.get();
        this.d.injectMembers(aVar);
    }
}