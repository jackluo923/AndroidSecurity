package com.google.ads;

public final class ao {
    private final byte[] a;
    private int b;
    private int c;

    public ao(byte[] bArr) {
        this.a = new byte[256];
        int i = 0;
        while (i < 256) {
            this.a[i] = (byte) i;
            i++;
        }
        i = 0;
        int i2 = 0;
        while (i2 < 256) {
            i = ((i + this.a[i2]) + bArr[i2 % bArr.length]) & 255;
            byte b = this.a[i2];
            this.a[i2] = this.a[i];
            this.a[i] = b;
            i2++;
        }
        this.b = 0;
        this.c = 0;
    }

    public final void a(byte[] bArr) {
        int i = this.b;
        int i2 = this.c;
        int i3 = 0;
        while (i3 < bArr.length) {
            i = (i + 1) & 255;
            i2 = (i2 + this.a[i]) & 255;
            byte b = this.a[i];
            this.a[i] = this.a[i2];
            this.a[i2] = b;
            bArr[i3] = (byte) (bArr[i3] ^ this.a[(this.a[i] + this.a[i2]) & 255]);
            i3++;
        }
        this.b = i;
        this.c = i2;
    }
}