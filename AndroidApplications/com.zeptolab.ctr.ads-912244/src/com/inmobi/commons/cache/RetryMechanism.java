package com.inmobi.commons.cache;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.Timer;
import java.util.TimerTask;

public class RetryMechanism {
    private Timer a;
    private int b;
    private int c;
    private int d;

    public static interface RetryRunnable {
        void completed();

        void run();
    }

    class a extends TimerTask {
        final /* synthetic */ com.inmobi.commons.cache.RetryMechanism.RetryRunnable a;

        a(com.inmobi.commons.cache.RetryMechanism.RetryRunnable retryRunnable) {
            this.a = retryRunnable;
        }

        public void run() {
            try {
                this.a.run();
                this.a.completed();
            } catch (Exception e) {
                RetryMechanism.a(RetryMechanism.this);
                if (RetryMechanism.this > RetryMechanism.this.c) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception occured while running retry mechanism and will the limit for retrying has been reached.");
                    this.a.completed();
                } else {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception occured while running retry mechanism and will retry in " + (RetryMechanism.this * RetryMechanism.this.d) + " ms");
                    RetryMechanism.this.a(this.a, RetryMechanism.this * RetryMechanism.this.d);
                }
            }
        }
    }

    public RetryMechanism(int i, int i2, Timer timer) {
        this.b = 0;
        this.c = 0;
        this.d = 1000;
        this.c = i;
        this.d = i2;
        this.a = timer;
    }

    static /* synthetic */ int a(RetryMechanism retryMechanism) {
        int i = retryMechanism.b;
        retryMechanism.b = i + 1;
        return i;
    }

    private void a(RetryRunnable retryRunnable, int i) {
        this.a.schedule(new a(retryRunnable), (long) i);
    }

    public void rescheduleTimer(RetryRunnable retryRunnable) {
        this.b = 0;
        a(retryRunnable, 0);
    }
}