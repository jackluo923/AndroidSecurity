package me.kiip.internal.f;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import me.kiip.internal.d.e;
import me.kiip.internal.d.h;

public final class i implements Closeable {
    static final /* synthetic */ boolean d;
    private static final ExecutorService e;
    final k a;
    final boolean b;
    g c;
    private final e f;
    private final b g;
    private final c h;
    private final Map i;
    private final String j;
    private int k;
    private int l;
    private boolean m;
    private long n;
    private Map o;
    private int p;

    class AnonymousClass_1 extends e {
        final /* synthetic */ int a;
        final /* synthetic */ a b;

        AnonymousClass_1(String str, Object[] objArr, int i, a aVar) {
            this.a = i;
            this.b = aVar;
            super(str, objArr);
        }

        public void a() {
            try {
                i.this.b(this.a, this.b);
            } catch (IOException e) {
            }
        }
    }

    class AnonymousClass_2 extends e {
        final /* synthetic */ int a;
        final /* synthetic */ int b;

        AnonymousClass_2(String str, Object[] objArr, int i, int i2) {
            this.a = i;
            this.b = i2;
            super(str, objArr);
        }

        public void a() {
            try {
                i.this.b(this.a, this.b);
            } catch (IOException e) {
            }
        }
    }

    class AnonymousClass_3 extends e {
        final /* synthetic */ boolean a;
        final /* synthetic */ int b;
        final /* synthetic */ int c;
        final /* synthetic */ f d;

        AnonymousClass_3(String str, Object[] objArr, boolean z, int i, int i2, f fVar) {
            this.a = z;
            this.b = i;
            this.c = i2;
            this.d = fVar;
            super(str, objArr);
        }

        public void a() {
            try {
                i.this.b(this.a, this.b, this.c, this.d);
            } catch (IOException e) {
            }
        }
    }

    public static class a {
        private String a;
        private InputStream b;
        private OutputStream c;
        private e d;
        private k e;
        private boolean f;

        public a(String str, boolean z, InputStream inputStream, OutputStream outputStream) {
            this.d = e.a;
            this.e = k.b;
            this.a = str;
            this.f = z;
            this.b = inputStream;
            this.c = outputStream;
        }

        public i a_() {
            return new i(null);
        }
    }

    private class b implements Runnable, me.kiip.internal.f.b.a {

        class AnonymousClass_1 extends e {
            final /* synthetic */ j a;

            AnonymousClass_1(String str, Object[] objArr, j jVar) {
                this.a = jVar;
                super(str, objArr);
            }

