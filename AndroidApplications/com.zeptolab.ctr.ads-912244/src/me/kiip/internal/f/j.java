package me.kiip.internal.f;

import com.google.android.gms.cast.Cast;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import me.kiip.internal.d.h;

public final class j {
    static final /* synthetic */ boolean a;
    private final int b;
    private final i c;
    private final int d;
    private final int e;
    private long f;
    private int g;
    private final List h;
    private List i;
    private final a j;
    private final b k;
    private a l;

    private final class a extends InputStream {
        static final /* synthetic */ boolean a;
        private final byte[] c;
        private int d;
        private int e;
        private boolean f;
        private boolean g;
        private int h;

        static {
            a = !j.class.desiredAssertionStatus();
        }

        private a() {
            this.c = new byte[65536];
            this.d = -1;
            this.h = 0;
        }

        private void a_() {
            long nanoTime;
            long c;
            if (j.this.f != 0) {
                nanoTime = System.nanoTime() / 1000000;
                c = j.this.f;
            } else {
                c = 0;
                nanoTime = 0;
            }
            while (this.d == -1 && !this.g && !this.f && j.this.l == null) {
                try {
                    if (j.this.f == 0) {
                        j.this.wait();
                    } else if (c > 0) {
                        j.this.wait(c);
                        c = j.this.f + nanoTime - System.nanoTime() / 1000000;
                    } else {
                        throw new SocketTimeoutException();
                    }
                } catch (InterruptedException e) {
                    throw new InterruptedIOException();
                }
            }
        }

