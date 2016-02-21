package com.andymstone.a;

import java.nio.FloatBuffer;
import javax.microedition.khronos.opengles.GL10;

public class g {
    protected FloatBuffer a;
    protected int b;

    public g(float[] fArr, int i) {
        this.a = c.a(fArr);
        this.b = i;
    }

    public void a(GL10 gl10) {
        gl10.glEnableClientState(32884);
        gl10.glVertexPointer(this.b, 5126, 0, this.a);
    }

    public void b(GL10 gl10) {
        gl10.glDisableClientState(32884);
    }
}