package com.google.android.gms.internal;

import java.io.IOException;

public abstract class ke {
    protected int DY;

    public ke() {
        this.DY = -1;
    }

    public static final ke a(ke keVar, byte[] bArr) {
        return b(keVar, bArr, 0, bArr.length);
    }

    public static final void a(ke keVar, byte[] bArr, int i, int i2) {
        try {
            jz b = jz.b(bArr, i, i2);
            keVar.a(b);
            b.kN();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public static final ke b(ke keVar, byte[] bArr, int i, int i2) {
        try {
            jy a = jy.a(bArr, i, i2);
            keVar.b(a);
            a.cu(0);
            return keVar;
        } catch (kd e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public static final byte[] d(ke keVar) {
        byte[] bArr = new byte[keVar.c()];
        a(keVar, bArr, 0, bArr.length);
        return bArr;
    }

    public void a(jz jzVar) {
    }

    public abstract ke b(jy jyVar);

    public int c() {
        this.DY = 0;
        return 0;
    }

    public int eW() {
        if (this.DY < 0) {
            c();
        }
        return this.DY;
    }

    public String toString() {
        return kf.e(this);
    }
}