            public void a() {
                try {
                    b.this.a.f.a(this.a);
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        private b() {
        }

        public void a() {
        }

        public void a(int i, int i2) {
        }

        public void a(int i, int i2, boolean z) {
            if (i != 0) {
                j a = i.this.b(i);
                if (a != null) {
                    a.a(i2);
                }
            }
        }

        public void a(int i, List list) {
            j a = i.this.b(i);
            if (a != null) {
                a.b(list);
            }
        }

        public void a(int i, a aVar) {
            j a = i.this.a(i);
            if (a != null) {
                a.c(aVar);
            }
        }

        public void a(boolean z, int i, int i2) {
            if (z) {
                f c = i.this.c(i);
                if (c != null) {
                    c.b();
                }
            } else {
                i.this.a(true, i, i2, null);
            }
        }

        public void a(boolean z, int i, InputStream inputStream, int i2) {
            j a = i.this.b(i);
            if (a == null) {
                i.this.a(i, a.c);
                h.a(inputStream, (long) i2);
            } else {
                a.a(inputStream, i2);
                if (z) {
                    a.f();
                }
            }
        }

        public void a(boolean z, int i, List list) {
            j a = i.this.b(i);
            if (a == null) {
                i.this.a(i, a.c);
            } else {
                a.a(list);
                if (z) {
                    a.f();
                }
            }
        }

        public void a(boolean z, g gVar) {
            synchronized (i.this) {
                if (i.this.c == null || z) {
                    i.this.c = gVar;
                } else {
                    i.this.c.a(gVar);
                }
                if (i.this.i.isEmpty()) {
                    ?[] Arr = null;
                } else {
                    j[] jVarArr = (j[]) i.this.i.values().toArray(new j[i.this.i.size()]);
                }
            }
            if (Arr != null) {
                int length = Arr.length;
                int i = 0;
                while (i < length) {
                    j jVar = Arr[i];
                    synchronized (jVar) {
                        try {
                            synchronized (i.this) {
                                jVar.a(i.this.c);
                            }
                        } catch (Throwable th) {
                        }
                    }
                    i++;
                }
            }
        }

        public void a(boolean z, boolean z2, int i, int i2, int i3, int i4, List list) {
            synchronized (i.this) {
                j jVar = new j(i, i.this, z, z2, i3, i4, list, i.this.c);
                if (i.this.m) {
                } else {
                    i.this.k = i;
                    j jVar2 = (j) i.this.i.put(Integer.valueOf(i), jVar);
                    if (jVar2 != null) {
                        jVar2.b(a.b);
                        i.this.a(i);
                    } else {
                        e.submit(new AnonymousClass_1("OkHttp SPDY Callback %s stream %d", new Object[]{i.this.j, Integer.valueOf(i)}, jVar));
                    }
                }
            }
        }

        public void b_(int i, a aVar) {
            synchronized (i.this) {
                i.this.m = true;
                Iterator it = i.this.i.entrySet().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    if (((Integer) entry.getKey()).intValue() > i && ((j) entry.getValue()).b()) {
                        ((j) entry.getValue()).c(a.k);
                        it.remove();
                    }
                }
            }
        }

        public void run() {
            a aVar;
            a aVar2 = a.g;
            a aVar3 = a.g;
            do {
                try {
                } catch (IOException e) {
                    try {
                        aVar = a.b;
                        try {
                            try {
                                i.this.a(aVar, a.b);
                            } catch (IOException e2) {
                            }
                        } catch (Throwable th) {
                            th = th;
                            i.this.a(aVar, aVar3);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        aVar = aVar2;
                        Throwable th3 = th2;
                        try {
                            i.this.a(aVar, aVar3);
                        } catch (IOException e3) {
                        }
                        throw th3;
                    }
                }
            } while (i.this.g.a(this));
            try {
                i.this.a(a.a, a.l);
            } catch (IOException e4) {
            }
        }
    }

    static {
        d = !i.class.desiredAssertionStatus();
        e = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), h.b("OkHttp SpdyConnection"));
    }

    private i(a aVar) {
        int i = 1;
        this.i = new HashMap();
        this.n = System.nanoTime();
        this.a = aVar.e;
        this.b = aVar.f;
        this.f = aVar.d;
        this.g = this.a.a(aVar.b, this.b);
        this.h = this.a.a(aVar.c, this.b);
        this.l = aVar.f ? 1 : 2;
        if (!aVar.f) {
            i = 2;
        }
        this.p = i;
        this.j = aVar.a;
        new Thread(new b(null), "Spdy Reader " + this.j).start();
    }

