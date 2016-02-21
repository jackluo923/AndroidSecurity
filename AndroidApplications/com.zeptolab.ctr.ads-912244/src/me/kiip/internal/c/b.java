package me.kiip.internal.c;

import com.inmobi.androidsdk.impl.AdException;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Arrays;
import javax.net.ssl.SSLSocket;
import me.kiip.internal.d.f;
import me.kiip.internal.e.c;
import me.kiip.internal.e.e;
import me.kiip.internal.e.l;
import me.kiip.internal.e.q;
import me.kiip.internal.f.i;
import me.kiip.internal.f.i.a;

public final class b implements Closeable {
    private static final byte[] a;
    private static final byte[] b;
    private static final byte[] c;
    private final j d;
    private Socket e;
    private InputStream f;
    private OutputStream g;
    private boolean h;
    private i i;
    private int j;
    private long k;

    static {
        a = new byte[]{(byte) 6, (byte) 115, (byte) 112, (byte) 100, (byte) 121, (byte) 47, (byte) 51, (byte) 8, (byte) 104, (byte) 116, (byte) 116, (byte) 112, (byte) 47, (byte) 49, (byte) 46, (byte) 49};
        b = new byte[]{(byte) 115, (byte) 112, (byte) 100, (byte) 121, (byte) 47, (byte) 51};
        c = new byte[]{(byte) 104, (byte) 116, (byte) 116, (byte) 112, (byte) 47, (byte) 49, (byte) 46, (byte) 49};
    }

    public b(j jVar) {
        this.h = false;
        this.j = 1;
        this.d = jVar;
    }

    private void a(l lVar) {
        f a = f.a();
        if (k()) {
            b(lVar);
        }
        this.e = this.d.a.d.createSocket(this.e, this.d.a.b, this.d.a.c, true);
        SSLSocket sSLSocket = (SSLSocket) this.e;
        if (this.d.d) {
            a.a(sSLSocket, this.d.a.b);
        } else {
            a.a(sSLSocket);
        }
        int i = this.d.d && this.d.a.g.contains("spdy/3");
        if (i != 0) {
            a.a(sSLSocket, a);
        }
        sSLSocket.startHandshake();
        if (this.d.a.e.verify(this.d.a.b, sSLSocket.getSession())) {
            this.g = sSLSocket.getOutputStream();
            this.f = sSLSocket.getInputStream();
            if (i != 0) {
                byte[] b = a.b(sSLSocket);
                if (b == null) {
                    return;
                }
                if (Arrays.equals(b, b)) {
                    sSLSocket.setSoTimeout(0);
                    this.i = new a(this.d.a.a(), true, this.f, this.g).a();
                    this.i.d();
                } else if (!Arrays.equals(b, c)) {
                    throw new IOException("Unexpected NPN transport " + new String(b, "ISO-8859-1"));
                }
            }
        } else {
            throw new IOException("Hostname '" + this.d.a.b + "' was not verified");
        }
    }

    private void b_(l lVar) {
        l lVar2 = lVar.a();
        while (true) {
            this.g.write(lVar2.f());
            l a = l.a(this.f);
            switch (a.c()) {
                case AdException.INTERNAL_ERROR:
                    return;
                case 407:
                    l lVar3 = new l(lVar2);
                    if (c.a(this.d.a.f, 407, a, lVar3, this.d.b, new URL("https", lVar.a, lVar.b, "/"))) {
                        lVar2 = lVar3;
                    } else {
                        throw new IOException("Failed to authenticate with proxy");
                    }
                default:
                    throw new IOException("Unexpected response code for CONNECT: " + a.c());
            }
        }
    }

    public Object a(e eVar) {
        return this.i != null ? new q(eVar, this.i) : new me.kiip.internal.e.f(eVar, this.g, this.f);
    }

    public void a(int i) {
        this.j = i;
    }

    public void a(int i, int i2, l lVar) {
        if (this.h) {
            throw new IllegalStateException("already connected");
        }
        this.h = true;
        this.e = this.d.b.type() != Type.HTTP ? new Socket(this.d.b) : new Socket();
        f.a().a(this.e, this.d.c, i);
        this.e.setSoTimeout(i2);
        this.f = this.e.getInputStream();
        this.g = this.e.getOutputStream();
        if (this.d.a.d != null) {
            a(lVar);
        }
        int c = f.a().c(this.e);
        if (c < 1024) {
            c = 1024;
        }
        if (c > 8192) {
            c = 8192;
        }
        this.f = new BufferedInputStream(this.f, c);
        this.g = new BufferedOutputStream(this.g, c);
    }

    public boolean a() {
        return this.h;
    }

    public boolean a(long j) {
        return g() && System.nanoTime() - h() > j;
    }

    public j b_() {
        return this.d;
    }

    public Socket c() {
        return this.e;
    }

    public void close() {
        this.e.close();
    }

    public boolean d() {
        return !this.e.isClosed() && !this.e.isInputShutdown() && !this.e.isOutputShutdown();
    }

    public boolean e() {
        if (!(this.f instanceof BufferedInputStream)) {
            return true;
        }
        if (i()) {
            return true;
        }
        BufferedInputStream bufferedInputStream = (BufferedInputStream) this.f;
        try {
            int soTimeout = this.e.getSoTimeout();
            this.e.setSoTimeout(1);
            bufferedInputStream.mark(1);
            if (bufferedInputStream.read() == -1) {
                this.e.setSoTimeout(soTimeout);
                return false;
            } else {
                bufferedInputStream.reset();
                this.e.setSoTimeout(soTimeout);
                return true;
            }
        } catch (SocketTimeoutException e) {
            return true;
        } catch (IOException e2) {
            return false;
        }
    }

    public void f() {
        if (this.i != null) {
            throw new IllegalStateException("spdyConnection != null");
        }
        this.k = System.nanoTime();
    }

    public boolean g() {
        return this.i == null || this.i.a();
    }

    public long h() {
        return this.i == null ? this.k : this.i.b();
    }

    public boolean i() {
        return this.i != null;
    }

    public int j() {
        return this.j;
    }

    public boolean k() {
        return this.d.a.d != null && this.d.b.type() == Type.HTTP;
    }
}