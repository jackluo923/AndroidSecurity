package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class ReportLocalAd$Factory$PlayFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public ReportLocalAd$Factory$PlayFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.ReportLocalAd$Factory$PlayFactory", "members/com.vungle.publisher.protocol.message.ReportLocalAd$Factory$PlayFactory", true, PlayFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.message.ReportLocalAd$Factory$PlayFactory$UserActionFactory", (Object)PlayFactory.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.protocol.message.ReportAd$Play$Factory", PlayFactory.class, getClass().getClassLoader(), false, true);
    }

    public final PlayFactory get() {
        PlayFactory playFactory = new PlayFactory();
        injectMembers(playFactory);
        return playFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(PlayFactory playFactory) {
        playFactory.a = (UserActionFactory) this.a.get();
        this.b.injectMembers(playFactory);
    }
}