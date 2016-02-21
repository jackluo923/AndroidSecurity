package com.andymstone.compasslib;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class ac extends Fragment {
    ae a;
    TextView b;
    View c;
    SensorAccuracyView d;
    SensorAccuracyView e;
    TextView f;
    int g;
    int h;
    MagneticFieldBarWidget i;

    public ac() {
        this.g = -10;
        this.h = -10;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(t.calibration_screen_content, viewGroup, false);
        this.d = (SensorAccuracyView) viewGroup2.findViewById(s.accelerometer_accuracy);
        this.e = (SensorAccuracyView) viewGroup2.findViewById(s.magnetometer_accuracy);
        this.i = (MagneticFieldBarWidget) viewGroup2.findViewById(s.magnetic_field_strength2);
        this.f = (TextView) viewGroup2.findViewById(s.mag_field_strength);
        this.b = (TextView) viewGroup2.findViewById(s.status_message);
        this.c = viewGroup2.findViewById(s.show_calibration_instructions);
        this.c.setOnClickListener(new ad(this));
        if (this.g != -10) {
            b(this.g);
        }
        if (this.h != -10) {
            c(this.h);
        }
        return viewGroup2;
    }

    public void a(Activity activity) {
        super.a(activity);
        try {
            this.a = (ae) activity;
        } catch (ClassCastException e) {
            throw new ClassCastException(new StringBuilder(String.valueOf(activity.toString())).append(" must implement Listener").toString());
        }
    }

    public void a(String str) {
        if (this.b != null && this.c != null) {
            this.b.setText(str);
        }
    }

    public void b(int i) {
        this.g = i;
        if (this.d != null) {
            this.d.setAccuracy(i);
        }
    }

    public void c(int i) {
        this.h = i;
        if (this.e != null) {
            this.e.setAccuracy(i);
        }
    }

    public void d(int i) {
        if (this.i != null) {
            this.i.setValue(i);
            this.f.setText(String.valueOf(i));
        }
    }
}