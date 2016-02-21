package com.andymstone.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.opengl.GLUtils;
import javax.microedition.khronos.opengles.GL10;

public class h {
    int a;

    public h(GL10 gl10, Context context, int i) {
        int i2 = 1;
        b(gl10);
        Options options = new Options();
        options.inPreferredConfig = Config.ARGB_8888;
        options.inScaled = false;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(context.getResources(), i, options);
        options.inJustDecodeBounds = false;
        Bitmap bitmap = null;
        while (bitmap == null && i2 <= 8) {
            options.inSampleSize = i2;
            try {
                bitmap = BitmapFactory.decodeResource(context.getResources(), i, options);
            } catch (OutOfMemoryError e) {
            }
            i2 *= 2;
        }
        if (bitmap == null) {
            throw new i(this);
        }
        GLUtils.texImage2D(3553, 0, bitmap, 0);
        bitmap.recycle();
    }

    private void b(GL10 gl10) {
        int[] iArr = new int[1];
        gl10.glGenTextures(1, iArr, 0);
        this.a = iArr[0];
        a(gl10);
        gl10.glTexParameterf(3553, 10241, 9728.0f);
        gl10.glTexParameterf(3553, 10240, 9729.0f);
        gl10.glTexParameterf(3553, 10242, 10497.0f);
        gl10.glTexParameterf(3553, 10243, 10497.0f);
    }

    public void a(GL10 gl10) {
        gl10.glBindTexture(3553, this.a);
    }
}