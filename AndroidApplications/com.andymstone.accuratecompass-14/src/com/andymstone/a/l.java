package com.andymstone.a;

import android.content.Context;
import javax.microedition.khronos.opengles.GL10;

public class l {
    public static j a(GL10 gl10, Context context, int i, float f) {
        return new b(gl10, context, i, f);
    }

    public static j a(GL10 gl10, Context context, int i, float f, float f2) {
        return new m(gl10, context, i, f, f2);
    }

    public static j a(GL10 gl10, Context context, int i, float f, float f2, double[] dArr, boolean z, k kVar, float[] fArr) {
        return new a(gl10, context, i, f, f2, dArr, z, kVar, fArr);
    }
}