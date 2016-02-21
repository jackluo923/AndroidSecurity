package org.acra;

import android.os.Looper;

class k extends Thread {
    final /* synthetic */ ErrorReporter a;

    k(ErrorReporter errorReporter) {
        this.a = errorReporter;
    }

    public void run() {
        Looper.prepare();
        org.acra.e.k.a(this.a.b, ACRA.getConfig().C(), 1);
        Looper.loop();
    }
}