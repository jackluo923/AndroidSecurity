package com.vungle.publisher.async;

import a.a.b;
import a.a.l;
import com.vungle.publisher.ah;
import java.util.Set;

public final class ExecutorAsync$$InjectAdapter extends b implements a.b {
    private b a;

    public ExecutorAsync$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.async.ExecutorAsync", false, ah.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.async.ScheduledPriorityExecutor", (Object)ah.class, getClass().getClassLoader());
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(ah ahVar) {
        ahVar.a = (ScheduledPriorityExecutor) this.a.get();
    }
}