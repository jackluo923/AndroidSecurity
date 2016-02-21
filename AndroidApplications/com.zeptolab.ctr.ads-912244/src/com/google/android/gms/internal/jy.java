package com.google.android.gms.internal;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;

public final class jy {
    private int ZU;
    private int ZV;
    private int ZW;
    private int ZX;
    private int ZY;
    private int ZZ;
    private int aaa;
    private int aab;
    private int aac;
    private final byte[] buffer;

    private jy(byte[] bArr, int i, int i2) {
        this.ZZ = Integer.MAX_VALUE;
        this.aab = 64;
        this.aac = 67108864;
        this.buffer = bArr;
        this.ZU = i;
        this.ZV = i + i2;
        this.ZX = i;
    }

    public static jy a(byte[] bArr, int i, int i2) {
        return new jy(bArr, i, i2);
    }

    private void kI() {
        this.ZV += this.ZW;
        int i = this.ZV;
        if (i > this.ZZ) {
            this.ZW = i - this.ZZ;
            this.ZV -= this.ZW;
        } else {
            this.ZW = 0;
        }
    }

    public static jy n(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static long w(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public void a(ke keVar) {
        int kE = kE();
        if (this.aaa >= this.aab) {
            throw kd.kU();
        }
        kE = cw(kE);
        this.aaa++;
        keVar.b(this);
        cu(0);
        this.aaa--;
        cx(kE);
    }

    public void a(ke keVar, int i) {
        if (this.aaa >= this.aab) {
            throw kd.kU();
        }
        this.aaa++;
        keVar.b(this);
        cu(kh.i(i, GoogleScorer.CLIENT_APPSTATE));
        this.aaa--;
    }

    public void cA(int i) {
        if (i < 0) {
            throw kd.kP();
        } else if (this.ZX + i > this.ZZ) {
            cA(this.ZZ - this.ZX);
            throw kd.kO();
        } else if (i <= this.ZV - this.ZX) {
            this.ZX += i;
        } else {
            throw kd.kO();
        }
    }

    public void cu(int i) {
        if (this.ZY != i) {
            throw kd.kS();
        }
    }

    public boolean cv(int i) {
        switch (kh.cJ(i)) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                kB();
                return true;
            case GoogleScorer.CLIENT_GAMES:
                kH();
                return true;
            case GoogleScorer.CLIENT_PLUS:
                cA(kE());
                return true;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                kz();
                cu(kh.i(kh.cK(i), GoogleScorer.CLIENT_APPSTATE));
                return true;
            case GoogleScorer.CLIENT_APPSTATE:
                return false;
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                kG();
                return true;
            default:
                throw kd.kT();
        }
    }

    public int cw(int i) {
        if (i < 0) {
            throw kd.kP();
        }
        int i2 = this.ZX + i;
        int i3 = this.ZZ;
        if (i2 > i3) {
            throw kd.kO();
        }
        this.ZZ = i2;
        kI();
        return i3;
    }

    public void cx(int i) {
        this.ZZ = i;
        kI();
    }

    public void cy(int i) {
        if (i > this.ZX - this.ZU) {
            throw new IllegalArgumentException("Position " + i + " is beyond current " + (this.ZX - this.ZU));
        } else if (i < 0) {
            throw new IllegalArgumentException("Bad position " + i);
        } else {
            this.ZX = this.ZU + i;
        }
    }

    public byte[] cz(int i) {
        if (i < 0) {
            throw kd.kP();
        } else if (this.ZX + i > this.ZZ) {
            cA(this.ZZ - this.ZX);
            throw kd.kO();
        } else if (i <= this.ZV - this.ZX) {
            Object obj = new Object[i];
            System.arraycopy(this.buffer, this.ZX, obj, 0, i);
            this.ZX += i;
            return obj;
        } else {
            throw kd.kO();
        }
    }

    public byte[] e(int i, int i2) {
        if (i2 == 0) {
            return kh.aaq;
        }
        Object obj = new Object[i2];
        System.arraycopy(this.buffer, this.ZU + i, obj, 0, i2);
        return obj;
    }

    public int getPosition() {
        return this.ZX - this.ZU;
    }

    public long kA() {
        return kF();
    }

    public int kB() {
        return kE();
    }

    public boolean kC() {
        return kE() != 0;
    }

    public long kD() {
        return w(kF());
    }

    public int kE() {
        byte kL = kL();
        if (kL >= 0) {
            return kL;
        }
        int i = kL & 127;
        byte kL2 = kL();
        if (kL2 >= 0) {
            return i | (kL2 << 7);
        }
        i |= (kL2 & 127) << 7;
        kL2 = kL();
        if (kL2 >= 0) {
            return i | (kL2 << 14);
        }
        i |= (kL2 & 127) << 14;
        kL2 = kL();
        if (kL2 >= 0) {
            return i | (kL2 << 21);
        }
        i |= (kL2 & 127) << 21;
        kL2 = kL();
        i |= kL2 << 28;
        if (kL2 >= 0) {
            return i;
        }
        int i2 = 0;
        while (i2 < 5) {
            if (kL() >= 0) {
                return i;
            }
            i2++;
        }
        throw kd.kQ();
    }

    public long kF() {
        int i = 0;
        long j = 0;
        while (i < 64) {
            byte kL = kL();
            j |= ((long) (kL & 127)) << i;
            if ((kL & 128) == 0) {
                return j;
            }
            i += 7;
        }
        throw kd.kQ();
    }

    public int kG() {
        return (((kL() & 255) | ((kL() & 255) << 8)) | ((kL() & 255) << 16)) | ((kL() & 255) << 24);
    }

    public long kH() {
        byte kL = kL();
        byte kL2 = kL();
        return ((((((((((long) kL2) & 255) << 8) | (((long) kL) & 255)) | ((((long) kL()) & 255) << 16)) | ((((long) kL()) & 255) << 24)) | ((((long) kL()) & 255) << 32)) | ((((long) kL()) & 255) << 40)) | ((((long) kL()) & 255) << 48)) | ((((long) kL()) & 255) << 56);
    }

    public int kJ() {
        if (this.ZZ == Integer.MAX_VALUE) {
            return -1;
        }
        return this.ZZ - this.ZX;
    }

    public boolean kK() {
        return this.ZX == this.ZV;
    }

    public byte kL() {
        if (this.ZX == this.ZV) {
            throw kd.kO();
        }
        byte[] bArr = this.buffer;
        int i = this.ZX;
        this.ZX = i + 1;
        return bArr[i];
    }

    public int ky() {
        if (kK()) {
            this.ZY = 0;
            return 0;
        } else {
            this.ZY = kE();
            if (this.ZY != 0) {
                return this.ZY;
            }
            throw kd.kR();
        }
    }

    public void kz() {
        int ky;
        do {
            ky = ky();
            if (ky == 0) {
                return;
            }
        } while (cv(ky));
    }

    public float readFloat() {
        return Float.intBitsToFloat(kG());
    }

    public String readString() {
        int kE = kE();
        if (kE > this.ZV - this.ZX || kE <= 0) {
            return new String(cz(kE), HTMLEncoder.ENCODE_NAME_DEFAULT);
        }
        String str = new String(this.buffer, this.ZX, kE, HTMLEncoder.ENCODE_NAME_DEFAULT);
        this.ZX = kE + this.ZX;
        return str;
    }
}