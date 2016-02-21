package com.andymstone.compasslib;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class a extends Fragment {
    SensorAccuracyView a;
    int b;

    public a() {
        this.b = -10;
    }

    public View a_(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(t.calibration_instructions, viewGroup, false);
        this.a = (SensorAccuracyView) viewGroup2.findViewById(s.magnetometer_accuracy);
        if (this.b != -10) {
            b(this.b);
        }
        return viewGroup2;
    }

    public void b(int i) {
        this.b = i;
        if (this.a != null) {
            this.a.setAccuracy(i);
        }
    }
}