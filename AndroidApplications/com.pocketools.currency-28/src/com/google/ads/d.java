package com.google.ads;

import android.os.SystemClock;
import java.util.concurrent.TimeUnit;

public class d {
    private c a;
    private long b;

    public d() {
        this.a = null;
        this.b = -1;
    }

    public void a(c cVar, int i) {
        this.a = cVar;
        this.b = TimeUnit.MILLISECONDS.convert((long) i, TimeUnit.SECONDS) + SystemClock.elapsedRealtime();
    }

    public boolean a() {
        return this.a != null && SystemClock.elapsedRealtime() < this.b;
    }

    public c b() {
        return this.a;
    }
}