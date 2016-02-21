package com.andymstone.a;

import android.content.Context;
import javax.microedition.khronos.opengles.GL10;

class m implements j {
    private d a;
    private g b;
    private f c;

    m(GL10 gl10, Context context, int i, float f, float f2) {
        float[] fArr = new float[303];
        float[] fArr2 = new float[202];
        byte[] bArr = new byte[102];
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = -f2;
        fArr2[0] = 0.5f;
        fArr2[1] = 0.5f;
        bArr[0] = (byte) 0;
        int i2 = 0;
        while (i2 < 100) {
            double d = ((double) i2) * 0.06283185307179587d;
            int i3 = (i2 + 1) * 3;
            float cos = (float) (Math.cos(d) * ((double) f));
            float sin = (float) (Math.sin(d) * ((double) f));
            fArr[i3 + 0] = cos;
            fArr[i3 + 1] = sin;
            fArr[i3 + 2] = -f2;
            sin = 1.0f - (sin + f) / (2.0f * f);
            fArr2[(i2 + 1) * 2 + 0] = (cos + f) / (2.0f * f);
            fArr2[(i2 + 1) * 2 + 1] = sin;
            bArr[i2 + 1] = (byte) (i2 + 1);
            i2++;
        }
        bArr[101] = (byte) 1;
        this.b = new g(fArr, 3);
        this.c = new f(gl10, context, i, fArr2);
        this.a = new d(bArr, 6);
    }

    public void a(GL10 gl10) {
        this.b.a(gl10);
        this.c.a(gl10);
        gl10.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        this.a.a(gl10);
        this.b.b(gl10);
        this.c.b(gl10);
        gl10.glDisable(3042);
    }
}