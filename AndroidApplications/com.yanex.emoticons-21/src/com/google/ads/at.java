package com.google.ads;

import java.io.OutputStream;

public final class at {
    private final byte[] a;
    private final int b;
    private int c;
    private int d;
    private final OutputStream e;

    private at(OutputStream outputStream, byte[] bArr) {
        this.d = 0;
        this.e = outputStream;
        this.a = bArr;
        this.c = 0;
        this.b = bArr.length;
    }

    public static at a(OutputStream outputStream) {
        return new at(outputStream, new byte[4096]);
    }

    private void b() {
        if (this.e == null) {
            throw new au();
        }
        this.e.write(this.a, 0, this.c);
        this.c = 0;
    }

    public final void a() {
        if (this.e != null) {
            b();
        }
    }

    public final void a(int i) {
        byte b = (byte) i;
        if (this.c == this.b) {
            b();
        }
        byte[] bArr = this.a;
        int i2 = this.c;
        this.c = i2 + 1;
        bArr[i2] = b;
        this.d++;
    }

    public final void a(int i, int i2) {
        b(av.a(i, i2));
    }

    public final void a(byte[] bArr, int i) {
        if (this.b - this.c >= i) {
            System.arraycopy(bArr, 0, this.a, this.c, i);
            this.c += i;
        } else {
            int i2 = this.b - this.c;
            System.arraycopy(bArr, 0, this.a, this.c, i2);
            int i3 = i2 + 0;
            i -= i2;
            this.c = this.b;
            this.d = i2 + this.d;
            b();
            if (i <= this.b) {
                System.arraycopy(bArr, i3, this.a, 0, i);
                this.c = i;
            } else {
                this.e.write(bArr, i3, i);
            }
        }
        this.d += i;
    }

    public final void b(int i) {
        while ((i & -128) != 0) {
            a((i & 127) | 128);
            i >>>= 7;
        }
        a(i);
    }
}