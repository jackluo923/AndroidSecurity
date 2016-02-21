package me.kiip.internal.e;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;
import me.kiip.internal.d.h;

abstract class a extends InputStream {
    protected final InputStream a;
    protected final e b;
    protected boolean c;
    private final CacheRequest d;
    private final OutputStream e;

    a(InputStream inputStream, e eVar, CacheRequest cacheRequest) {
        OutputStream body;
        this.a = inputStream;
        this.b = eVar;
        body = cacheRequest != null ? cacheRequest.getBody() : null;
        if (body == null) {
            cacheRequest = null;
        }
        this.e = body;
        this.d = cacheRequest;
    }

    protected final void a_() {
        if (this.c) {
            throw new IOException("stream closed");
        }
    }

    protected final void a_(byte[] bArr, int i, int i2) {
        if (this.e != null) {
            this.e.write(bArr, i, i2);
        }
    }

    protected final void b() {
        if (this.d != null) {
            this.e.close();
        }
        this.b.a(false);
    }

    protected final void c() {
        if (this.d != null) {
            this.d.abort();
        }
        this.b.a(true);
    }

    public final int read() {
        return h.a(this);
    }
}