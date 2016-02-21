package com.andymstone.accuratecompass;

import android.content.Context;
import android.opengl.GLSurfaceView.Renderer;
import android.opengl.GLU;
import com.andymstone.a.i;
import com.andymstone.a.j;
import com.andymstone.a.l;
import com.andymstone.compasslib.aa;
import com.andymstone.compasslib.f;
import java.lang.ref.WeakReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

class g implements Renderer, f {
    static final double[] a;
    final float b;
    final float c;
    final float d;
    private j e;
    private j f;
    private j g;
    private WeakReference h;
    private int i;
    private int j;
    private float k;
    private float[] l;
    private int m;

    static {
        a = new double[]{0.0d, 0.0d, 0.0d, 0.05d, 0.0d, 0.099d, 0.0d, 0.1d, 0.006666667d, 0.141013495d, 0.013333333d, 0.157569207d, 0.02d, 0.169973712d, 0.026666667d, 0.180177473d, 0.033333333d, 0.188941182d, 0.04d, 0.196657336d, 0.046666667d, 0.201657336d, 0.053333333d, 0.206657336d, 0.06d, 0.211657336d, 0.066666667d, 0.216657336d, 0.08d, 0.226657336d, 0.6d, 0.616657336d, 1.12d, 1.006657336d, 1.133333333d, 1.016657336d, 1.153333333d, 1.028682909d, 1.173333333d, 1.036307401d, 1.193333333d, 1.040706929d, 1.213333333d, 1.042367398d, 1.233333333d, 1.041445926d, 1.253333333d, 1.037856904d, 1.273333333d, 1.031226781d, 1.293333333d, 1.020646992d, 1.313333333d, 1.003627634d, 1.333333333d, 0.954525302d, 1.333333333d, 0.944525302d, 1.333333333d, -0.5d};
    }

    g(Context context, int i, int i2) {
        this.b = 35.0f;
        this.c = 0.4f;
        this.d = 1.6f;
        this.h = new WeakReference(context);
        this.j = i;
        this.i = i2;
    }

    private void a(GL10 gl10) {
        gl10.glTranslatef(0.0f, 0.3f, 0.0f);
        gl10.glTranslatef(0.0f, 0.0f, 1.6f);
        gl10.glDisable(2929);
        if (this.f != null) {
            this.f.a(gl10);
        }
        gl10.glEnable(2929);
    }

    private void a(GL10 gl10, float f, float f2) {
        gl10.glMatrixMode(5889);
        gl10.glLoadIdentity();
        GLU.gluPerspective(gl10, f2, f / f2, 0.05f, 10.0f);
        gl10.glMatrixMode(5888);
    }

    private void b(GL10 gl10) {
        gl10.glTranslatef(0.0f, 0.0f, 1.6f);
        if (this.e != null) {
            this.e.a(gl10);
        }
        if (this.g != null) {
            this.g.a(gl10);
        }
    }

    void a() {
        this.l = null;
    }

    public void a(aa aaVar) {
    }

    public void a(float[] fArr, float f, float f2, float f3, int i) {
        this.k = f;
        this.m = i;
        this.l = fArr;
    }

    void b() {
        this.e = null;
        this.g = null;
        this.f = null;
    }

    public void onDrawFrame(GL10 gl10) {
        gl10.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        gl10.glClear(16640);
        if (this.l != null) {
            gl10.glMatrixMode(5888);
            gl10.glLoadIdentity();
            gl10.glTranslatef(0.0f, 0.0f, -1.6f);
            if (this.m == 0) {
                gl10.glPushMatrix();
                gl10.glRotatef(this.k, 0.0f, 0.0f, 1.0f);
                b(gl10);
                gl10.glPopMatrix();
                a(gl10);
            } else {
                gl10.glMultMatrixf(this.l, 0);
                gl10.glPushMatrix();
                b(gl10);
                gl10.glPopMatrix();
                gl10.glRotatef(-this.k, 0.0f, 0.0f, 1.0f);
                a(gl10);
            }
        }
    }

    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        float f = 35.0f;
        gl10.glViewport(0, 0, i, i2);
        float f2 = ((float) i) / ((float) i2);
        if (i2 > i) {
            f2 = 35.0f / f2;
        } else {
            f = f2 * 35.0f;
            f2 = 35.0f;
        }
        a(gl10, f, f2);
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        gl10.glDisable(3024);
        gl10.glEnable(2884);
        gl10.glShadeModel(7425);
        gl10.glEnable(2929);
        Context context = (Context) this.h.get();
        if (context == null) {
            this.e = null;
            this.g = null;
            this.f = null;
        } else {
            try {
                this.e = l.a(gl10, context, this.j, 0.4f, 1.6f);
                this.g = l.a(gl10, context, this.i, 0.4f, 1.6f, a, true, j.f, new float[]{0.0f, -2.0f, 1.5f, 0.0f});
                this.f = l.a(gl10, null, -1, 1.6f);
            } catch (i e) {
                this.e = null;
                this.g = null;
                this.f = null;
            }
        }
    }
}