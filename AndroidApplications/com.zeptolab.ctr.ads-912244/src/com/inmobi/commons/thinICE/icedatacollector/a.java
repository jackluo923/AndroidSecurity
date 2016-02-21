package com.inmobi.commons.thinICE.icedatacollector;

import android.os.Build.VERSION;
import android.util.Log;
import com.inmobi.commons.thinICE.cellular.CellOperatorInfo;
import com.inmobi.commons.thinICE.cellular.CellUtil;
import com.inmobi.commons.thinICE.location.LocationInfo;
import com.inmobi.commons.thinICE.location.LocationUtil;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.commons.thinICE.wifi.WifiScanListener;
import com.inmobi.commons.thinICE.wifi.WifiScanner;
import com.inmobi.commons.thinICE.wifi.WifiUtil;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

final class a implements Runnable {

    class a implements WifiScanListener {
        final /* synthetic */ boolean a;
        final /* synthetic */ boolean b;

        a(boolean z, boolean z2) {
            this.a = z;
            this.b = z2;
        }

        public void onResultsReceived(List list) {
            if (BuildSettings.DEBUG) {
                Log.d(IceDataCollector.TAG, "Received Wi-Fi scan results " + list.size());
            }
            List scanResultsToWifiInfos = WifiUtil.scanResultsToWifiInfos(list, this.a, this.b);
            if (BuildSettings.DEBUG) {
                Log.d(IceDataCollector.TAG, "-- wifi scan:");
                Iterator it = scanResultsToWifiInfos.iterator();
                while (it.hasNext()) {
                    Log.d(IceDataCollector.TAG, "   + " + ((WifiInfo) it.next()));
                }
            }
            synchronized (IceDataCollector.j) {
                if (IceDataCollector.i != null) {
                    IceDataCollector.i.visibleWifiAp = scanResultsToWifiInfos;
                }
            }
        }

        public void onTimeout() {
            if (BuildSettings.DEBUG) {
                Log.w(IceDataCollector.TAG, "Received Wi-Fi scan timeout");
            }
        }
    }

    a() {
    }

