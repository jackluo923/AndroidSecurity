package com.andymstone.compasslib;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.support.v4.app.z;
import com.andymstone.core.h;
import com.andymstone.core.o;

public class CalibrationActivity extends h implements SensorEventListener, ae {
    private int n;
    private int o;
    private int p;
    private SensorManager q;
    private ac r;
    private a s;
    private String t;
    private String u;
    private String v;

    public CalibrationActivity() {
        this.n = -1;
        this.o = -1;
        this.p = -1;
    }

    private void g() {
        if (this.q != null) {
            this.q.registerListener(this, this.q.getDefaultSensor(1), o.MyAlertDialog_myAlertDialogButtonDrawable);
            this.q.registerListener(this, this.q.getDefaultSensor(o.MyAlertDialog_myAlertDialogButtonDrawable), o.MyAlertDialog_myAlertDialogButtonDrawable);
        }
    }

    private void h() {
        if (this.q != null) {
            this.q.unregisterListener(this);
        }
    }

    private void i() {
        int min = Math.min(this.n, this.o);
        if (min >= 0) {
            if (!x.b(this.p)) {
                this.r.a(this.t);
            } else if (min == 3 || min == 2) {
                this.r.a(this.u);
            } else {
                this.r.a(this.v);
            }
        }
    }

    public void f() {
        z a = e().a();
        a.b(s.calibration_activity_content, this.s, "calibration_instructions_fragment");
        a.a(null);
        a.a();
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
        if (sensor.getType() == 1) {
            this.n = i;
            this.r.b(this.n);
        } else if (sensor.getType() == 2) {
            this.o = i;
            this.r.c(this.o);
            this.s.b(this.o);
        }
        i();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.t = getString(u.bad_magnetic_field);
        this.u = getString(u.calibration_ok);
        this.v = getString(u.calibration_required);
        this.q = (SensorManager) getSystemService("sensor");
        android.support.v4.app.o e = e();
        this.r = (ac) e.a("status_screen");
        this.s = (a) e.a("calibration_instructions_fragment");
        if (this.r == null) {
            this.r = new ac();
        }
        if (this.s == null) {
            this.s = new a();
        }
        if (bundle == null) {
            z a = e.a();
            a.a(s.calibration_activity_content, this.r, "status_screen");
            a.a();
        }
    }

    public void onPause() {
        super.onPause();
        h();
    }

    public void onResume() {
        super.onResume();
        this.n = -1;
        this.o = -1;
        this.r.b(this.n);
        this.r.c(this.o);
        this.s.b(this.o);
        g();
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 2) {
            this.p = (int) (Math.sqrt((double) (sensorEvent.values[0] * sensorEvent.values[0] + sensorEvent.values[1] * sensorEvent.values[1] + sensorEvent.values[2] * sensorEvent.values[2])) + 0.5d);
            this.r.d(this.p);
            i();
        }
    }
}