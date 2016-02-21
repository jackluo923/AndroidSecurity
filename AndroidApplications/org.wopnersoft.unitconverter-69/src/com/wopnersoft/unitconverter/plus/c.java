package com.wopnersoft.unitconverter.plus;

import com.wopnersoft.unitconverter.plus.d.b;

// compiled from: ProGuard
class c implements Runnable {
    final /* synthetic */ b a;

    c(b bVar) {
        this.a = bVar;
    }

    public void run() {
        try {
            Thread.sleep(2500);
            this.a.a.finish();
            b.a(this.a.a);
        } catch (InterruptedException e) {
        }
    }
}