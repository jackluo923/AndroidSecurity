package com.andymstone.a;

import android.content.Context;
import com.andymstone.core.o;
import java.nio.FloatBuffer;
import javax.microedition.khronos.opengles.GL10;

public class f {
    private FloatBuffer a;
    private h b;

    public f(GL10 gl10, Context context, int i, float[] fArr) {
        if (context != null) {
            this.b = new h(gl10, context, i);
            this.a = c.a(fArr);
        }
    }

    public void a(GL10 gl10) {
        if (this.b != null) {
            this.b.a(gl10);
            gl10.glEnable(3553);
            gl10.glEnableClientState(32888);
            gl10.glTexCoordPointer(o.MyAlertDialog_myAlertDialogButtonDrawable, 5126, 0, this.a);
        }
    }

    public void b(GL10 gl10) {
        gl10.glDisable(3553);
        gl10.glDisableClientState(32888);
    }
}