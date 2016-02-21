package com.andymstone.compasslib;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import java.lang.ref.WeakReference;

class d implements SensorEventListener {
    private WeakReference a;

    d(b bVar) {
        this.a = new WeakReference(bVar);
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
        b bVar = (b) this.a.get();
        if (bVar != null) {
            b.a(bVar, sensor, i);
        }
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        b bVar = (b) this.a.get();
        if (bVar != null) {
            b.a(bVar, sensorEvent);
        }
    }
}