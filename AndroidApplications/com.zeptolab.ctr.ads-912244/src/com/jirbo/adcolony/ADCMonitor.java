package com.jirbo.adcolony;

import android.os.Handler;
import android.os.Message;
import com.facebook.ads.internal.AdWebViewUtils;
import com.google.android.gms.games.GamesStatusCodes;

class ADCMonitor implements Runnable {
    public static final int SECONDS_BEFORE_IDLE = 5;
    public static final int SECONDS_BEFORE_SUSPEND = 10;
    static volatile long last_ping_ms;
    static String monitor_mutex;
    static volatile ADCMonitor singleton;

    static class Pinger extends Handler {
        Pinger() {
            sendMessageDelayed(obtainMessage(), AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
        }

        public void handleMessage(Message message) {
            if (ADC.activity().isFinishing()) {
                ADC.log_dev("Monitor pinger exiting.");
            } else {
                if (ADC.activity().hasWindowFocus()) {
                    ADCMonitor.ping();
                }
                sendMessageDelayed(obtainMessage(), AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
            }
        }
    }

    static {
        monitor_mutex = "MONITOR_MUTEX";
    }

    ADCMonitor() {
    }

    static void ping() {
        synchronized (monitor_mutex) {
            last_ping_ms = System.currentTimeMillis();
            if (singleton == null) {
                ADC.log_dev("Creating ADC Monitor singleton.");
                singleton = new ADCMonitor();
                new Thread(singleton).start();
            }
        }
    }

    public void run() {
        ADC.set_log_level(log_level);
        ADCLog.dev.println((Object)"ADC Monitor Started.");
        controller.on_resume();
        boolean z = false;
        while (!AdColony.activity().isFinishing()) {
            long j;
            long currentTimeMillis = System.currentTimeMillis();
            active = false;
            controller.update();
            if (active) {
                j = 50;
            } else {
                j = (long) (i != 0 ? GamesStatusCodes.STATUS_REQUEST_UPDATE_PARTIAL_SUCCESS : 250);
            }
            int currentTimeMillis2 = (int) ((System.currentTimeMillis() - last_ping_ms) / 1000);
            controller.update();
            if (i != 0) {
                if (currentTimeMillis2 >= 10) {
                    break;
                } else if (currentTimeMillis2 < 5) {
                    controller.on_resume();
                    ADC.log_dev("AdColony is active.");
                    z = false;
                }
            } else if (currentTimeMillis2 >= 5) {
                ADC.log_dev("AdColony is idle.");
                z = 1;
                controller.on_suspend();
            }
            sleep(j);
            j = System.currentTimeMillis();
            if (j - currentTimeMillis <= 3000 && j - currentTimeMillis > 0) {
                ADCSessionManager aDCSessionManager = controller.session_manager;
                aDCSessionManager.session_time = ((double) (j - currentTimeMillis)) / 1000.0d + aDCSessionManager.session_time;
            }
        }
        synchronized (monitor_mutex) {
            singleton = null;
        }
        if (i == 0) {
            controller.on_suspend();
        }
        if (AdColony.activity().isFinishing()) {
            controller.on_stop();
            ADCThreadPool.reset();
        }
        System.out.println("Exiting monitor");
    }

    void sleep(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException e) {
        }
    }
}