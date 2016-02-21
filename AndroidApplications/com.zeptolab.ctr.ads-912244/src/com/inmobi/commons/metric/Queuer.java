package com.inmobi.commons.metric;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;

public class Queuer {
    private StringBuffer a;
    private long b;

    public Queuer() {
        this.a = new StringBuffer();
        this.b = 0;
    }

    long a() {
        return this.b;
    }

    public String get() {
        String toString;
        Log.internal(InternalSDKUtil.LOGGING_TAG, "Reading from queue");
        synchronized (this.a) {
            toString = this.a.toString();
        }
        return toString;
    }

    public void log(EventLog eventLog) {
        synchronized (this.a) {
            this.a.append(eventLog.toString()).append(',');
            this.b++;
        }
    }

    public void reset() {
        Log.internal(InternalSDKUtil.LOGGING_TAG, "Resetting queue");
        synchronized (this.a) {
            this.a = new StringBuffer();
            this.b = 0;
        }
    }
}