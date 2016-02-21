package com.inmobi.commons.analytics.db;

import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.Log;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicBoolean;

public class AnalyticsEventsQueue extends Vector {
    private static AnalyticsEventsQueue a = null;
    private static final long serialVersionUID = -1291938489149189478L;
    private AtomicBoolean b;

    class a extends Thread {
        a() {
        }

        public void run() {
            while (!AnalyticsEventsQueue.this.isEmpty()) {
                try {
                    AnalyticsEventsQueue.this.a((AnalyticsFunctions) AnalyticsEventsQueue.this.remove(0));
                } catch (Exception e) {
                    Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception processing function", e);
                }
            }
        }
    }

    public AnalyticsEventsQueue() {
        this.b = new AtomicBoolean(false);
    }

    private void a(AnalyticsFunctions analyticsFunctions) {
        analyticsFunctions.processFunction();
    }

    public static synchronized AnalyticsEventsQueue getInstance() {
        AnalyticsEventsQueue analyticsEventsQueue;
        synchronized (AnalyticsEventsQueue.class) {
            if (a == null) {
                a = new AnalyticsEventsQueue();
            }
            analyticsEventsQueue = a;
        }
        return analyticsEventsQueue;
    }

    public synchronized boolean isEmpty() {
        boolean isEmpty;
        isEmpty = super.isEmpty();
        if (isEmpty) {
            this.b.set(false);
        }
        return isEmpty;
    }

    public synchronized void processFunctions() {
        if (!this.b.get()) {
            this.b.set(true);
            new a().start();
        }
    }
}