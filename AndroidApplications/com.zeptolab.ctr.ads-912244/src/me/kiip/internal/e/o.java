package me.kiip.internal.e;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.net.ProtocolException;
import me.kiip.internal.d.a;
import me.kiip.internal.d.h;

final class o extends a {
    private final int b;
    private final ByteArrayOutputStream c;

    public o() {
        this.b = -1;
        this.c = new ByteArrayOutputStream();
    }

    public o(int i) {
        this.b = i;
        this.c = new ByteArrayOutputStream(i);
    }

    public void a(OutputStream outputStream) {
        this.c.writeTo(outputStream);
    }

    public synchronized int c() {
        close();
        return this.c.size();
    }

    public synchronized void close() {
        if (!this.a) {
            this.a = true;
            if (this.c.size() < this.b) {
                throw new ProtocolException("content-length promised " + this.b + " bytes, but received " + this.c.size());
            }
        }
    }

    public synchronized void write(byte[] bArr, int i, int i2) {
        a();
        h.a(bArr.length, i, i2);
        if (this.b == -1 || this.c.size() <= this.b - i2) {
            this.c.write(bArr, i, i2);
        } else {
            throw new ProtocolException("exceeded content-length limit of " + this.b + " bytes");
        }
    }
}