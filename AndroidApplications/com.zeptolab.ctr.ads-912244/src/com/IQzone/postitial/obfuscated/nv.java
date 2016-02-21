package com.IQzone.postitial.obfuscated;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

public class nv {
    private static final ql a;
    private final SortedSet b;
    private final List c;
    private final SortedSet d;
    private SortedSet e;
    private final int f;
    private final Map g;
    private final Map h;
    private final Map i;
    private final px j;
    private final Map k;
    private final Executor l;
    private int m;

    static {
        a = new ql();
    }

    public nv(Executor executor, int i, px pxVar) {
        this.b = new TreeSet();
        this.c = new LinkedList();
        this.d = new TreeSet();
        this.e = new TreeSet();
        this.g = new HashMap();
        this.h = new HashMap();
        this.i = new HashMap();
        this.k = new HashMap();
        this.l = executor;
        this.f = i;
        this.j = pxVar;
    }

    private synchronized Future c(nz nzVar) {
        return (Future) this.g.get((Integer) this.h.get(nzVar));
    }

    public final synchronized po a(Runnable runnable, mx mxVar) {
        po nyVar;
        int i = this.m;
        this.m = i + 1;
        nz nzVar = new nz(i, runnable);
        this.k.put(nzVar, mxVar);
        this.c.add(nzVar);
        nyVar = new ny(this, nzVar);
        notifyAll();
        return nyVar;
    }

    public final synchronized void a() {
        ql qlVar;
        if (this.e.size() > this.f) {
            throw new RuntimeException("<RunnableStates><2>, Should never have more than limit runing");
        } else if (this.e.size() != this.f || this.c.size() == 0) {
            while (this.c.size() > this.f) {
                nzVar = (nz) this.c.get(0);
                mxVar = (mx) this.k.get(nzVar);
                if (mxVar != null) {
                    try {
                        this.l.execute(new nx(this, mxVar));
                    } catch (Throwable th) {
                        qlVar = a;
                    }
                }
                b(nzVar);
            }
        } else {
            nzVar = (nz) this.e.first();
            if (this.b.contains(nzVar)) {
                c(nzVar).cancel(true);
            } else if (this.d.contains(nzVar)) {
                mxVar = (mx) this.k.get(nzVar);
                if (mxVar != null) {
                    try {
                        this.l.execute(new nw(this, mxVar));
                    } catch (Throwable th2) {
                        qlVar = a;
                    }
                }
                b(nzVar);
                notifyAll();
            } else {
                throw new RuntimeException("<RunnableStates><3>, should not get here");
            }
        }
    }

    public final synchronized void a(Future future, nz nzVar) {
        try {
            Integer num = (Integer) this.j.a();
            if (this.e.contains(nzVar)) {
                this.g.put(num, future);
                this.h.put(nzVar, num);
                this.i.put(num, nzVar);
                notifyAll();
            } else {
                future.cancel(true);
            }
        } catch (om e) {
            throw new RuntimeException("<RunnableStates><1>, This should never happen");
        } catch (Throwable th) {
        }
    }

    public final synchronized boolean a(nz nzVar) {
        boolean z = false;
        synchronized (this) {
            if (!this.d.contains(nzVar)) {
                b(nzVar);
            } else if (this.d.contains(nzVar)) {
                while (!this.h.containsKey(nzVar) && this.d.contains(nzVar)) {
                    wait(100);
                }
                if (this.d.contains(nzVar)) {
                    this.d.remove(nzVar);
                    this.b.add(nzVar);
                    if (this.e.size() > this.f) {
                        throw new RuntimeException("<RunnableStates><4>, what the fuck");
                    }
                    notifyAll();
                    z = true;
                } else {
                    b(nzVar);
                }
            } else {
                throw new RuntimeException("<RunnableStates><5>, shouldn't get here");
            }
        }
        return z;
    }

    public final synchronized nz b() {
        nz nzVar;
        while (true) {
            if (this.e.size() >= this.f || this.c.size() == 0) {
                wait();
            } else {
                nzVar = (nz) this.c.remove(0);
                this.d.add(nzVar);
                this.e.add(nzVar);
            }
        }
        return nzVar;
    }

    public final synchronized void b(nz nzVar) {
        Integer num = (Integer) this.h.remove(nzVar);
        if (num != null) {
            this.g.remove(num);
            this.i.remove(num);
        }
        this.k.remove(nzVar);
        this.b.remove(nzVar);
        this.d.remove(nzVar);
        this.c.remove(nzVar);
        this.e.remove(nzVar);
        notifyAll();
    }
}