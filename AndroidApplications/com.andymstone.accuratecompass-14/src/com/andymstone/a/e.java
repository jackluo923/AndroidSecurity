package com.andymstone.a;

import java.nio.ShortBuffer;
import javax.microedition.khronos.opengles.GL10;

public class e {
    private ShortBuffer a;
    private int b;
    private int c;

    public e(short[] sArr, int i) {
        this.c = i;
        this.a = c.a(sArr);
        this.b = sArr.length;
    }

    public void a(GL10 gl10) {
        gl10.glDrawElements(this.c, this.b, 5123, this.a);
    }
}