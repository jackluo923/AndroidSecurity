package com.vungle.publisher.ad;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class AdManager$PlayAdEventListener$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public AdManager$PlayAdEventListener$$InjectAdapter() {
        super("com.vungle.publisher.ad.AdManager$PlayAdEventListener", "members/com.vungle.publisher.ad.AdManager$PlayAdEventListener", true, PlayAdEventListener.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.ad.AdManager", (Object)PlayAdEventListener.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.event.BaseEventListener", PlayAdEventListener.class, getClass().getClassLoader(), false, true);
    }

    public final PlayAdEventListener get() {
        PlayAdEventListener playAdEventListener = new PlayAdEventListener();
        injectMembers(playAdEventListener);
        return playAdEventListener;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(PlayAdEventListener playAdEventListener) {
        playAdEventListener.b = (AdManager) this.a.get();
        this.b.injectMembers(playAdEventListener);
    }
}