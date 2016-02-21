package com.IQzone.postitial.obfuscated;

import android.app.Activity;
import android.content.Intent;
import com.IQzone.postitial.a;

public class et implements a {
    private static final ql a;
    private final a b;
    private final mx c;

    static {
        a = new ql();
    }

    public et(a aVar, mx mxVar) {
        this.c = mxVar;
        this.b = aVar;
    }

    public void a() {
        try {
            this.b.a();
        } catch (Throwable th) {
            this.c.a(th);
            ql qlVar = a;
        }
    }

    public void a(long j) {
        try {
            this.b.a(j);
        } catch (Throwable th) {
            this.c.a(th);
            ql qlVar = a;
        }
    }

    public void a(Activity activity) {
        try {
            this.b.a(activity);
        } catch (Throwable th) {
            this.c.a(th);
            ql qlVar = a;
        }
    }

    @Deprecated
    public void a(Activity activity, int i, int i2, Intent intent) {
        try {
            this.b.a(activity, i, i2, intent);
        } catch (Throwable th) {
            this.c.a(th);
            ql qlVar = a;
        }
    }

    @Deprecated
    public void a(Activity activity, Intent intent, int i) {
        try {
            this.b.a(activity, intent, i);
        } catch (Throwable th) {
            this.c.a(th);
            ql qlVar = a;
        }
    }

    public void a(dz dzVar) {
        try {
            this.b.a(dzVar);
        } catch (Throwable th) {
            this.c.a(th);
            ql qlVar = a;
        }
    }

    public void b(Activity activity) {
        try {
            this.b.b(activity);
        } catch (Throwable th) {
            this.c.a(th);
            ql qlVar = a;
        }
    }
}