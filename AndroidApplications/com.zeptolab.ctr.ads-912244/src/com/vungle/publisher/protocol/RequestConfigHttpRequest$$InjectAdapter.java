package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class RequestConfigHttpRequest$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public RequestConfigHttpRequest$$InjectAdapter() {
        super("com.vungle.publisher.protocol.RequestConfigHttpRequest", "members/com.vungle.publisher.protocol.RequestConfigHttpRequest", true, RequestConfigHttpRequest.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("members/com.vungle.publisher.protocol.ProtocolHttpRequest", RequestConfigHttpRequest.class, getClass().getClassLoader(), false, true);
    }

    public final RequestConfigHttpRequest get() {
        RequestConfigHttpRequest requestConfigHttpRequest = new RequestConfigHttpRequest();
        injectMembers(requestConfigHttpRequest);
        return requestConfigHttpRequest;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(RequestConfigHttpRequest requestConfigHttpRequest) {
        this.a.injectMembers(requestConfigHttpRequest);
    }
}