package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class StreamingAdPlay$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public StreamingAdPlay$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAdPlay", "members/com.vungle.publisher.db.model.StreamingAdPlay", false, StreamingAdPlay.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.StreamingAdPlay$Factory", (Object)StreamingAdPlay.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.StreamingAdReportEvent$Factory", (Object)StreamingAdPlay.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.db.model.AdPlay", StreamingAdPlay.class, getClass().getClassLoader(), false, true);
    }

    public final StreamingAdPlay get() {
        StreamingAdPlay streamingAdPlay = new StreamingAdPlay();
        injectMembers(streamingAdPlay);
        return streamingAdPlay;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(StreamingAdPlay streamingAdPlay) {
        streamingAdPlay.e = (Factory) this.a.get();
        streamingAdPlay.f = (Factory) this.b.get();
        this.c.injectMembers(streamingAdPlay);
    }
}