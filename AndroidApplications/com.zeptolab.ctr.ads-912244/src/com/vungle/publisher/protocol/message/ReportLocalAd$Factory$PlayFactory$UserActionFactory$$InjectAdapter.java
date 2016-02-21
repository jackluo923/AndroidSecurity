package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class ReportLocalAd$Factory$PlayFactory$UserActionFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public ReportLocalAd$Factory$PlayFactory$UserActionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.ReportLocalAd$Factory$PlayFactory$UserActionFactory", "members/com.vungle.publisher.protocol.message.ReportLocalAd$Factory$PlayFactory$UserActionFactory", true, UserActionFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("members/com.vungle.publisher.protocol.message.ReportAd$Play$UserAction$Factory", UserActionFactory.class, getClass().getClassLoader(), false, true);
    }

    public final UserActionFactory get() {
        UserActionFactory userActionFactory = new UserActionFactory();
        injectMembers(userActionFactory);
        return userActionFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(UserActionFactory userActionFactory) {
        this.a.injectMembers(userActionFactory);
    }
}