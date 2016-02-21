package com.andymstone.accuratecompass;

import android.hardware.Sensor;
import android.os.Handler;
import com.andymstone.compasslib.e;

class d implements e {
    final /* synthetic */ a a;
    private final /* synthetic */ Handler b;

    d(a aVar, Handler handler) {
        this.a = aVar;
        this.b = handler;
    }

    public void a(Sensor sensor, Sensor sensor2) {
        if (sensor == null || sensor2 == null) {
            this.b.post(new e(this));
        }
    }
}