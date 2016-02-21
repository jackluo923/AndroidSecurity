package com.vungle.publisher.net.http;

import a.a.b;
import a.a.l;
import com.vungle.publisher.net.http.DownloadHttpRequest.Creator;
import com.vungle.publisher.net.http.DownloadHttpRequest.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class DownloadHttpRequest$Creator$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public DownloadHttpRequest$Creator$$InjectAdapter() {
        super("com.vungle.publisher.net.http.DownloadHttpRequest$Creator", "members/com.vungle.publisher.net.http.DownloadHttpRequest$Creator", true, Creator.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.net.http.DownloadHttpRequest$Factory", (Object)Creator.class, getClass().getClassLoader());
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
        creator.a = (Factory) this.a.get();
    }
}