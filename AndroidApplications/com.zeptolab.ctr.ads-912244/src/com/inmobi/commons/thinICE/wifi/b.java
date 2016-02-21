package com.inmobi.commons.thinICE.wifi;

final class b implements Runnable {
    b() {
    }

    public void run() {
        WifiScanListener a = WifiScanner.b;
        WifiScanner.d();
        if (a != null) {
            a.onTimeout();
        }
    }
}