package com.andymstone.accuratecompass;

import android.app.Activity;
import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.andymstone.compasslib.f;
import com.andymstone.core.o;
import java.lang.ref.WeakReference;

public class CompassView extends RelativeLayout {
    WeakReference a;
    g b;

    public CompassView(Context context) {
        super(context);
        a(context);
    }

    public CompassView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public CompassView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    public void a() {
        this.b.a();
        GLSurfaceView gLSurfaceView = (GLSurfaceView) this.a.get();
        if (gLSurfaceView != null) {
            gLSurfaceView.onResume();
        }
    }

    public void a(Activity activity) {
        GLSurfaceView gLSurfaceView = (GLSurfaceView) this.a.get();
        if (gLSurfaceView != null) {
            this.b = new g(activity, getResources().getBoolean(l.use_small_compass_texture) ? n.compass_image_256 : n.compass_image_512, n.brass1);
            gLSurfaceView.setRenderer(this.b);
        }
    }

    void a(Context context) {
        View gLSurfaceView = new GLSurfaceView(context);
        addView(gLSurfaceView);
        gLSurfaceView.setEGLConfigChooser(o.MyAlertDialog_MAD_messagePadding, 8, 8, 8, 16, 0);
        gLSurfaceView.getHolder().setFormat(-3);
        gLSurfaceView.setZOrderMediaOverlay(true);
        this.a = new WeakReference(gLSurfaceView);
    }

    public void b() {
        GLSurfaceView gLSurfaceView = (GLSurfaceView) this.a.get();
        if (gLSurfaceView != null) {
            gLSurfaceView.onPause();
        }
    }

    public void c() {
        this.b.b();
        this.b = null;
        removeAllViews();
    }

    public f getCompassListener() {
        return this.b;
    }
}