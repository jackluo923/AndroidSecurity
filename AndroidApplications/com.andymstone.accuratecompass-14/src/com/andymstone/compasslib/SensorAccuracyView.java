package com.andymstone.compasslib;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

public class SensorAccuracyView extends TextView {
    int a;
    int b;
    int c;

    public SensorAccuracyView(Context context) {
        this(context, null);
    }

    public SensorAccuracyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = getResources().getColor(r.app_red);
        this.b = getResources().getColor(r.app_green);
        this.c = -5592406;
        setText(u.sensor_accuracy_waiting);
    }

    public void setAccuracy(int i) {
        setText(x.a(i));
        if (i == -1) {
            setTextColor(this.c);
        } else if (i < 2) {
            setTextColor(this.a);
        } else {
            setTextColor(this.b);
        }
    }
}