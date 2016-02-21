package me.kiip.internal.e;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;
import java.net.ProtocolException;
import java.net.Socket;
import me.kiip.internal.d.h;

public final class f implements r {
    private final e a;
    private final InputStream b;
    private final OutputStream c;
    private OutputStream d;

    private static class a extends a {
        private final f d;
        private int e;
        private boolean f;

        a(InputStream inputStream, CacheRequest cacheRequest, f fVar) {
            super(inputStream, fVar.a, cacheRequest);
            this.e = -1;
            this.f = true;
            this.d = fVar;
        }

        private void d() {
            if (this.e != -1) {
                h.c(this.a);
            }
            String c = h.c(this.a);
            int indexOf = c.indexOf(";");
            if (indexOf != -1) {
                c = c.substring(0, indexOf);
            }
            try {
                this.e = Integer.parseInt(c.trim(), MMException.REQUEST_NOT_PERMITTED);
                if (this.e == 0) {
                    this.f = false;
                    l f = this.b.i.f();
                    l.a(this.d.b, f);
                    this.b.a(f);
                    b();
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException("Expected a hex chunk size but was " + c);
            }
        }

        public int available() {
            a();
            return (!this.f || this.e == -1) ? 0 : Math.min(this.a.available(), this.e);
        }

        public void close() {
            if (!this.c) {
                if (this.f && !f.b(this.b, this)) {
                    c();
                }
                this.c = true;
            }
        }

        public int read(byte[] bArr, int i, int i2) {
            h.a(bArr.length, i, i2);
            a();
            if (!this.f) {
                return -1;
            }
            if (this.e == 0 || this.e == -1) {
                d();
                if (!this.f) {
                    return -1;
                }
            }
            int read = this.a.read(bArr, i, Math.min(i2, this.e));
            if (read == -1) {
                c();
                throw new IOException("unexpected end of stream");
            } else {
                this.e -= read;
                a(bArr, i, read);
                return read;
            }
        }
    }

    private static final class b extends me.kiip.internal.d.a {
        private static final byte[] b;
        private static final byte[] c;
        private static final byte[] d;
        private final byte[] e;
        private final OutputStream f;
        private final int g;
        private final ByteArrayOutputStream h;

        static {
            b = new byte[]{(byte) 13, (byte) 10};
            c = new byte[]{(byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102};
            d = new byte[]{(byte) 48, (byte) 13, (byte) 10, (byte) 13, (byte) 10};
        }

        private b(OutputStream outputStream, int i) {
            this.e = new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 13, (byte) 10};
            this.f = outputStream;
            this.g = Math.max(1, a(i));
            this.h = new ByteArrayOutputStream(i);
        }

        private int a(int i) {
            int i2 = GoogleScorer.CLIENT_APPSTATE;
            int i3 = i - 4;
            while (i3 > 0) {
                i2++;
                i3 >>= 4;
            }
            return i - i2;
        }

        private void b_(int i) {
            int i2 = IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED;
            do {
                i2--;
                this.e[i2] = c[i & 15];
                i >>>= 4;
            } while (i != 0);
            this.f.write(this.e, i2, this.e.length - i2);
        }

        private void c() {
            int size = this.h.size();
            if (size > 0) {
                b(size);
                this.h.writeTo(this.f);
                this.h.reset();
                this.f.write(b);
            }
        }

        public synchronized void close() {
            if (!this.a) {
                this.a = true;
                c();
                this.f.write(d);
            }
        }

        public synchronized void flush() {
            if (!this.a) {
                c();
                this.f.flush();
            }
        }

        public synchronized void write(byte[] bArr, int i, int i2) {
            a();
            h.a(bArr.length, i, i2);
            while (i2 > 0) {
                int min;
                if (this.h.size() > 0 || i2 < this.g) {
                    min = Math.min(i2, this.g - this.h.size());
                    this.h.write(bArr, i, min);
                    if (this.h.size() == this.g) {
                        c();
                    }
                } else {
                    min = this.g;
                    b(min);
                    this.f.write(bArr, i, min);
                    this.f.write(b);
                }
                i += min;
                i2 -= min;
            }
        }
    }

    private static class c extends a {
        private int d;

        public c(InputStream inputStream, CacheRequest cacheRequest, e eVar, int i) {
            super(inputStream, eVar, cacheRequest);
            this.d = i;
            if (this.d == 0) {
                b();
            }
        }

