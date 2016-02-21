package com.inmobi.commons.thinICE.icedatacollector;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import java.util.LinkedList;
import java.util.List;

public final class IceDataCollector {
    public static final String TAG = "IceDataCollector";
    private static Context a;
    private static ThinICEConfigSettings b;
    private static Looper c;
    private static Handler d;
    private static boolean e;
    private static Activity f;
    private static Runnable g;
    private static LinkedList h;
    private static Sample i;
    private static final Object j;
    private static ThinICEListener k;
    private static Runnable l;

    static {
        a = null;
        b = new ThinICEConfigSettings();
        c = null;
        d = null;
        e = false;
        f = null;
        g = new b();
        h = new LinkedList();
        i = null;
        j = new Object();
        k = null;
        l = new a();
    }

    private static final boolean a(ThinICEConfigSettings thinICEConfigSettings, ThinICEConfigSettings thinICEConfigSettings2) {
        return thinICEConfigSettings.isEnabled() != thinICEConfigSettings2.isEnabled() || thinICEConfigSettings.getSampleInterval() != thinICEConfigSettings2.getSampleInterval();
    }

    public static synchronized void flush() {
        synchronized (IceDataCollector.class) {
            try {
                if (BuildSettings.DEBUG) {
                    Log.d(TAG, "-- flush()");
                }
                synchronized (j) {
                    i = null;
                    h = new LinkedList();
                }
            } catch (Throwable th) {
            }
        }
    }

    public static ThinICEConfigSettings getConfig() {
        return new ThinICEConfigSettings(b);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.inmobi.commons.thinICE.wifi.WifiInfo getConnectedWifiInfo(android.content.Context r4) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.thinICE.icedatacollector.IceDataCollector.getConnectedWifiInfo(android.content.Context):com.inmobi.commons.thinICE.wifi.WifiInfo");
        /*
        r1 = 1;
        r2 = 0;
        r0 = b;
        r3 = r0.getWifiFlags();
        r0 = 2;
        r0 = com.inmobi.commons.thinICE.icedatacollector.ThinICEConfigSettings.bitTest(r3, r0);
        if (r0 != 0) goto L_0x0028;
    L_0x000f:
        r0 = r1;
    L_0x0010:
        r1 = com.inmobi.commons.thinICE.icedatacollector.ThinICEConfigSettings.bitTest(r3, r1);
        r3 = b;
        r3 = r3.isSampleConnectedWifiEnabled();
        if (r3 == 0) goto L_0x0027;
    L_0x001c:
        r3 = com.inmobi.commons.thinICE.wifi.WifiUtil.hasGetConnectedWifiInfoPermission(r4);	 Catch:{ Exception -> 0x0037 }
        if (r3 == 0) goto L_0x002a;
    L_0x0022:
        r0 = com.inmobi.commons.thinICE.wifi.WifiUtil.getConnectedWifiInfo(r4, r0, r1);	 Catch:{ Exception -> 0x0037 }
    L_0x0026:
        r2 = r0;
    L_0x0027:
        return r2;
    L_0x0028:
        r0 = 0;
        goto L_0x0010;
    L_0x002a:
        r0 = com.inmobi.commons.thinICE.icedatacollector.BuildSettings.DEBUG;	 Catch:{ Exception -> 0x0037 }
        if (r0 == 0) goto L_0x0035;
    L_0x002e:
        r0 = "IceDataCollector";
        r1 = "application does not have permission to access connected wifi ap";
        android.util.Log.w(r0, r1);	 Catch:{ Exception -> 0x0037 }
    L_0x0035:
        r0 = r2;
        goto L_0x0026;
    L_0x0037:
        r0 = move-exception;
        r1 = com.inmobi.commons.thinICE.icedatacollector.BuildSettings.DEBUG;
        if (r1 == 0) goto L_0x0027;
    L_0x003c:
        r1 = "IceDataCollector";
        r3 = "Error getting wifi data";
        android.util.Log.e(r1, r3, r0);
        goto L_0x0027;
        */
    }

    public static List getData() {
        List list;
        if (BuildSettings.DEBUG) {
            Log.d(TAG, "-- getData()");
        }
        synchronized (j) {
            list = h;
            flush();
        }
        return list;
    }

    public static int getSampleCount() {
        int size;
        synchronized (j) {
            size = h.size();
        }
        return size;
    }

