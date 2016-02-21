package me.kiip.internal.c;

import java.io.Closeable;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import me.kiip.internal.d.f;
import me.kiip.internal.d.h;

public class c {
    private static final c a;
    private final int b;
    private final long c;
    private final LinkedList d;
    private final ExecutorService e;
    private final Callable f;

    static {
        String property = System.getProperty("http.keepAlive");
        String property2 = System.getProperty("http.keepAliveDuration");
        String property3 = System.getProperty("http.maxConnections");
        long parseLong = property2 != null ? Long.parseLong(property2) : 300000;
        if (property != null && !Boolean.parseBoolean(property)) {
            a = new c(0, parseLong);
        } else if (property3 != null) {
            a = new c(Integer.parseInt(property3), parseLong);
        } else {
            a = new c(5, parseLong);
        }
    }

    public c(int i, long j) {
        this.d = new LinkedList();
        this.e = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), h.b("OkHttp ConnectionPool"));
        this.f = new Callable() {
            public Void a() {
                List arrayList = new ArrayList(2);
                int i = 0;
                synchronized (c.this) {
                    ListIterator listIterator = c.this.d.listIterator(c.this.d.size());
                    while (listIterator.hasPrevious()) {
                        int i2;
                        b bVar = (b) listIterator.previous();
                        if (!bVar.d() || bVar.a(c.this.c)) {
                            listIterator.remove();
                            arrayList.add(bVar);
                            if (arrayList.size() == 2) {
                                break;
                            }
                            i2 = i;
                        } else {
                            if (bVar.g()) {
                                i2 = i + 1;
                            }
                            i2 = i;
                        }
                        i = i2;
                    }
                    listIterator = c.this.d.listIterator(c.this.d.size());
                    while (listIterator.hasPrevious() && i > c.this.b) {
                        bVar = (b) listIterator.previous();
                        if (bVar.g()) {
                            arrayList.add(bVar);
                            listIterator.remove();
                            i2 = i - 1;
                        } else {
                            i2 = i;
                        }
                        i = i2;
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    h.a((b) it.next());
                }
                return null;
            }

            public /* synthetic */ Object call() {
                return a();
            }
        };
        this.b = i;
        this.c = (j * 1000) * 1000;
    }

    public static c a() {
        return a;
    }

    public synchronized b a(a aVar) {
        b bVar;
        ListIterator listIterator = this.d.listIterator(this.d.size());
        while (listIterator.hasPrevious()) {
            Closeable closeable = (b) listIterator.previous();
            if (closeable.b().a().equals(aVar) && closeable.d() && System.nanoTime() - closeable.h() < this.c) {
                listIterator.remove();
                if (!closeable.i()) {
                    try {
                        f.a().a(closeable.c());
                        break;
                    } catch (SocketException e) {
                        SocketException socketException = e;
                        h.a(closeable);
                        f.a().a("Unable to tagSocket(): " + socketException);
                    }
                } else {
                    break;
                }
            }
        }
        bVar = null;
        if (bVar != null) {
            if (bVar.i()) {
                this.d.addFirst(bVar);
            }
        }
        this.e.submit(this.f);
        return bVar;
    }

    public void a(Closeable closeable) {
        if (!closeable.i()) {
            if (closeable.d()) {
                try {
                    f.a().b(closeable.c());
                    synchronized (this) {
                        this.d.addFirst(closeable);
                        closeable.f();
                    }
                    this.e.submit(this.f);
                } catch (SocketException e) {
                    f.a().a("Unable to untagSocket(): " + e);
                    h.a(closeable);
                }
            } else {
                h.a(closeable);
            }
        }
    }

    public void b(b bVar) {
        this.e.submit(this.f);
        if (bVar.i() && bVar.d()) {
            synchronized (this) {
                this.d.addFirst(bVar);
            }
        }
    }
}