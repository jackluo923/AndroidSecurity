package com.vungle.publisher.net.http;

import a.a.b;
import a.a.l;
import com.vungle.publisher.net.http.HttpTransaction.Creator;
import java.util.Set;
import javax.inject.Provider;

public final class HttpTransaction$Creator$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public HttpTransaction$Creator$$InjectAdapter() {
        super("com.vungle.publisher.net.http.HttpTransaction$Creator", "members/com.vungle.publisher.net.http.HttpTransaction$Creator", true, Creator.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("javax.inject.Provider<com.vungle.publisher.net.http.HttpTransaction>", (Object)Creator.class, getClass().getClassLoader());
    }

    public final Creator get() {
        Creator creator = new Creator();
        injectMembers(creator);
        return creator;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(Creator creator) {
        creator.a = (Provider) this.a.get();
    }
}