package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.StreamingAd.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class StreamingVideo$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public StreamingVideo$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingVideo", "members/com.vungle.publisher.db.model.StreamingVideo", false, StreamingVideo.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.StreamingAd$Factory", (Object)StreamingVideo.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.StreamingVideo$Factory", (Object)StreamingVideo.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.db.model.Video", StreamingVideo.class, getClass().getClassLoader(), false, true);
    }

    public final StreamingVideo get() {
        StreamingVideo streamingVideo = new StreamingVideo();
        injectMembers(streamingVideo);
        return streamingVideo;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(StreamingVideo streamingVideo) {
        streamingVideo.e = (Factory) this.a.get();
        streamingVideo.f = (StreamingVideo.Factory) this.b.get();
        this.c.injectMembers(streamingVideo);
    }
}