        public int available() {
            a();
            return this.d == 0 ? 0 : Math.min(this.a.available(), this.d);
        }

        public void close() {
            if (!this.c) {
                if (!(this.d == 0 || f.b(this.b, this))) {
                    c();
                }
                this.c = true;
            }
        }

        public int read(byte[] bArr, int i, int i2) {
            h.a(bArr.length, i, i2);
            a();
            if (this.d == 0) {
                return -1;
            }
            int read = this.a.read(bArr, i, Math.min(i2, this.d));
            if (read == -1) {
                c();
                throw new ProtocolException("unexpected end of stream");
            } else {
                this.d -= read;
                a(bArr, i, read);
                if (this.d == 0) {
                    b();
                }
                return read;
            }
        }
    }

    private static final class d extends me.kiip.internal.d.a {
        private final OutputStream b;
        private long c;

        private d(OutputStream outputStream, long j) {
            this.b = outputStream;
            this.c = j;
        }

        public void close() {
            if (!this.a) {
                this.a = true;
                if (this.c > 0) {
                    throw new ProtocolException("unexpected end of stream");
                }
            }
        }

        public void flush() {
            if (!this.a) {
                this.b.flush();
            }
        }

        public void write(byte[] bArr, int i, int i2) {
            a();
            h.a(bArr.length, i, i2);
            if (((long) i2) > this.c) {
                throw new ProtocolException("expected " + this.c + " bytes but received " + i2);
            }
            this.b.write(bArr, i, i2);
            this.c -= (long) i2;
        }
    }

    public f(e eVar, OutputStream outputStream, InputStream inputStream) {
        this.a = eVar;
        this.c = outputStream;
        this.d = outputStream;
        this.b = inputStream;
    }

    private static boolean b(e eVar, InputStream inputStream) {
        me.kiip.internal.c.b bVar = eVar.d;
        if (bVar == null) {
            return false;
        }
        Socket c = bVar.c();
        if (c == null) {
            return false;
        }
        try {
            int soTimeout = c.getSoTimeout();
            c.setSoTimeout(MMException.UNKNOWN_ERROR);
            h.b(inputStream);
            c.setSoTimeout(soTimeout);
            return true;
        } catch (IOException e) {
            return false;
        }
    }

    public InputStream a(CacheRequest cacheRequest) {
        if (!this.a.o()) {
            return new c(this.b, cacheRequest, this.a, 0);
        }
        if (this.a.i.d()) {
            return new a(this.b, cacheRequest, this);
        }
        return this.a.i.h() != -1 ? new c(this.b, cacheRequest, this.a, this.a.i.h()) : new s(this.b, cacheRequest, this.a);
    }

    public OutputStream a() {
        boolean a = this.a.h.a();
        if (!(a || this.a.a.d() <= 0 || this.a.d.j() == 0)) {
            this.a.h.q();
            a = true;
        }
        if (a) {
            int d = this.a.a.d();
            if (d == -1) {
                d = AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT;
            }
            c();
            return new b(d, null);
        } else {
            long c = this.a.a.c();
            if (c != -1) {
                this.a.h.a(c);
                c();
                return new d(c, null);
            } else {
                c = this.a.h.j();
                if (c > 2147483647L) {
                    throw new IllegalArgumentException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
                } else if (c == -1) {
                    return new o();
                } else {
                    c();
                    return new o((int) c);
                }
            }
        }
    }

    public void a(o oVar) {
        oVar.a(this.d);
    }

    public boolean a(boolean z, OutputStream outputStream, InputStream inputStream) {
        if (z) {
            return false;
        }
        if ((outputStream != null && !((me.kiip.internal.d.a) outputStream).b()) || this.a.h.b()) {
            return false;
        }
        if ((this.a.i != null && this.a.i.e()) || inputStream instanceof s) {
            return false;
        }
        return inputStream != null ? b(this.a, inputStream) : true;
    }

    public void b() {
        this.d.flush();
        this.d = this.c;
    }

    public void c() {
        this.a.d();
        this.d.write(this.a.h.c().f());
    }

    public n d() {
        l a = l.a(this.b);
        this.a.d.a(a.b());
        this.a.a(a);
        n nVar = new n(this.a.g, a);
        nVar.a("http/1.1");
        return nVar;
    }
}