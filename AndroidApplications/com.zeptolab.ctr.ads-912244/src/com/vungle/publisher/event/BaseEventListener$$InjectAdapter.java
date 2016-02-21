package com.vungle.publisher.event;

import a.a.b;
import a.a.l;
import com.vungle.publisher.aw;
import com.vungle.publisher.cj;
import java.util.Set;
import javax.inject.Provider;

public final class BaseEventListener$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public BaseEventListener$$InjectAdapter() {
        super("com.vungle.publisher.aw", "members/com.vungle.publisher.event.BaseEventListener", false, aw.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.cj", (Object)aw.class, getClass().getClassLoader());
    }

    public final aw get() {
        aw awVar = new aw();
        injectMembers(awVar);
        return awVar;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(aw awVar) {
        awVar.f = (cj) this.a.get();
    }
}