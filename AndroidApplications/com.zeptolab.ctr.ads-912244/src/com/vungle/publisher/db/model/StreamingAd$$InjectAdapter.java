package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.StreamingAd.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class StreamingAd$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public StreamingAd$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAd", "members/com.vungle.publisher.db.model.StreamingAd", false, StreamingAd.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.StreamingAd$Factory", (Object)StreamingAd.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.db.model.Ad", StreamingAd.class, getClass().getClassLoader(), false, true);
    }

    public final StreamingAd get() {
        StreamingAd streamingAd = new StreamingAd();
        injectMembers(streamingAd);
        return streamingAd;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(StreamingAd streamingAd) {
        streamingAd.m = (Factory) this.a.get();
        this.b.injectMembers(streamingAd);
    }
}