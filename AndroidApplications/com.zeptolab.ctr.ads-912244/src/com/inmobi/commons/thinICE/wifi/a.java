package com.inmobi.commons.thinICE.wifi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;

final class a extends BroadcastReceiver {
    a() {
    }

    public void onReceive(Context context, Intent intent) {
        try {
            WifiScanListener a = WifiScanner.b;
            WifiManager wifiManager = (WifiManager) WifiScanner.a.getSystemService("wifi");
            WifiScanner.d();
            if (a != null) {
                a.onResultsReceived(wifiManager.getScanResults());
            }
        } catch (Exception e) {
        }
    }
}