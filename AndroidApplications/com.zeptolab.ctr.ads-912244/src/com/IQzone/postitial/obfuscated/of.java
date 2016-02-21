package com.IQzone.postitial.obfuscated;

import java.io.InputStream;

public abstract class of extends InputStream {
    private final InputStream a;

    public of(InputStream inputStream) {
        if (inputStream == null) {
            throw new NullPointerException("ToWrap must not be null");
        }
        this.a = inputStream;
    }

    public int available() {
        return this.a.available();
    }

    public void close() {
        this.a.close();
    }

    public synchronized void mark(int i) {
        this.a.mark(i);
    }

    public boolean markSupported() {
        return this.a.markSupported();
    }

    public int read() {
        return this.a.read();
    }

    public int read(byte[] bArr) {
        return this.a.read(bArr);
    }

    public int read(byte[] bArr, int i, int i2) {
        return this.a.read(bArr, i, i2);
    }

    public synchronized void reset() {
        this.a.reset();
    }

    public long skip(long j) {
        return this.a.skip(j);
    }
}