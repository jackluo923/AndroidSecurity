package com.google.android.gms.internal;

public class jx {
    private final byte[] ZR;
    private int ZS;
    private int ZT;

    public jx(byte[] bArr) {
        this.ZR = new byte[256];
        int i = 0;
        while (i < 256) {
            this.ZR[i] = (byte) i;
            i++;
        }
        i = 0;
        int i2 = 0;
        while (i2 < 256) {
            i = ((i + this.ZR[i2]) + bArr[i2 % bArr.length]) & 255;
            byte b = this.ZR[i2];
            this.ZR[i2] = this.ZR[i];
            this.ZR[i] = b;
            i2++;
        }
        this.ZS = 0;
        this.ZT = 0;
    }

    public void m(byte[] bArr) {
        int i = this.ZS;
        int i2 = this.ZT;
        int i3 = 0;
        while (i3 < bArr.length) {
            i = (i + 1) & 255;
            i2 = (i2 + this.ZR[i]) & 255;
            byte b = this.ZR[i];
            this.ZR[i] = this.ZR[i2];
            this.ZR[i2] = b;
            bArr[i3] = (byte) (bArr[i3] ^ this.ZR[(this.ZR[i] + this.ZR[i2]) & 255]);
            i3++;
        }
        this.ZS = i;
        this.ZT = i2;
    }
}