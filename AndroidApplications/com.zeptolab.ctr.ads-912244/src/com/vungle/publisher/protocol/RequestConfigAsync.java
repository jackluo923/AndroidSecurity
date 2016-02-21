package com.vungle.publisher.protocol;

import com.vungle.publisher.ah;
import com.vungle.publisher.async.ScheduledPriorityExecutor.b;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class RequestConfigAsync extends ah {
    @Inject
    RequestConfigRunnable b;

    @Singleton
    static class RequestConfigRunnable implements Runnable {
        @Inject
        ProtocolHttpGateway a;

        RequestConfigRunnable() {
        }

        public void run() {
            this.a.c();
        }
    }

    protected final Runnable a() {
        return this.b;
    }

    protected final b b() {
        return b.c;
    }
}