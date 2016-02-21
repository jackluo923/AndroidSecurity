package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class EventTracking$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public EventTracking$$InjectAdapter() {
        super("com.vungle.publisher.db.model.EventTracking", "members/com.vungle.publisher.db.model.EventTracking", false, EventTracking.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.EventTracking$Factory", (Object)EventTracking.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.db.model.BaseModel", EventTracking.class, getClass().getClassLoader(), false, true);
    }

    public final EventTracking get() {
        EventTracking eventTracking = new EventTracking();
        injectMembers(eventTracking);
        return eventTracking;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(EventTracking eventTracking) {
        eventTracking.d = (Factory) this.a.get();
        this.b.injectMembers(eventTracking);
    }
}