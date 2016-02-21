package com.vungle.publisher.env;

import a.a.b;
import a.a.l;
import com.vungle.publisher.env.SdkState.EndAdEventListener;
import java.util.Set;
import javax.inject.Provider;

public final class SdkState$EndAdEventListener$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public SdkState$EndAdEventListener$$InjectAdapter() {
        super("com.vungle.publisher.env.SdkState$EndAdEventListener", "members/com.vungle.publisher.env.SdkState$EndAdEventListener", true, EndAdEventListener.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.env.SdkState", (Object)EndAdEventListener.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.event.BaseEventListener", EndAdEventListener.class, getClass().getClassLoader(), false, true);
    }

    public final EndAdEventListener get() {
        EndAdEventListener endAdEventListener = new EndAdEventListener();
        injectMembers(endAdEventListener);
        return endAdEventListener;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(EndAdEventListener endAdEventListener) {
        endAdEventListener.a = (SdkState) this.a.get();
        this.b.injectMembers(endAdEventListener);
    }
}