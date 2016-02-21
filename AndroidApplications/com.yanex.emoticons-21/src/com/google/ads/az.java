package com.google.ads;

import android.os.SystemClock;
import java.util.concurrent.TimeUnit;

public final class az {
    private ax a;
    private long b;

    public az() {
        this.a = null;
        this.b = -1;
    }

    public final void a(ax axVar, int i) {
        this.a = axVar;
        this.b = TimeUnit.MILLISECONDS.convert((long) i, TimeUnit.SECONDS) + SystemClock.elapsedRealtime();
    }

    public final boolean a() {
        return this.a != null && SystemClock.elapsedRealtime() < this.b;
    }

    public final ax b() {
        return this.a;
    }
}