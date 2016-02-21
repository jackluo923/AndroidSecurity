package org.acra;

import android.text.format.Time;
import android.util.Log;

class l extends Thread {
    final /* synthetic */ ErrorReporter a;

    l(ErrorReporter errorReporter) {
        this.a = errorReporter;
    }

    public void run() {
        Time time = new Time();
        Time time2 = new Time();
        time.setToNow();
        long toMillis = time.toMillis(false);
        long j = 0;
        while (j < 3000) {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException e) {
                Log.d(ACRA.LOG_TAG, "Interrupted while waiting for Toast to end.", e);
            }
            time2.setToNow();
            j = time2.toMillis(false) - toMillis;
        }
        ErrorReporter.k = true;
    }
}