package com.inmobi.commons.thinICE.wifi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.WifiLock;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class WifiScanner {
    private static Context a;
    private static WifiScanListener b;
    private static Handler c;
    private static boolean d;
    private static Runnable e;
    private static boolean f;
    private static final BroadcastReceiver g;
    private static final IntentFilter h;
    private static WakeLock i;
    private static WifiLock j;

    static {
        a = null;
        b = null;
        c = null;
        d = false;
        e = new b();
        f = false;
        g = new a();
        h = new IntentFilter("android.net.wifi.SCAN_RESULTS");
        i = null;
        j = null;
    }

    private static synchronized void d() {
        synchronized (WifiScanner.class) {
            if (c != null) {
                c.removeCallbacks(e);
                f();
                if (d) {
                    h();
                    j();
                }
                c = null;
                b = null;
                a = null;
                d = false;
            }
        }
    }

    private static void e() {
        if (!f) {
            f = true;
            a.registerReceiver(g, h, null, c);
        }
    }

    private static void f() {
        if (f) {
            f = false;
            try {
                a.unregisterReceiver(g);
            } catch (IllegalArgumentException e) {
            }
        }
    }

    private static void g() {
        if (i == null) {
            i = ((PowerManager) a.getSystemService("power")).newWakeLock(1, "wifiscanrequester.CpuLock");
            i.setReferenceCounted(false);
        }
        if (!i.isHeld()) {
            i.acquire();
        }
    }

    private static void h() {
        if (i != null) {
            if (i.isHeld()) {
                i.release();
            }
            i = null;
        }
    }

    private static void i() {
        if (j == null) {
            j = ((WifiManager) a.getSystemService("wifi")).createWifiLock(GoogleScorer.CLIENT_PLUS, "wifiscanrequester.WiFiScanLock");
            j.setReferenceCounted(false);
        }
        if (!j.isHeld()) {
            j.acquire();
        }
    }

    private static void j() {
        if (j != null) {
            if (j.isHeld()) {
                j.release();
            }
            j = null;
        }
    }

    public static boolean requestScan(Context context, WifiScanListener wifiScanListener) {
        return requestScan(Looper.myLooper(), context, wifiScanListener, 10000, false);
    }

    public static synchronized boolean requestScan(Looper looper, Context context, WifiScanListener wifiScanListener, long j, boolean z) {
        boolean z2;
        synchronized (WifiScanner.class) {
            if (c != null) {
                z2 = false;
            } else {
                WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                if (wifiManager.isWifiEnabled()) {
                    a = context;
                    b = wifiScanListener;
                    d = z;
                    c = new Handler(looper);
                    c.postDelayed(e, j);
                    if (d) {
                        i();
                        g();
                    }
                    e();
                    z2 = wifiManager.startScan();
                } else {
                    z2 = false;
                }
            }
        }
        return z2;
    }
}