    private void a(a aVar, a aVar2) {
        if (d || !Thread.holdsLock(this)) {
            boolean z;
            ?[] Arr;
            ?[] Arr2;
            int i;
            int i2;
            IOException iOException;
            IOException iOException2;
            try {
                a(aVar);
                z = false;
            } catch (IOException e) {
                iOException2 = e;
            }
            synchronized (this) {
                if (this.i.isEmpty()) {
                    Arr = null;
                } else {
                    j[] jVarArr = (j[]) this.i.values().toArray(new j[this.i.size()]);
                    this.i.clear();
                    a(false);
                    j[] jVarArr2 = jVarArr;
                }
                if (this.o != null) {
                    f[] fVarArr = (f[]) this.o.values().toArray(new f[this.o.size()]);
                    this.o = null;
                    f[] fVarArr2 = fVarArr;
                } else {
                    Arr2 = null;
                }
            }
            if (Arr != null) {
                int length = Arr.length;
                i = 0;
                boolean z2 = z;
                while (i < length) {
                    try {
                        Arr[i].a(aVar2);
                    } catch (IOException e2) {
                        iOException2 = e2;
                        if (i2 != 0) {
                            iOException = iOException2;
                        }
                    }
                    i++;
                }
                int i3 = i2;
            }
            if (Arr2 != null) {
                i = Arr2.length;
                i2 = 0;
                while (i2 < i) {
                    Arr2[i2].c();
                    i2++;
                }
            }
            try {
                this.g.close();
            } catch (IOException e3) {
                iOException2 = e3;
            }
            try {
                this.h.close();
                iOException = iOException2;
            } catch (IOException e4) {
                iOException = e4;
                if (iOException2 != null) {
                    iOException = iOException2;
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } else {
            throw new AssertionError();
        }
    }

    private synchronized void a(boolean z) {
        this.n = z ? System.nanoTime() : 0;
    }

    private void a(boolean z, int i, int i2, f fVar) {
        e.submit(new AnonymousClass_3("OkHttp SPDY Writer %s ping %08x%08x", new Object[]{this.j, Integer.valueOf(i), Integer.valueOf(i2)}, z, i, i2, fVar));
    }

    private synchronized j b(int i) {
        return (j) this.i.get(Integer.valueOf(i));
    }

    private void b(boolean z, int i, int i2, f fVar) {
        synchronized (this.h) {
            if (fVar != null) {
                fVar.a();
            }
            this.h.a(z, i, i2);
        }
    }

    private synchronized f c(int i) {
        return this.o != null ? (f) this.o.remove(Integer.valueOf(i)) : null;
    }

    synchronized j a(int i) {
        j jVar;
        jVar = (j) this.i.remove(Integer.valueOf(i));
        if (jVar != null && this.i.isEmpty()) {
            a(true);
        }
        return jVar;
    }

    public j a(List list, boolean z, boolean z2) {
        j jVar;
        boolean z3 = !z;
        boolean z4 = !z2;
        synchronized (this.h) {
            try {
                int i;
                synchronized (this) {
                    if (this.m) {
                        throw new IOException("shutdown");
                    }
                    i = this.l;
                    this.l += 2;
                    jVar = new j(i, this, z3, z4, 0, 0, list, this.c);
                    if (jVar.a()) {
                        this.i.put(Integer.valueOf(i), jVar);
                        a(false);
                    }
                }
                this.h.a(z3, z4, i, 0, 0, 0, list);
            } catch (Throwable th) {
            }
        }
        return jVar;
    }

    void a(int i, int i2) {
        e.submit(new AnonymousClass_2("OkHttp SPDY Writer %s stream %d", new Object[]{this.j, Integer.valueOf(i)}, i, i2));
    }

    void a(int i, a aVar) {
        e.submit(new AnonymousClass_1("OkHttp SPDY Writer %s stream %d", new Object[]{this.j, Integer.valueOf(i)}, i, aVar));
    }

    public void a(int i, boolean z, byte[] bArr, int i2, int i3) {
        this.h.a(z, i, bArr, i2, i3);
    }

    public void a(a aVar) {
        synchronized (this.h) {
            try {
                synchronized (this) {
                    if (this.m) {
                    } else {
                        this.m = true;
                        int i = this.k;
                        this.h.b(i, aVar);
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    public synchronized boolean a() {
        return this.n != 0;
    }

    public synchronized long b() {
        return this.n;
    }

    void b(int i, int i2) {
        this.h.a(i, i2);
    }

    void b(int i, a aVar) {
        this.h.a(i, aVar);
    }

    public void c() {
        this.h.b();
    }

    public void close() {
        a(a.a, a.l);
    }

    public void d() {
        this.h.a();
    }
}