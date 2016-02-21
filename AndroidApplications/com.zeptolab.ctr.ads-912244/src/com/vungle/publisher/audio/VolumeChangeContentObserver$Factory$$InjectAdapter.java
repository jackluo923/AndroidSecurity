package com.vungle.publisher.audio;

import a.a.b;
import a.a.l;
import android.media.AudioManager;
import com.vungle.publisher.audio.VolumeChangeContentObserver.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class VolumeChangeContentObserver$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public VolumeChangeContentObserver$Factory$$InjectAdapter() {
        super("com.vungle.publisher.audio.VolumeChangeContentObserver$Factory", "members/com.vungle.publisher.audio.VolumeChangeContentObserver$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("android.media.AudioManager", (Object)Factory.class, getClass().getClassLoader());
    }

    public final Factory get() {
        Factory factory = new Factory();
        injectMembers(factory);
        return factory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(Factory factory) {
        factory.a = (AudioManager) this.a.get();
    }
}