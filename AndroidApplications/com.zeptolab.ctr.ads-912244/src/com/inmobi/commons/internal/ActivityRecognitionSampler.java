package com.inmobi.commons.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ActivityRecognitionSampler {
    static HandlerThread a;
    static Looper b;
    static Handler c;
    static List d;

    public static class ActivitySample {
        private long a;
        private int b;

        public ActivitySample(int i, long j) {
            this.b = i;
            this.a = j;
        }

        public int getActivity() {
            return this.b;
        }

        public long getTimestamp() {
            return this.a;
        }
    }

    static {
        d = new ArrayList();
        a = new HandlerThread("ActivityDetectionSampler");
        a.start();
        b = a.getLooper();
        c = new a(b);
    }

    private static void b() {
        if (AnalyticsInitializer.getConfigParams().getThinIceConfig().isActivityDetectionEnabled()) {
            c.sendMessageDelayed(c.obtainMessage(1), AnalyticsInitializer.getConfigParams().getThinIceConfig().getActivityDetectionInterval());
        }
    }

    public static List getCollectedList() {
        return AnalyticsInitializer.getConfigParams().getThinIceConfig().isActivityDetectionEnabled() ? d : Collections.emptyList();
    }

    public static void start() {
        if (!c.hasMessages(1)) {
            c.sendEmptyMessage(1);
        }
    }

    public static void stop() {
        c.removeMessages(1);
        d.clear();
    }
}