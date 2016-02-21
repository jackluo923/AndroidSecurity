package com.vungle.publisher.ad;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.StreamingAd.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class AdManager$PrepareStreamingAdEventListener$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public AdManager$PrepareStreamingAdEventListener$$InjectAdapter() {
        super("com.vungle.publisher.ad.AdManager$PrepareStreamingAdEventListener", "members/com.vungle.publisher.ad.AdManager$PrepareStreamingAdEventListener", false, PrepareStreamingAdEventListener.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.StreamingAd$Factory", (Object)PrepareStreamingAdEventListener.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.event.BaseEventListener", PrepareStreamingAdEventListener.class, getClass().getClassLoader(), false, true);
    }

    public final PrepareStreamingAdEventListener get() {
        PrepareStreamingAdEventListener prepareStreamingAdEventListener = new PrepareStreamingAdEventListener();
        injectMembers(prepareStreamingAdEventListener);
        return prepareStreamingAdEventListener;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(PrepareStreamingAdEventListener prepareStreamingAdEventListener) {
        prepareStreamingAdEventListener.e = (Factory) this.a.get();
        this.b.injectMembers(prepareStreamingAdEventListener);
    }
}