        private void b() {
            if (this.f) {
                throw new IOException("stream closed");
            } else if (j.this.l != null) {
                throw new IOException("stream was reset: " + j.this.l);
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        void a_(java.io.InputStream r9, int r10) {
            throw new UnsupportedOperationException("Method not decompiled: me.kiip.internal.f.j.a.a(java.io.InputStream, int):void");
            /*
            r8 = this;
            r0 = 0;
            r1 = a;
            if (r1 != 0) goto L_0x0013;
        L_0x0005:
            r1 = me.kiip.internal.f.j.this;
            r1 = java.lang.Thread.holdsLock(r1);
            if (r1 == 0) goto L_0x0013;
        L_0x000d:
            r0 = new java.lang.AssertionError;
            r0.<init>();
            throw r0;
        L_0x0013:
            if (r10 != 0) goto L_0x0016;
        L_0x0015:
            return;
        L_0x0016:
            r3 = me.kiip.internal.f.j.this;
            monitor-enter(r3);
            r4 = r8.g;	 Catch:{ all -> 0x003d }
            r5 = r8.d;	 Catch:{ all -> 0x003d }
            r6 = r8.e;	 Catch:{ all -> 0x003d }
            r1 = r8.e;	 Catch:{ all -> 0x003d }
            r2 = r8.c;	 Catch:{ all -> 0x003d }
            r2 = r2.length;	 Catch:{ all -> 0x003d }
            r7 = r8.available();	 Catch:{ all -> 0x003d }
            r2 = r2 - r7;
            if (r10 <= r2) goto L_0x003b;
        L_0x002b:
            r2 = 1;
        L_0x002c:
            monitor-exit(r3);	 Catch:{ all -> 0x003d }
            if (r2 == 0) goto L_0x0040;
        L_0x002f:
            r0 = (long) r10;
            me.kiip.internal.d.h.a(r9, r0);
            r0 = me.kiip.internal.f.j.this;
            r1 = me.kiip.internal.f.a.h;
            r0.b(r1);
            goto L_0x0015;
        L_0x003b:
            r2 = r0;
            goto L_0x002c;
        L_0x003d:
            r0 = move-exception;
            monitor-exit(r3);	 Catch:{ all -> 0x003d }
            throw r0;
        L_0x0040:
            if (r4 == 0) goto L_0x0047;
        L_0x0042:
            r0 = (long) r10;
            me.kiip.internal.d.h.a(r9, r0);
            goto L_0x0015;
        L_0x0047:
            if (r5 >= r1) goto L_0x007b;
        L_0x0049:
            r2 = r8.c;
            r2 = r2.length;
            r2 = r2 - r1;
            r2 = java.lang.Math.min(r10, r2);
            r3 = r8.c;
            me.kiip.internal.d.h.a(r9, r3, r1, r2);
            r1 = r1 + r2;
            r10 = r10 - r2;
            r2 = r8.c;
            r2 = r2.length;
            if (r1 != r2) goto L_0x007b;
        L_0x005d:
            if (r10 <= 0) goto L_0x0065;
        L_0x005f:
            r1 = r8.c;
            me.kiip.internal.d.h.a(r9, r1, r0, r10);
            r0 = r0 + r10;
        L_0x0065:
            r1 = me.kiip.internal.f.j.this;
            monitor-enter(r1);
            r8.e = r0;	 Catch:{ all -> 0x0078 }
            r0 = r8.d;	 Catch:{ all -> 0x0078 }
            r2 = -1;
            if (r0 != r2) goto L_0x0076;
        L_0x006f:
            r8.d = r6;	 Catch:{ all -> 0x0078 }
            r0 = me.kiip.internal.f.j.this;	 Catch:{ all -> 0x0078 }
            r0.notifyAll();	 Catch:{ all -> 0x0078 }
        L_0x0076:
            monitor-exit(r1);	 Catch:{ all -> 0x0078 }
            goto L_0x0015;
        L_0x0078:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x0078 }
            throw r0;
        L_0x007b:
            r0 = r1;
            goto L_0x005d;
            */
        }

        public int available() {
            int i;
            synchronized (j.this) {
                b();
                if (this.d == -1) {
                    i = 0;
                } else if (this.e > this.d) {
                    i = this.e - this.d;
                } else {
                    i = this.e + this.c.length - this.d;
                }
            }
            return i;
        }

        public void close() {
            synchronized (j.this) {
                this.f = true;
                j.this.notifyAll();
            }
            j.this.g();
        }

        public int read() {
            return h.a(this);
        }

        public int read(byte[] bArr, int i, int i2) {
            int i3 = -1;
            synchronized (j.this) {
                h.a(bArr.length, i, i2);
                a();
                b();
                if (this.d == -1) {
                } else {
                    if (this.e <= this.d) {
                        i3 = Math.min(i2, this.c.length - this.d);
                        System.arraycopy(this.c, this.d, bArr, i, i3);
                        this.d += i3;
                        i3 += 0;
                        if (this.d == this.c.length) {
                            this.d = 0;
                        }
                    } else {
                        i3 = 0;
                    }
                    if (i3 < i2) {
                        int min = Math.min(this.e - this.d, i2 - i3);
                        System.arraycopy(this.c, this.d, bArr, i + i3, min);
                        this.d += min;
                        i3 += min;
                    }
                    this.h += i3;
                    if (this.h >= 32768) {
                        j.this.c.a(j.this, this.h);
                        this.h = 0;
                    }
                    if (this.d == this.e) {
                        this.d = -1;
                        this.e = 0;
                    }
                }
            }
            return i3;
        }
    }

    private final class b extends OutputStream {
        static final /* synthetic */ boolean a;
        private final byte[] c;
        private int d;
        private boolean e;
        private boolean f;
        private int g;

        static {
            a = !j.class.desiredAssertionStatus();
        }

        private b() {
            this.c = new byte[8192];
            this.d = 0;
            this.g = 0;
        }

        static /* synthetic */ int a(b bVar, int i) {
            int i2 = bVar.g - i;
            bVar.g = i2;
            return i2;
        }

        private void a() {
            synchronized (j.this) {
                if (this.e) {
                    throw new IOException("stream closed");
                } else if (this.f) {
                    throw new IOException("stream finished");
                } else if (j.this.l != null) {
                    throw new IOException("stream was reset: " + j.this.l);
                }
            }
        }

        private void a(int i, boolean z) {
            do {
                try {
                    if (this.g + i >= j.this.g) {
                        j.this.wait();
                        if (!z && this.e) {
                            throw new IOException("stream closed");
                        } else if (this.f) {
                            throw new IOException("stream finished");
                        }
                    } else {
                        return;
                    }
                } catch (InterruptedException e) {
                    throw new InterruptedIOException();
                }
            } while (j.this.l == null);
            throw new IOException("stream was reset: " + j.this.l);
        }

        private void a(boolean z) {
            if (a || !Thread.holdsLock(j.this)) {
                int i = this.d;
                synchronized (j.this) {
                    a(i, z);
                    this.g = i + this.g;
                }
                j.this.c.a(j.this, z, this.c, 0, this.d);
                this.d = 0;
            } else {
                throw new AssertionError();
            }
        }

        public void close() {
            if (a || !Thread.holdsLock(j.this)) {
                synchronized (j.this) {
                    if (this.e) {
                    } else {
                        this.e = true;
                        if (!j.this.k.f) {
                            a(true);
                        }
                        j.this.c.c();
                        j.this.g();
                    }
                }
            } else {
                throw new AssertionError();
            }
        }

        public void flush() {
            if (a || !Thread.holdsLock(j.this)) {
                a();
                if (this.d > 0) {
                    a(false);
                    j.this.c.c();
                }
            } else {
                throw new AssertionError();
            }
        }

        public void write(int i) {
            h.a(this, i);
        }

        public void write(byte[] bArr, int i, int i2) {
            if (a || !Thread.holdsLock(j.this)) {
                h.a(bArr.length, i, i2);
                a();
                while (i2 > 0) {
                    if (this.d == this.c.length) {
                        a(false);
                    }
                    int min = Math.min(i2, this.c.length - this.d);
                    System.arraycopy(bArr, i, this.c, this.d, min);
                    this.d += min;
                    i += min;
                    i2 -= min;
                }
            } else {
                throw new AssertionError();
            }
        }
    }

    static {
        a = !j.class.desiredAssertionStatus();
    }

    j(int i, i iVar, boolean z, boolean z2, int i2, int i3, List list, g gVar) {
        this.f = 0;
        this.j = new a(null);
        this.k = new b(null);
        this.l = null;
        if (iVar == null) {
            throw new NullPointerException("connection == null");
        } else if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        } else {
            this.b = i;
            this.c = iVar;
            this.j.g = z2;
            this.k.f = z;
            this.d = i2;
            this.e = i3;
            this.h = list;
            b(gVar);
        }
    }

