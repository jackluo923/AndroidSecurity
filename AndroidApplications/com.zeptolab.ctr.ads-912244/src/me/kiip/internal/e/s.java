package me.kiip.internal.e;

import java.io.InputStream;
import java.net.CacheRequest;
import me.kiip.internal.d.h;

final class s extends a {
    private boolean d;

    s(InputStream inputStream, CacheRequest cacheRequest, e eVar) {
        super(inputStream, eVar, cacheRequest);
    }

    public int available() {
        a();
        return this.a == null ? 0 : this.a.available();
    }

    public void close() {
        if (!this.c) {
            this.c = true;
            if (!this.d) {
                c();
            }
        }
    }

    public int read(byte[] bArr, int i, int i2) {
        h.a(bArr.length, i, i2);
        a();
        if (this.a == null || this.d) {
            return -1;
        }
        int read = this.a.read(bArr, i, i2);
        if (read == -1) {
            this.d = true;
            b();
            return -1;
        } else {
            a(bArr, i, read);
            return read;
        }
    }
}