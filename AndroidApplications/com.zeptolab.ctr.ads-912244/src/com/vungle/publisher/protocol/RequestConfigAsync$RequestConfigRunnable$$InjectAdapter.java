package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class RequestConfigAsync$RequestConfigRunnable$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public RequestConfigAsync$RequestConfigRunnable$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestConfigAsync$RequestConfigRunnable", "members/com.vungle.publisher.protocol.RequestConfigAsync$RequestConfigRunnable", true, RequestConfigRunnable.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.ProtocolHttpGateway", (Object)RequestConfigRunnable.class, getClass().getClassLoader());
    }

    public final RequestConfigRunnable get() {
        RequestConfigRunnable requestConfigRunnable = new RequestConfigRunnable();
        injectMembers(requestConfigRunnable);
        return requestConfigRunnable;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(RequestConfigRunnable requestConfigRunnable) {
        requestConfigRunnable.a = (ProtocolHttpGateway) this.a.get();
    }
}