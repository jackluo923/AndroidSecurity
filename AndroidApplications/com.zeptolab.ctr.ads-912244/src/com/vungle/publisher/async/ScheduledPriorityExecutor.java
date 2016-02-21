package com.vungle.publisher.async;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.vungle.log.Logger;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class ScheduledPriorityExecutor {
    private final a a;
    private final c b;
    private final c c;
    private final BlockingQueue d;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[com.vungle.publisher.async.ScheduledPriorityExecutor.b.values().length];
            try {
                a[com.vungle.publisher.async.ScheduledPriorityExecutor.b.l.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            a[com.vungle.publisher.async.ScheduledPriorityExecutor.b.k.ordinal()] = 2;
        }
    }

    class a extends Handler {

        class a implements Comparable, Runnable {
            private final Runnable b;
            private final long c;
            private final com.vungle.publisher.async.ScheduledPriorityExecutor.b d;

            a(a aVar, Runnable runnable, com.vungle.publisher.async.ScheduledPriorityExecutor.b bVar) {
                this(runnable, bVar, (byte) 0);
            }

            private a(Runnable runnable, com.vungle.publisher.async.ScheduledPriorityExecutor.b bVar, byte b) {
                this.b = runnable;
                this.c = -1;
                this.d = bVar;
            }

            public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
                return this.d.compareTo(((a) obj).d);
            }

            public final boolean equals(Object obj) {
                if (obj != null && obj instanceof a) {
                    if (this.b.equals(((a) obj).b)) {
                        return true;
                    }
                }
                return false;
            }

            public final int hashCode() {
                return this.b.hashCode();
            }

            public final void run() {
                long j = 0;
                try {
                    this.b.run();
                    try {
                        if (this.c > j) {
                            a.this.postDelayed(this, this.c);
                        }
                    } catch (Exception e) {
                        Logger.e(Logger.ASYNC_TAG, new StringBuilder("error rescheduling ").append(this).toString(), e);
                    }
                } catch (Exception e2) {
                    try {
                        Logger.e(Logger.ASYNC_TAG, new StringBuilder("error executing ").append(this).toString(), e2);
                        try {
                            if (this.c > j) {
                                a.this.postDelayed(this, this.c);
                            }
                        } catch (Exception e3) {
                            Logger.e(Logger.ASYNC_TAG, new StringBuilder("error rescheduling ").append(this).toString(), e3);
                        }
                    } catch (Throwable th) {
                        try {
                            if (this.c > j) {
                                a.this.postDelayed(this, this.c);
                            }
                        } catch (Exception e4) {
                            Logger.e(Logger.ASYNC_TAG, new StringBuilder("error rescheduling ").append(this).toString(), e4);
                        }
                    }
                }
            }

            public final String toString() {
                return new StringBuilder("{PriorityRunnable:: taskType: ").append(this.d).append(", repeatMillis: ").append(this.c).append("}").toString();
            }
        }

        a(Looper looper) {
            super(looper);
        }

        public final void handleMessage(Message message) {
            Object obj = message.obj;
            if (obj == null || !obj instanceof a) {
                Logger.w(Logger.ASYNC_TAG, new StringBuilder("unhandled message ").append(message).toString());
            } else {
                c b;
                com.vungle.publisher.async.ScheduledPriorityExecutor.b a = ((a) obj).d;
                if (a != null) {
                    switch (AnonymousClass_1.a[a.ordinal()]) {
                        case GoogleScorer.CLIENT_GAMES:
                            b = ScheduledPriorityExecutor.this.b;
                            Logger.d(Logger.ASYNC_TAG, new StringBuilder("processing ").append(obj).toString());
                            Logger.v(Logger.ASYNC_TAG, b + ", max pool size " + b.getMaximumPoolSize() + ", largest pool size " + b.getLargestPoolSize());
                            b.execute((Runnable) obj);
                    }
                }
                b = ScheduledPriorityExecutor.this.c;
                Logger.d(Logger.ASYNC_TAG, new StringBuilder("processing ").append(obj).toString());
                Logger.v(Logger.ASYNC_TAG, b + ", max pool size " + b.getMaximumPoolSize() + ", largest pool size " + b.getLargestPoolSize());
                b.execute((Runnable) obj);
            }
        }
    }

    public enum b {
        databaseWrite,
        requestStreamingAd,
        requestConfig,
        requestLocalAd,
        reportInstall,
        reportAd,
        otherProtocolMessage,
        downloadLocalAd,
        prepareLocalAd,
        otherTask,
        externalNetworkRequest,
        clientEvent;

        static {
            a = new com.vungle.publisher.async.ScheduledPriorityExecutor.b("databaseWrite", 0);
            b = new com.vungle.publisher.async.ScheduledPriorityExecutor.b("requestStreamingAd", 1);
            c = new com.vungle.publisher.async.ScheduledPriorityExecutor.b("requestConfig", 2);
            d = new com.vungle.publisher.async.ScheduledPriorityExecutor.b("requestLocalAd", 3);
            e = new com.vungle.publisher.async.ScheduledPriorityExecutor.b("reportInstall", 4);
            f = new com.vungle.publisher.async.ScheduledPriorityExecutor.b("reportAd", 5);
            g = new com.vungle.publisher.async.ScheduledPriorityExecutor.b("otherProtocolMessage", 6);
            h = new com.vungle.publisher.async.ScheduledPriorityExecutor.b("downloadLocalAd", 7);
            i = new com.vungle.publisher.async.ScheduledPriorityExecutor.b("prepareLocalAd", 8);
            j = new com.vungle.publisher.async.ScheduledPriorityExecutor.b("otherTask", 9);
            k = new com.vungle.publisher.async.ScheduledPriorityExecutor.b("externalNetworkRequest", 10);
            l = new com.vungle.publisher.async.ScheduledPriorityExecutor.b("clientEvent", 11);
            m = new com.vungle.publisher.async.ScheduledPriorityExecutor.b[]{a, b, c, d, e, f, g, h, i, j, k, l};
        }
    }

    class c extends ThreadPoolExecutor {

        final class AnonymousClass_1 implements ThreadFactory {
            int a;
            final /* synthetic */ ScheduledPriorityExecutor b;
            final /* synthetic */ String c;

            AnonymousClass_1(ScheduledPriorityExecutor scheduledPriorityExecutor, String str) {
                this.b = scheduledPriorityExecutor;
                this.c = str;
                this.a = 0;
            }

            public final Thread newThread(Runnable runnable) {
                StringBuilder append = new StringBuilder().append(this.c);
                int i = this.a;
                this.a = i + 1;
                String toString = append.append(i).toString();
                Logger.v(Logger.ASYNC_TAG, new StringBuilder("starting ").append(toString).toString());
                return new Thread(runnable, toString);
            }
        }

        c(BlockingQueue blockingQueue, String str) {
            super(2, 2, 30, TimeUnit.SECONDS, blockingQueue, new AnonymousClass_1(ScheduledPriorityExecutor.this, str));
            allowCoreThreadTimeOut(true);
        }

        protected final void afterExecute(Runnable runnable, Throwable th) {
            super.afterExecute(runnable, th);
            if (th != null) {
                Logger.e(Logger.ASYNC_TAG, th);
            }
        }
    }

    @Inject
    ScheduledPriorityExecutor() {
        this.d = new PriorityBlockingQueue();
        HandlerThread handlerThread = new HandlerThread("VungleAsyncMasterThread");
        handlerThread.start();
        this.b = new c(new LinkedBlockingQueue(), "VungleAsyncClientEventThread-");
        this.a = new a(handlerThread.getLooper());
        this.c = new c(this.d, "VungleAsyncMainThread-");
    }

    private Message b(Runnable runnable, b bVar) {
        a aVar = this.a;
        int ordinal = bVar.ordinal();
        aVar.getClass();
        return aVar.obtainMessage(ordinal, new a(aVar, runnable, bVar));
    }

    public final void a(Runnable runnable) {
        a(runnable, b.j);
    }

    public final void a(Runnable runnable, b bVar) {
        this.a.sendMessage(b(runnable, bVar));
    }

    public final void a(Runnable runnable, b bVar, long j) {
        Logger.d(Logger.ASYNC_TAG, new StringBuilder("scheduling ").append(bVar).append(" delayed ").append(j).append(" ms").toString());
        this.a.sendMessageDelayed(b(runnable, bVar), j);
    }
}