package com.chartboost.sdk.impl;

import java.io.OutputStream;

public class at extends au {
    private int a;
    private int b;
    private byte[] c;

    public at() {
        this.c = new byte[512];
    }

    public int a() {
        return this.a;
    }

    public int a(OutputStream outputStream) {
        outputStream.write(this.c, 0, this.b);
        return this.b;
    }

    public void a(int i) {
        this.a = i;
    }

    public int b() {
        return this.b;
    }

    void b(int i) {
        int i2 = this.a + i;
        if (i2 >= this.c.length) {
            int length = this.c.length * 2;
            if (length <= i2) {
                length = i2 + 128;
            }
            Object obj = new Object[length];
            System.arraycopy(this.c, 0, obj, 0, this.b);
            this.c = obj;
        }
    }

    public void write(int i) {
        b(1);
        byte[] bArr = this.c;
        int i2 = this.a;
        this.a = i2 + 1;
        bArr[i2] = (byte) (i & 255);
        this.b = Math.max(this.a, this.b);
    }

    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public void write(byte[] bArr, int i, int i2) {
        b(i2);
        System.arraycopy(bArr, i, this.c, this.a, i2);
        this.a += i2;
        this.b = Math.max(this.a, this.b);
    }
}