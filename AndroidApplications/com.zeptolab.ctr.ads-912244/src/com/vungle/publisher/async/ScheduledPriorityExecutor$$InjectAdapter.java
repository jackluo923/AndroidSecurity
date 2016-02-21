package com.vungle.publisher.async;

import a.a.b;
import javax.inject.Provider;

public final class ScheduledPriorityExecutor$$InjectAdapter extends b implements Provider {
    public ScheduledPriorityExecutor$$InjectAdapter() {
        super("com.vungle.publisher.async.ScheduledPriorityExecutor", "members/com.vungle.publisher.async.ScheduledPriorityExecutor", true, ScheduledPriorityExecutor.class);
    }

    public final ScheduledPriorityExecutor get() {
        return new ScheduledPriorityExecutor();
    }
}