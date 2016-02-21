package com.vungle.publisher;

import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.async.ScheduledPriorityExecutor.b;
import javax.inject.Inject;

public abstract class ah {
    @Inject
    public ScheduledPriorityExecutor a;

    public abstract Runnable a();

    public final void a(long j) {
        this.a.a(a(), b(), j);
    }

    public b b() {
        return b.j;
    }
}