    private static void m() {
        if (BuildSettings.DEBUG) {
            Log.d(TAG, "startSampling()");
        }
        if (c == null) {
            HandlerThread handlerThread = new HandlerThread("IDC");
            handlerThread.start();
            c = handlerThread.getLooper();
            d = new Handler(c);
            d.postDelayed(l, b.getSampleInterval() / 2);
            if (BuildSettings.DEBUG) {
                Log.d(TAG, "next sample in " + (b.getSampleInterval() / 2) + " ms");
            }
        } else if (BuildSettings.DEBUG) {
            Log.d(TAG, "ignoring, already sampling");
        }
    }

    private static void n() {
        if (BuildSettings.DEBUG) {
            Log.d(TAG, "stopSampling()");
        }
        if (c != null) {
            d.removeCallbacks(l);
            d = null;
            c.quit();
            c = null;
            if (BuildSettings.DEBUG) {
                Log.d(TAG, "sampling stopped");
            }
        } else if (BuildSettings.DEBUG) {
            Log.d(TAG, "ignoring, not currently sampling");
        }
    }

    public static synchronized void setConfig(ThinICEConfigSettings thinICEConfigSettings) {
        synchronized (IceDataCollector.class) {
            try {
                if (BuildSettings.DEBUG) {
                    Log.d(TAG, "-- setConfig(" + thinICEConfigSettings + ")");
                }
                if (thinICEConfigSettings != null) {
                    ThinICEConfigSettings thinICEConfigSettings2 = b;
                    b = thinICEConfigSettings;
                    int sampleHistorySize = thinICEConfigSettings2.getSampleHistorySize();
                    int sampleHistorySize2 = b.getSampleHistorySize();
                    if (sampleHistorySize2 < sampleHistorySize) {
                        synchronized (j) {
                            if (h.size() > sampleHistorySize2) {
                                if (BuildSettings.DEBUG) {
                                    Log.d(TAG, "new sample history size, removing samples from start of list");
                                }
                                h.subList(0, h.size() - sampleHistorySize2).clear();
                            }
                        }
                    }
                    if (c == null) {
                        if (BuildSettings.DEBUG) {
                            Log.d(TAG, "not restarting sampling, not currently sampling");
                        }
                    } else if (a(thinICEConfigSettings2, b)) {
                        n();
                        if (b.isEnabled()) {
                            m();
                        } else {
                            flush();
                            a = null;
                            f = null;
                            k = null;
                        }
                    }
                } else if (BuildSettings.DEBUG) {
                    Log.d(TAG, "aborting, config is null");
                }
            } catch (Throwable th) {
            }
        }
    }

    public static void setListener(ThinICEListener thinICEListener) {
        k = thinICEListener;
    }

    public static synchronized void start(Context context) {
        synchronized (IceDataCollector.class) {
            if (BuildSettings.DEBUG) {
                Log.d(TAG, "-- start()");
            }
            if (context == null) {
                if (BuildSettings.DEBUG) {
                    Log.d(TAG, "aborting, context is null");
                }
            } else if (b.isEnabled()) {
                if (VERSION.SDK_INT >= 14 || context instanceof Activity) {
                    f = (Activity) context;
                } else if (BuildSettings.DEBUG) {
                    Log.w(TAG, "aborting, build < 14 and context is not an activity");
                }
                a = context.getApplicationContext();
                m();
                if (e) {
                    if (BuildSettings.DEBUG) {
                        Log.d(TAG, "stop previously requested, clearing request");
                    }
                    e = false;
                    d.removeCallbacks(g);
                }
            } else if (BuildSettings.DEBUG) {
                Log.d(TAG, "ignoring, data collection is disabled in settings");
            }
        }
    }

    public static synchronized void stop() {
        synchronized (IceDataCollector.class) {
            if (BuildSettings.DEBUG) {
                Log.d(TAG, "-- stop()");
            }
            if (c == null) {
                Log.d(TAG, "ignoring, not currently running");
            } else if (e) {
                Log.d(TAG, "ignoring, stop already requested");
            } else {
                e = true;
                d.postDelayed(g, b.getStopRequestTimeout());
                if (BuildSettings.DEBUG) {
                    Log.d(TAG, "stop requested, occurring in " + b.getStopRequestTimeout() + " ms");
                }
            }
        }
    }
}