    private void b(g gVar) {
        int i = Cast.MAX_MESSAGE_LENGTH;
        if (a || Thread.holdsLock(this.c)) {
            if (gVar != null) {
                i = gVar.d(Cast.MAX_MESSAGE_LENGTH);
            }
            this.g = i;
        } else {
            throw new AssertionError();
        }
    }

    private boolean d(a aVar) {
        if (a || !Thread.holdsLock(this)) {
            synchronized (this) {
                if (this.l != null) {
                    return false;
                } else if (this.j.g && this.k.f) {
                    return false;
                } else {
                    this.l = aVar;
                    notifyAll();
                    this.c.a(this.b);
                    return true;
                }
            }
        } else {
            throw new AssertionError();
        }
    }

    private void g() {
        if (a || !Thread.holdsLock(this)) {
            int i;
            boolean a;
            synchronized (this) {
                i = (!this.j.g && this.j.f && (this.k.f || this.k.e)) ? 1 : 0;
                a = a();
            }
            if (i != 0) {
                a(a.l);
            } else if (!a) {
                this.c.a(this.b);
            }
        } else {
            throw new AssertionError();
        }
    }

    synchronized void a(int i) {
        b.a(this.k, i);
        notifyAll();
    }

    public void a(long j) {
        this.f = j;
    }

    void a(InputStream inputStream, int i) {
        if (a || !Thread.holdsLock(this)) {
            this.j.a(inputStream, i);
        } else {
            throw new AssertionError();
        }
    }

    void a(List list) {
        boolean z = true;
        if (a || !Thread.holdsLock(this)) {
            boolean z2 = 0;
            synchronized (this) {
                if (b() && this.i == null) {
                    this.i = list;
                    z = a();
                    notifyAll();
                } else {
                    z2 = true;
                }
            }
            if (i != 0) {
                b(a.e);
            } else if (!z) {
                this.c.a(this.b);
            }
        } else {
            throw new AssertionError();
        }
    }

    public void a(a aVar) {
        if (d(aVar)) {
            this.c.b(this.b, aVar);
        }
    }

    void a(g gVar) {
        if (a || Thread.holdsLock(this)) {
            b(gVar);
            notifyAll();
        } else {
            throw new AssertionError();
        }
    }

    public synchronized boolean a() {
        boolean z = false;
        synchronized (this) {
            if (this.l == null) {
                if (this.j.g || this.j.f) {
                    if (!this.k.f) {
                    }
                }
                z = true;
            }
        }
        return z;
    }

    void b(List list) {
        if (a || !Thread.holdsLock(this)) {
            boolean z = 0;
            synchronized (this) {
                if (this.i != null) {
                    List arrayList = new ArrayList();
                    arrayList.addAll(this.i);
                    arrayList.addAll(list);
                    this.i = arrayList;
                } else {
                    z = 1;
                }
            }
            if (i != 0) {
                b(a.b);
            }
        } else {
            throw new AssertionError();
        }
    }

    public void b(a aVar) {
        if (d(aVar)) {
            this.c.a(this.b, aVar);
        }
    }

    public boolean b() {
        return this.c.b == (this.b % 2 == 1);
    }

    public synchronized List c() {
        while (this.i == null && this.l == null) {
            try {
                wait();
            } catch (InterruptedException e) {
                Throwable th = e;
                InterruptedIOException interruptedIOException = new InterruptedIOException();
                interruptedIOException.initCause(th);
                throw interruptedIOException;
            } catch (Throwable th2) {
            }
        }
        if (this.i != null) {
        } else {
            throw new IOException("stream was reset: " + this.l);
        }
        return this.i;
    }

    synchronized void c(a aVar) {
        if (this.l == null) {
            this.l = aVar;
            notifyAll();
        }
    }

    public InputStream d() {
        return this.j;
    }

    public OutputStream e() {
        synchronized (this) {
            if (this.i != null || b()) {
            } else {
                throw new IllegalStateException("reply before requesting the output stream");
            }
        }
        return this.k;
    }

    void f() {
        if (a || !Thread.holdsLock(this)) {
            boolean a;
            synchronized (this) {
                this.j.g = true;
                a = a();
                notifyAll();
            }
            if (!a) {
                this.c.a(this.b);
            }
        } else {
            throw new AssertionError();
        }
    }
}