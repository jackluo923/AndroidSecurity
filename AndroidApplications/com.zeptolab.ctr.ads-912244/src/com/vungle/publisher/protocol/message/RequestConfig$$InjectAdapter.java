package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import com.vungle.publisher.at;
import java.util.Set;
import javax.inject.Provider;

public final class RequestConfig$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public RequestConfig$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestConfig", "members/com.vungle.publisher.protocol.message.RequestConfig", true, RequestConfig.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.at", (Object)RequestConfig.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.protocol.message.BaseJsonSerializable", RequestConfig.class, getClass().getClassLoader(), false, true);
    }

    public final RequestConfig get() {
        RequestConfig requestConfig = new RequestConfig();
        injectMembers(requestConfig);
        return requestConfig;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(RequestConfig requestConfig) {
        requestConfig.a = (at) this.a.get();
        this.b.injectMembers(requestConfig);
    }
}