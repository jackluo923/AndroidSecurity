package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.LocalAd.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class LocalVideo$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public LocalVideo$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalVideo", "members/com.vungle.publisher.db.model.LocalVideo", false, LocalVideo.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.LocalAd$Factory", (Object)LocalVideo.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.LocalVideo$Factory", (Object)LocalVideo.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.db.model.Video", LocalVideo.class, getClass().getClassLoader(), false, true);
    }

    public final LocalVideo get() {
        LocalVideo localVideo = new LocalVideo();
        injectMembers(localVideo);
        return localVideo;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(LocalVideo localVideo) {
        localVideo.g = (Factory) this.a.get();
        localVideo.h = (LocalVideo.Factory) this.b.get();
        this.c.injectMembers(localVideo);
    }
}