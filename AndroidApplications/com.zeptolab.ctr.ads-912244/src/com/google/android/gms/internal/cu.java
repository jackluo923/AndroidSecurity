package com.google.android.gms.internal;

import android.os.Process;
import com.zeptolab.ctr.ads.R;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class cu {
    private static final ThreadFactory pK;
    private static final ThreadPoolExecutor pL;

    final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ Runnable pM;

        AnonymousClass_1(Runnable runnable) {
            this.pM = runnable;
        }

        public void run() {
            Process.setThreadPriority(R.styleable.MapAttrs_uiZoomControls);
            this.pM.run();
        }
    }

    static {
        pK = new ThreadFactory() {
            private final AtomicInteger pN;

            {
                this.pN = new AtomicInteger(1);
            }

            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "AdWorker #" + this.pN.getAndIncrement());
            }
        };
        pL = new ThreadPoolExecutor(0, 10, 65, TimeUnit.SECONDS, new SynchronousQueue(true), pK);
    }

    public static void execute(Runnable runnable) {
        try {
            pL.execute(new AnonymousClass_1(runnable));
        } catch (RejectedExecutionException e) {
            da.b("Too many background threads already running. Aborting task.", e);
        }
    }
}