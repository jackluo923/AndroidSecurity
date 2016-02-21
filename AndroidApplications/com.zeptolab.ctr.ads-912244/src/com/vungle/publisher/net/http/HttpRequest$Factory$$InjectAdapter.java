package com.vungle.publisher.net.http;

import a.a.b;
import a.a.l;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.net.http.HttpRequest.Factory;
import java.util.Set;

public final class HttpRequest$Factory$$InjectAdapter extends b implements a.b {
    private b a;
    private b b;

    public HttpRequest$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.net.http.HttpRequest$Factory", false, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.env.WrapperFramework", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("@com.vungle.publisher.inject.annotations.WrapperFrameworkVersion()/java.lang.String", (Object)Factory.class, getClass().getClassLoader());
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(Factory factory) {
        factory.a = (WrapperFramework) this.a.get();
        factory.b = (String) this.b.get();
    }
}