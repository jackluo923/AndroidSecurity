package com.andymstone.compasslib;

import android.hardware.Sensor;
import com.andymstone.core.o;

class c implements Runnable {
    final /* synthetic */ b a;
    private final /* synthetic */ e b;

    c(b bVar, e eVar) {
        this.a = bVar;
        this.b = eVar;
    }

    public void run() {
        Sensor defaultSensor = this.a.i.getDefaultSensor(1);
        Sensor defaultSensor2 = this.a.n ? this.a.i.getDefaultSensor(o.MyAlertDialog_myAlertDialogButtonDrawable) : null;
        if (defaultSensor != null) {
            if (!(defaultSensor2 == null && this.a.n)) {
                this.a.i.registerListener(this.a.j, defaultSensor, o.MyAlertDialog_myAlertDialogButtonDrawable);
                if (defaultSensor2 != null) {
                    this.a.i.registerListener(this.a.j, defaultSensor2, o.MyAlertDialog_myAlertDialogButtonDrawable);
                } else {
                    this.a.e();
                }
            }
        }
        if (this.b != null) {
            this.b.a(defaultSensor, defaultSensor2);
        }
    }
}