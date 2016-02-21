package com.andymstone.a;

import android.content.Context;
import javax.microedition.khronos.opengles.GL10;

class b implements j {
    private d a;
    private g b;
    private f c;

    b(GL10 gl10, Context context, int i, float f) {
        float[] fArr = new float[]{0.0f, 0.06f, -f, 0.01875f, 0.0f, -f, -0.01875f, 0.0f, -f};
        float[] fArr2 = new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.5f, 1.0f};
        byte[] bArr = new byte[3];
        bArr[0] = (byte) 2;
        bArr[1] = (byte) 1;
        this.b = new g(fArr, 3);
        this.c = new f(gl10, context, i, fArr2);
        this.a = new d(bArr, 4);
    }

    public void a(GL10 gl10) {
        this.b.a(gl10);
        this.c.a(gl10);
        gl10.glColor4f(1.0f, 0.0f, 0.0f, 1.0f);
        this.a.a(gl10);
        this.b.b(gl10);
        this.c.b(gl10);
        gl10.glDisable(3042);
    }
}