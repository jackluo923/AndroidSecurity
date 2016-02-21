package com.vungle.publisher.net.http;

import a.a.b;
import a.a.l;
import com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler.Creator;
import java.util.Set;
import javax.inject.Provider;

public final class InfiniteRetryHttpResponseHandler$Creator$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public InfiniteRetryHttpResponseHandler$Creator$$InjectAdapter() {
        super("com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler$Creator", "members/com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler$Creator", true, Creator.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler", (Object)Creator.class, getClass().getClassLoader());
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
        creator.a = (InfiniteRetryHttpResponseHandler) this.a.get();
    }
}