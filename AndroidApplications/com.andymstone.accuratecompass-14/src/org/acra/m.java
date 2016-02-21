package org.acra;

import android.util.Log;

class m extends Thread {
    final /* synthetic */ ErrorReporter a;
    private final /* synthetic */ y b;
    private final /* synthetic */ boolean c;
    private final /* synthetic */ String d;
    private final /* synthetic */ boolean e;

    m(ErrorReporter errorReporter, y yVar, boolean z, String str, boolean z2) {
        this.a = errorReporter;
        this.b = yVar;
        this.c = z;
        this.d = str;
        this.e = z2;
    }

    public void run() {
        Log.d(ACRA.LOG_TAG, "Waiting for Toast + worker...");
        while (true) {
            if (!ErrorReporter.k || (this.b != null && this.b.isAlive())) {
                try {
                    Thread.sleep(100);
                } catch (InterruptedException e) {
                    Log.e(ACRA.LOG_TAG, "Error : ", e);
                }
            } else {
                if (this.c) {
                    Log.d(ACRA.LOG_TAG, "About to create DIALOG from #handleException");
                    this.a.a(this.d);
                }
                Log.d(ACRA.LOG_TAG, new StringBuilder("Wait for Toast + worker ended. Kill Application ? ").append(this.e).toString());
                if (this.e) {
                    this.a.f();
                    return;
                } else {
                    return;
                }
            }
        }
    }
}