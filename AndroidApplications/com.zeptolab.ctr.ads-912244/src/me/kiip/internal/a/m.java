package me.kiip.internal.a;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class m {
    private AtomicInteger a;
    private final Map b;
    private final Set c;
    private final PriorityBlockingQueue d;
    private final PriorityBlockingQueue e;
    private final b f;
    private final f g;
    private final o h;
    private g[] i;
    private c j;

    public m(b bVar, f fVar) {
        this(bVar, fVar, 4);
    }

    public m(b bVar, f fVar, int i) {
        this(bVar, fVar, i, new e(new Handler(Looper.getMainLooper())));
    }

    public m(b bVar, f fVar, int i, o oVar) {
        this.a = new AtomicInteger();
        this.b = new HashMap();
        this.c = new HashSet();
        this.d = new PriorityBlockingQueue();
        this.e = new PriorityBlockingQueue();
        this.f = bVar;
        this.g = fVar;
        this.i = new g[i];
        this.h = oVar;
    }

    public l a(l lVar) {
        lVar.a(this);
        synchronized (this.c) {
            this.c.add(lVar);
        }
        lVar.a(c());
        lVar.a("add-to-queue");
        if (lVar.p()) {
            synchronized (this.b) {
                String d = lVar.d();
                if (this.b.containsKey(d)) {
                    Queue queue = (Queue) this.b.get(d);
                    if (queue == null) {
                        queue = new LinkedList();
                    }
                    queue.add(lVar);
                    this.b.put(d, queue);
                    if (t.b) {
                        t.a("Request for cacheKey=%s is in flight, putting on hold.", new Object[]{d});
                    }
                } else {
                    this.b.put(d, null);
                    this.d.add(lVar);
                }
            }
        } else {
            this.e.add(lVar);
        }
        return lVar;
    }

    public void a() {
        b();
        this.j = new c(this.d, this.e, this.f, this.h);
        this.j.start();
        int i = 0;
        while (i < this.i.length) {
            g gVar = new g(this.e, this.g, this.f, this.h);
            this.i[i] = gVar;
            gVar.start();
            i++;
        }
    }

    public void b() {
        if (this.j != null) {
            this.j.a();
        }
        int i = 0;
        while (i < this.i.length) {
            if (this.i[i] != null) {
                this.i[i].a();
            }
            i++;
        }
    }

    void b(l lVar) {
        synchronized (this.c) {
            this.c.remove(lVar);
        }
        if (lVar.p()) {
            synchronized (this.b) {
                Queue queue = (Queue) this.b.remove(lVar.d());
                if (queue != null) {
                    if (t.b) {
                        t.a("Releasing %d waiting requests for cacheKey=%s.", new Object[]{Integer.valueOf(queue.size()), str});
                    }
                    this.d.addAll(queue);
                }
            }
        }
    }

    public int c() {
        return this.a.incrementAndGet();
    }
}