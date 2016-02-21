package com.vungle.publisher.env;

import a.a.b;
import a.a.l;
import com.vungle.publisher.env.SdkState.SessionEndListener;
import java.util.Set;
import javax.inject.Provider;

public final class SdkState$SessionEndListener$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public SdkState$SessionEndListener$$InjectAdapter() {
        super("com.vungle.publisher.env.SdkState$SessionEndListener", "members/com.vungle.publisher.env.SdkState$SessionEndListener", true, SessionEndListener.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.env.SdkState", (Object)SessionEndListener.class, getClass().getClassLoader());
    }

    public final SessionEndListener get() {
        SessionEndListener sessionEndListener = new SessionEndListener();
        injectMembers(sessionEndListener);
        return sessionEndListener;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(SessionEndListener sessionEndListener) {
        sessionEndListener.a = (SdkState) this.a.get();
    }
}