    public void run() {
        Throwable th;
        boolean z = false;
        if (BuildSettings.DEBUG) {
            Log.d(IceDataCollector.TAG, "** sample runnable");
        }
        if (IceDataCollector.c == null) {
            if (BuildSettings.DEBUG) {
                Log.w(IceDataCollector.TAG, "sampling when looper is null, exiting");
            }
        } else if (VERSION.SDK_INT >= 14 || IceDataCollector.f.hasWindowFocus()) {
            IceDataCollector.d.postDelayed(IceDataCollector.l, IceDataCollector.b.getSampleInterval());
            if (BuildSettings.DEBUG) {
                Log.d(IceDataCollector.TAG, "next sample in " + IceDataCollector.b.getSampleInterval() + " ms");
            }
            Sample sample = new Sample();
            int wifiFlags = IceDataCollector.b.getWifiFlags();
            if (!ThinICEConfigSettings.bitTest(wifiFlags, GoogleScorer.CLIENT_PLUS)) {
                z = true;
            }
            boolean bitTest = ThinICEConfigSettings.bitTest(wifiFlags, 1);
            int cellOpFlags = IceDataCollector.b.getCellOpFlags();
            boolean bitTest2 = ThinICEConfigSettings.bitTest(cellOpFlags, 1);
            boolean bitTest3 = ThinICEConfigSettings.bitTest(cellOpFlags, GoogleScorer.CLIENT_PLUS);
            if (IceDataCollector.b.isSampleCellOperatorEnabled()) {
                try {
                    CellOperatorInfo cellNetworkInfo = CellUtil.getCellNetworkInfo(IceDataCollector.a);
                    if (bitTest2) {
                        cellNetworkInfo.simMcc = -1;
                        cellNetworkInfo.simMnc = -1;
                    }
                    if (bitTest3) {
                        cellNetworkInfo.currentMcc = -1;
                        cellNetworkInfo.currentMnc = -1;
                    }
                    if (BuildSettings.DEBUG) {
                        Log.d(IceDataCollector.TAG, "-- cell operator: " + cellNetworkInfo);
                    }
                    sample.cellOperator = cellNetworkInfo;
                } catch (Exception e) {
                    th = e;
                    if (BuildSettings.DEBUG) {
                        Log.e(IceDataCollector.TAG, "Error getting cell operator data", th);
                    }
                }
            }
            if (IceDataCollector.b.isSampleCellEnabled()) {
                try {
                    if (CellUtil.hasGetCurrentServingCellPermission(IceDataCollector.a)) {
                        sample.connectedCellTowerInfo = CellUtil.getCurrentCellTower(IceDataCollector.a);
                        if (BuildSettings.DEBUG) {
                            Log.d(IceDataCollector.TAG, "-- current serving cell: " + sample.connectedCellTowerInfo.id);
                        }
                    } else if (BuildSettings.DEBUG) {
                        Log.w(IceDataCollector.TAG, "application does not have permission to access current serving cell");
                    }
                } catch (Exception e2) {
                    th = e2;
                    if (BuildSettings.DEBUG) {
                        Log.e(IceDataCollector.TAG, "Error getting cell data", th);
                    }
                }
            }
            sample.connectedWifiAp = IceDataCollector.getConnectedWifiInfo(IceDataCollector.a);
            if (IceDataCollector.b.isSampleLocationEnabled()) {
                try {
                    if (LocationUtil.hasLocationPermission(IceDataCollector.a)) {
                        HashMap lastKnownLocations = LocationUtil.getLastKnownLocations(IceDataCollector.a);
                        if (BuildSettings.DEBUG) {
                            Log.d(IceDataCollector.TAG, "-- locations:");
                            Iterator it = lastKnownLocations.values().iterator();
                            while (it.hasNext()) {
                                Log.d(IceDataCollector.TAG, "   + " + ((LocationInfo) it.next()));
                            }
                        }
                        sample.lastKnownLocations = lastKnownLocations;
                    } else if (BuildSettings.DEBUG) {
                        Log.w(IceDataCollector.TAG, "application does not have permission to access location");
                    }
                } catch (Exception e3) {
                    th = e3;
                    if (BuildSettings.DEBUG) {
                        Log.e(IceDataCollector.TAG, "Error getting location data", th);
                    }
                }
            }
            if (IceDataCollector.b.isSampleVisibleWifiEnabled()) {
                try {
                    if (WifiUtil.hasWifiScanPermission(IceDataCollector.a, false)) {
                        WifiScanner.requestScan(IceDataCollector.a, new a(z, bitTest));
                    } else if (BuildSettings.DEBUG) {
                        Log.w(IceDataCollector.TAG, "application does not have permission to scan for wifi access points");
                    }
                } catch (Exception e4) {
                    th = e4;
                    if (BuildSettings.DEBUG) {
                        Log.e(IceDataCollector.TAG, "Error scanning for wifi", th);
                    }
                }
            }
            synchronized (IceDataCollector.j) {
                IceDataCollector.i = sample;
                if (IceDataCollector.h != null) {
                    IceDataCollector.h.add(sample);
                    while (IceDataCollector.h.size() > IceDataCollector.b.getSampleHistorySize()) {
                        IceDataCollector.h.removeFirst();
                    }
                }
            }
        } else {
            if (BuildSettings.DEBUG) {
                Log.d(IceDataCollector.TAG, "activity no longer has focus, terminating");
            }
            IceDataCollector.n();
            List e5 = IceDataCollector.h;
            IceDataCollector.flush();
            IceDataCollector.a = null;
            IceDataCollector.f = null;
            if (IceDataCollector.k != null) {
                IceDataCollector.k.onSamplingTerminated(e5);
            }
            IceDataCollector.k = null;
        }
    }
}