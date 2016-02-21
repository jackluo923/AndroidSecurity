package com.google.android.gms.internal;

import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

public final class jz {
    private final int aad;
    private final byte[] buffer;
    private int position;

    public static class a extends IOException {
        a(int i, int i2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + i + " limit " + i2 + ").");
        }
    }

    private jz(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.position = i;
        this.aad = i + i2;
    }

    public static int A(long j) {
        return C(D(j));
    }

    public static int B(boolean z) {
        return 1;
    }

    public static int C(long j) {
        if ((-128 & j) == 0) {
            return 1;
        }
        if ((-16384 & j) == 0) {
            return GoogleScorer.CLIENT_PLUS;
        }
        if ((-2097152 & j) == 0) {
            return IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE;
        }
        if ((-268435456 & j) == 0) {
            return GoogleScorer.CLIENT_APPSTATE;
        }
        if ((-34359738368L & j) == 0) {
            return IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
        }
        if ((-4398046511104L & j) == 0) {
            return IabHelper.BILLING_RESPONSE_RESULT_ERROR;
        }
        if ((-562949953421312L & j) == 0) {
            return GoogleScorer.CLIENT_ALL;
        }
        if ((-72057594037927936L & j) == 0) {
            return IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED;
        }
        return (Long.MIN_VALUE & j) == 0 ? ZBuildConfig.$minsdk : R.styleable.MapAttrs_uiZoomControls;
    }

    public static long D(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public static int b(int i, float f) {
        return cE(i) + e(f);
    }

    public static int b(int i, ke keVar) {
        return cE(i) + c(keVar);
    }

    public static int b(int i, boolean z) {
        return cE(i) + B(z);
    }

    public static jz b(byte[] bArr, int i, int i2) {
        return new jz(bArr, i, i2);
    }

    public static int bQ(String str) {
        try {
            byte[] bytes = str.getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT);
            return bytes.length + cG(bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported.");
        }
    }

    public static int c(ke keVar) {
        int c = keVar.c();
        return c + cG(c);
    }

    public static int cC(int i) {
        return i >= 0 ? cG(i) : R.styleable.MapAttrs_uiZoomControls;
    }

    public static int cE(int i) {
        return cG(kh.i(i, 0));
    }

    public static int cG(int i) {
        if ((i & -128) == 0) {
            return 1;
        }
        if ((i & -16384) == 0) {
            return GoogleScorer.CLIENT_PLUS;
        }
        if ((-2097152 & i) == 0) {
            return IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE;
        }
        return (-268435456 & i) == 0 ? GoogleScorer.CLIENT_APPSTATE : IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
    }

    public static int d(int i, long j) {
        return cE(i) + z(j);
    }

    public static int e(float f) {
        return GoogleScorer.CLIENT_APPSTATE;
    }

    public static int e(int i, long j) {
        return cE(i) + A(j);
    }

    public static int g(int i, int i2) {
        return cE(i) + cC(i2);
    }

    public static int g(int i, String str) {
        return cE(i) + bQ(str);
    }

    public static jz o(byte[] bArr) {
        return b(bArr, 0, bArr.length);
    }

    public static int z(long j) {
        return C(j);
    }

    public void A(boolean z) {
        cD(z ? 1 : 0);
    }

    public void B(long j) {
        while ((-128 & j) != 0) {
            cD((((int) j) & 127) | 128);
            j >>>= 7;
        }
        cD((int) j);
    }

    public void a(int i, float f) {
        h(i, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
        d(f);
    }

    public void a(int i, ke keVar) {
        h(i, GoogleScorer.CLIENT_PLUS);
        b(keVar);
    }

    public void a(int i, boolean z) {
        h(i, 0);
        A(z);
    }

    public void b(byte b) {
        if (this.position == this.aad) {
            throw new a(this.position, this.aad);
        }
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 1;
        bArr[i] = b;
    }

    public void b(int i, long j) {
        h(i, 0);
        x(j);
    }

    public void b(int i, String str) {
        h(i, GoogleScorer.CLIENT_PLUS);
        bP(str);
    }

    public void b(ke keVar) {
        cF(keVar.eW());
        keVar.a(this);
    }

    public void bP(String str) {
        byte[] bytes = str.getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT);
        cF(bytes.length);
        p(bytes);
    }

    public void c(int i, long j) {
        h(i, 0);
        y(j);
    }

    public void c(byte[] bArr, int i, int i2) {
        if (this.aad - this.position >= i2) {
            System.arraycopy(bArr, i, this.buffer, this.position, i2);
            this.position += i2;
        } else {
            throw new a(this.position, this.aad);
        }
    }

    public void cB(int i) {
        if (i >= 0) {
            cF(i);
        } else {
            B((long) i);
        }
    }

    public void cD(int i) {
        b((byte) i);
    }

    public void cF(int i) {
        while ((i & -128) != 0) {
            cD((i & 127) | 128);
            i >>>= 7;
        }
        cD(i);
    }

    public void cH(int i) {
        cD(i & 255);
        cD((i >> 8) & 255);
        cD((i >> 16) & 255);
        cD((i >> 24) & 255);
    }

    public void d(float f) {
        cH(Float.floatToIntBits(f));
    }

    public void f(int i, int i2) {
        h(i, 0);
        cB(i2);
    }

    public void h(int i, int i2) {
        cF(kh.i(i, i2));
    }

    public int kM() {
        return this.aad - this.position;
    }

    public void kN() {
        if (kM() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public void p(byte[] bArr) {
        c(bArr, 0, bArr.length);
    }

    public void x(long j) {
        B(j);
    }

    public void y(long j) {
        B(D(j));
    }
}