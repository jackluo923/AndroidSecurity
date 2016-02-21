package com.wopnersoft.unitconverter.plus.b;

import com.wopnersoft.unitconverter.plus.d.b;

// compiled from: ProGuard
class z implements Runnable {
    final /* synthetic */ x a;

    z(x xVar) {
        this.a = xVar;
    }

    public void run() {
        try {
            Thread.sleep(2000);
            b.a(this.a);
        } catch (InterruptedException e) {
        }
    }
}