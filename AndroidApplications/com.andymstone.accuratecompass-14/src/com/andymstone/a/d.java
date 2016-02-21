package com.andymstone.a;

import java.nio.ByteBuffer;
import javax.microedition.khronos.opengles.GL10;

public class d {
    private ByteBuffer a;
    private int b;
    private int c;

    public d(byte[] bArr, int i) {
        this.c = i;
        this.a = c.a(bArr);
        this.b = bArr.length;
    }

    public void a(GL10 gl10) {
        gl10.glDrawElements(this.c, this.b, 5121, this.a);
    }
}