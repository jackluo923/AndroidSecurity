package com.andymstone.a;

import android.content.Context;
import android.util.FloatMath;
import java.lang.reflect.Array;
import java.nio.FloatBuffer;
import javax.microedition.khronos.opengles.GL10;

class a implements j {
    static final float[] c;
    static final float[] d;
    static final float[] e;
    e[] a;
    final float[] b;
    private FloatBuffer h;
    private f i;
    private g j;
    private k k;

    static {
        c = new float[]{0.4f, 0.4f, 0.4f, 1.0f};
        d = new float[]{1.0f, 1.0f, 1.0f, 1.0f};
        e = new float[]{1.0f, 1.0f, 1.0f, 1.0f};
    }

    a(GL10 gl10, Context context, int i, float f, float f2, double[] dArr, boolean z, k kVar, float[] fArr) {
        int i2;
        this.b = fArr;
        this.k = kVar;
        int length = dArr.length / 2;
        int i3 = length * 80 + 1;
        float[] fArr2 = new float[(i3 * 3)];
        float[] fArr3 = new float[(i3 * 3)];
        float[] fArr4 = new float[(i3 * 2)];
        float f3 = (float) dArr[length * 2 - 2];
        int i4 = 0;
        while (i4 < 80) {
            double d = ((double) i4) * 0.07853981633974483d;
            float sin = (float) (Math.sin(d) * ((double) f));
            float f4 = (float) (Math.cos(d) * ((double) f));
            i2 = 0;
            while (i2 < length) {
                int i5 = i4 * 3 + (i2 * 80) * 3;
                float f5 = (float) dArr[i2 * 2];
                float f6 = (float) dArr[i2 * 2 + 1];
                fArr2[i5 + 0] = (((0.045f * f5) + f) * sin) / f;
                fArr2[i5 + 1] = (((0.045f * f5) + f) * f4) / f;
                fArr2[i5 + 2] = f6 * 0.045f - f2;
                fArr4[i4 * 2 + (i2 * 80) * 2] = (f5 / f3) / 2.0f;
                fArr4[i4 * 2 + (i2 * 80) * 2 + 1] = (float) (d / 6.283185307179586d);
                i2++;
            }
            float sqrt = FloatMath.sqrt(sin * sin + f4 * f4);
            i2 = i4 * 3;
            fArr3[i2 + 0] = (-sin) / sqrt;
            fArr3[i2 + 1] = (-f4) / sqrt;
            fArr3[i2 + 2] = 1.0f;
            i2 = i4 * 3 + ((length - 1) * 80) * 3;
            fArr3[i2 + 0] = sin / sqrt;
            fArr3[i2 + 1] = f4 / sqrt;
            fArr3[i2 + 2] = 0.0f;
            i2 = 1;
            while (i2 < length - 1) {
                float f7 = (float) (dArr[(i2 + 1) * 2] - dArr[(i2 - 1) * 2]);
                float f8 = (float) (dArr[(i2 + 1) * 2 + 1] - dArr[(i2 - 1) * 2 + 1]);
                f5 = FloatMath.sqrt(f7 * f7 + f8 * f8);
                int i6 = i4 * 3 + (i2 * 80) * 3;
                fArr3[i6 + 0] = ((sin / sqrt) * (-f8)) / f5;
                fArr3[i6 + 1] = ((-f8) * (f4 / sqrt)) / f5;
                fArr3[i6 + 2] = f7 / f5;
                i2++;
            }
            i4++;
        }
        i2 = fArr2.length - 3;
        fArr2[i2 + 0] = 0.0f;
        fArr2[i2 + 1] = 0.0f;
        fArr2[i2 + 2] = ((float) dArr[dArr.length - 1]) * 0.045f - f2;
        fArr3[i2 + 0] = 0.0f;
        fArr3[i2 + 1] = 0.0f;
        fArr3[i2 + 2] = -1.0f;
        this.j = new g(fArr2, 3);
        this.h = c.a(fArr3);
        this.i = new f(gl10, context, i, fArr4);
        short[][] sArr = (short[][]) Array.newInstance(Short.TYPE, new int[]{length - 1, 162});
        if (z) {
            this.a = new e[length];
        } else {
            this.a = new e[(length - 1)];
        }
        int i7 = 0;
        while (i7 < length - 1) {
            i4 = 0;
            while (i4 < 80) {
                sArr[i7][i4 * 2] = (short) ((i7 + 1) * 80 + i4);
                sArr[i7][i4 * 2 + 1] = (short) (i7 * 80 + i4);
                i4++;
            }
            sArr[i7][160] = (short) ((i7 + 1) * 80);
            sArr[i7][161] = (short) (i7 * 80);
            this.a[i7] = new e(sArr[i7], 5);
            i7++;
        }
        if (z) {
            short[] sArr2 = new short[82];
            sArr2[0] = (short) (i3 - 1);
            i2 = 0;
            while (i2 < 80) {
                sArr2[i2 + 1] = (short) ((length - 1) * 80 + i2);
                i2++;
            }
            sArr2[sArr2.length - 1] = (short) ((length - 1) * 80);
            this.a[this.a.length - 1] = new e(sArr2, 6);
        }
    }

    public void a_(GL10 gl10) {
        int i = 0;
        gl10.glEnable(3042);
        gl10.glBlendFunc(770, 771);
        gl10.glEnable(2896);
        gl10.glEnable(16384);
        gl10.glEnable(2903);
        this.i.a(gl10);
        gl10.glMaterialfv(1032, 4610, this.k.b, 0);
        gl10.glMaterialfv(1032, 5633, this.k.c, 0);
        gl10.glPushMatrix();
        gl10.glLoadIdentity();
        gl10.glLightfv(16384, 4611, this.b, 0);
        gl10.glPopMatrix();
        gl10.glLightfv(16384, 4608, c, 0);
        gl10.glLightfv(16384, 4609, d, 0);
        gl10.glLightfv(16384, 4610, e, 0);
        this.j.a(gl10);
        gl10.glEnableClientState(32885);
        gl10.glNormalPointer(5126, 0, this.h);
        gl10.glColor4f(this.k.a[0], this.k.a[1], this.k.a[2], 1.0f);
        gl10.glShadeModel(7425);
        while (i < this.a.length) {
            this.a[i].a(gl10);
            i++;
        }
        this.j.b(gl10);
        this.i.b(gl10);
        gl10.glDisable(3042);
        gl10.glDisable(2896);
        gl10.glShadeModel(7424);
        gl10.glDisableClientState(32885);
    }
}