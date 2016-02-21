package com.inmobi.commons.thinICE.icedatacollector;

import android.util.Log;

final class b implements Runnable {
    b() {
    }

    public void run() {
        synchronized (IceDataCollector.class) {
            if (BuildSettings.DEBUG) {
                Log.d(IceDataCollector.TAG, "** stop runnable");
            }
            if (IceDataCollector.a()) {
                if (BuildSettings.DEBUG) {
                    Log.d(IceDataCollector.TAG, "terminating sampling and flushing");
                }
                IceDataCollector.b();
                IceDataCollector.flush();
                IceDataCollector.a(null);
                IceDataCollector.a(null);
                IceDataCollector.a(null);
            } else {
                if (BuildSettings.DEBUG) {
                    Log.d(IceDataCollector.TAG, "ignoring, stop not requested");
                }
            }
        }
    }
}