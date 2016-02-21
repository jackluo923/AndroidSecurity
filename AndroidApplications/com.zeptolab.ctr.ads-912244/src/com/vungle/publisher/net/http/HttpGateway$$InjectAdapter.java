package com.vungle.publisher.net.http;

import a.a.b;
import a.a.l;
import android.content.Context;
import com.vungle.publisher.bm;
import java.util.Set;

public final class HttpGateway$$InjectAdapter extends b implements a.b {
    private b a;
    private b b;

    public HttpGateway$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.net.http.HttpGateway", false, bm.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("android.content.Context", (Object)bm.class, getClass().getClassLoader());
        this.b = lVar.a("@com.vungle.publisher.inject.annotations.VungleServiceClass()/java.lang.Class", (Object)bm.class, getClass().getClassLoader());
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(bm bmVar) {
        bmVar.b = (Context) this.a.get();
        bmVar.c = (Class) this.b.get();
    }
}