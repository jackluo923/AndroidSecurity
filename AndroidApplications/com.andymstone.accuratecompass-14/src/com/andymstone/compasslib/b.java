package com.andymstone.compasslib;

import android.app.Activity;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.Display;
import android.view.WindowManager;
import com.andymstone.core.o;
import java.util.ArrayList;
import java.util.List;

public class b {
    Display a;
    private final int b;
    private final float[] c;
    private final float[] d;
    private final float[] e;
    private float f;
    private float g;
    private float h;
    private SensorManager i;
    private SensorEventListener j;
    private List k;
    private y l;
    private w m;
    private boolean n;

    public b(Activity activity, int i) {
        this(activity, i, true);
    }

    public b(Activity activity, int i, boolean z) {
        this((SensorManager) activity.getSystemService("sensor"), activity.getWindowManager(), i, z);
    }

    public b(SensorManager sensorManager, WindowManager windowManager, int i, boolean z) {
        this.m = new n();
        this.i = sensorManager;
        this.n = z;
        this.b = i;
        this.c = new float[16];
        this.d = new float[16];
        this.e = new float[16];
        this.a = windowManager.getDefaultDisplay();
        this.k = new ArrayList();
        this.l = new y();
    }

    private void a(Sensor sensor, int i) {
        if (sensor.getType() == 1) {
            this.l.a(i);
            g();
        } else if (sensor.getType() == 2) {
            this.l.b(i);
            g();
        }
    }

    private void a(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 1) {
            this.m.a(sensorEvent.values);
            this.l.a(sensorEvent.values);
            g();
        }
        if (sensorEvent.sensor.getType() == 2) {
            this.m.b(sensorEvent.values);
            this.l.b(sensorEvent.values);
            g();
        }
        if (this.m.a()) {
            a(this.a, this.m.b(), this.m.c());
            f();
        }
    }

    private void a(Display display, float[] fArr, float[] fArr2) {
        if (SensorManager.getRotationMatrix(this.c, this.e, fArr, fArr2)) {
            float atan2;
            switch (display.getOrientation()) {
                case v.DropShadowView_cornerRadius:
                    int i = 0;
                    while (i < 16) {
                        this.d[i] = this.c[i];
                        i++;
                    }
                    break;
                case o.MyAlertDialog_myAlertDialogAccentColor:
                    SensorManager.remapCoordinateSystem(this.c, o.MyAlertDialog_myAlertDialogButtonDrawable, 129, this.d);
                    break;
                case o.MyAlertDialog_myAlertDialogButtonDrawable:
                    SensorManager.remapCoordinateSystem(this.c, 129, 130, this.d);
                    break;
                case o.MyAlertDialog_MAD_titleStyle:
                    SensorManager.remapCoordinateSystem(this.c, 130, 1, this.d);
                    break;
            }
            if (h()) {
                atan2 = (float) (90.0d - (Math.atan2((double) this.d[5], (double) this.d[1]) * 180.0d) / 3.141592653589793d);
                if (atan2 < 0.0f) {
                    atan2 += 360.0f;
                }
            } else {
                atan2 = (float) (90.0d - (Math.atan2((double) (-this.d[6]), (double) (-this.d[2])) * 180.0d) / 3.141592653589793d);
                if (atan2 < 0.0f) {
                    atan2 += 360.0f;
                }
            }
            this.f = atan2;
            this.g = (float) ((Math.asin((double) this.d[9]) * 180.0d) / 3.141592653589793d);
            this.h = (float) ((Math.atan2((double) (-this.d[8]), (double) this.d[10]) * 180.0d) / 3.141592653589793d);
        }
    }

    private void b_(e eVar) {
        this.j = new d(this);
        new Thread(new c(this, eVar)).start();
    }

    private void f() {
        int i = h() ? 0 : 1;
        int i2 = 0;
        while (i2 < this.k.size()) {
            ((f) this.k.get(i2)).a(this.d, this.f, this.g, this.h, i);
            i2++;
        }
    }

    private void g() {
        int i = 0;
        while (i < this.k.size()) {
            ((f) this.k.get(i)).a(this.l.a());
            i++;
        }
    }

    private boolean h() {
        return Math.abs(this.g) < ((float) this.b) && Math.abs(this.h) < ((float) this.b);
    }

    public void a() {
        this.k = new ArrayList();
    }

    public void a(e eVar) {
        b(eVar);
    }

    public void a(f fVar) {
        if (fVar != null) {
            this.k.add(fVar);
        }
    }

    public void b_() {
        this.i.unregisterListener(this.j);
        this.j = null;
    }

    public void c() {
        this.m = new n();
    }

    public void d() {
        this.m = new m(new o(), new o());
    }

    public void e() {
        this.m = new af();
    }
}