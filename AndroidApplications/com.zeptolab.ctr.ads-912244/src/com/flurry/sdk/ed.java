package com.flurry.sdk;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;
import java.util.concurrent.TimeUnit;

public class ed {
    private static final String a;
    private final dp b;
    private final HashMap c;
    private final HashMap d;
    private final ThreadPoolExecutor e;

    class AnonymousClass_1 extends ThreadPoolExecutor {

        class AnonymousClass_1 extends fc {
            final /* synthetic */ fd a;

            AnonymousClass_1(fd fdVar) {
                this.a = fdVar;
            }

            public void a() {
                this.a.j();
            }
        }

        class AnonymousClass_2 extends fc {
            final /* synthetic */ fd a;

            AnonymousClass_2(fd fdVar) {
                this.a = fdVar;
            }

            public void a() {
                this.a.k();
            }
        }

        AnonymousClass_1(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue blockingQueue) {
            super(i, i2, j, timeUnit, blockingQueue);
        }

        protected void afterExecute(Runnable runnable, Throwable th) {
            super.afterExecute(runnable, th);
            fd a = ed.this.a(runnable);
            if (a != null) {
                synchronized (ed.this.d) {
                    ed.this.d.remove(a);
                }
                ed.this.b(a);
                new AnonymousClass_2(a).run();
            }
        }

        protected void beforeExecute(Thread thread, Runnable runnable) {
            super.beforeExecute(thread, runnable);
            fd a = ed.this.a(runnable);
            if (a != null) {
                new AnonymousClass_1(a).run();
            }
        }

        protected RunnableFuture newTaskFor(Runnable runnable, Object obj) {
            RunnableFuture ecVar = new ec(runnable, obj);
            synchronized (ed.this.d) {
                ed.this.d.put((fd) runnable, ecVar);
            }
            return ecVar;
        }

        protected RunnableFuture newTaskFor(Callable callable) {
            throw new UnsupportedOperationException("Callable not supported");
        }
    }

    class AnonymousClass_3 extends fc {
        final /* synthetic */ fd a;

        AnonymousClass_3(fd fdVar) {
            this.a = fdVar;
        }

        public void a() {
            this.a.h();
        }
    }

    static {
        a = ed.class.getSimpleName();
    }

    public ed(String str, int i, int i2, long j, TimeUnit timeUnit, BlockingQueue blockingQueue) {
        this.b = new dp();
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new AnonymousClass_1(i, i2, j, timeUnit, blockingQueue);
        this.e.setRejectedExecutionHandler(new DiscardPolicy() {

            class AnonymousClass_1 extends fc {
                final /* synthetic */ fd a;

                AnonymousClass_1(fd fdVar) {
                    this.a = fdVar;
                }

                public void a() {
                    this.a.l();
                }
            }

            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                super.rejectedExecution(runnable, threadPoolExecutor);
                fd a = ed.this.a(runnable);
                if (a != null) {
                    synchronized (ed.this.d) {
                        ed.this.d.remove(a);
                    }
                    ed.this.b(a);
                    new AnonymousClass_1(a).run();
                }
            }
        });
        this.e.setThreadFactory(new ew(str, 1));
    }

    private fd a(Runnable runnable) {
        if (runnable instanceof ec) {
            return (fd) ((ec) runnable).a();
        }
        if (runnable instanceof fd) {
            return (fd) runnable;
        }
        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "Unknown runnable class: " + runnable.getClass().getName());
        return null;
    }

    private synchronized void b(fd fdVar) {
        c(this.c.get(fdVar), fdVar);
    }

    private synchronized void b(Object obj, Object obj2) {
        this.b.a(obj, obj2);
        this.c.put(obj2, obj);
    }

    private synchronized void c(Object obj, fd fdVar) {
        this.b.b(obj, fdVar);
        this.c.remove(fdVar);
    }

    public synchronized void a(fd fdVar) {
        if (fdVar != null) {
            try {
                Future future;
                synchronized (this.d) {
                    future = (Future) this.d.remove(fdVar);
                }
                b(fdVar);
                if (future != null) {
                    future.cancel(true);
                }
                new AnonymousClass_3(fdVar).run();
            } catch (Throwable th) {
            }
        }
    }

    public synchronized void a(Object obj) {
        if (obj != null) {
            Collection hashSet = new HashSet();
            hashSet.addAll(this.b.a(obj));
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                a((fd) it.next());
            }
        }
    }

    public synchronized void a(Object obj, fd fdVar) {
        if (!(obj == null || fdVar == null)) {
            b(obj, fdVar);
            this.e.submit(fdVar);
        }
    }

    public synchronized long b(Object obj) {
        return obj == null ? 0 : (long) this.b.a(obj).size();
    }
}