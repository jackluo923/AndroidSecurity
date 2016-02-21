package com.IQzone.postitial.obfuscated;

import android.app.Application;
import java.util.HashSet;
import java.util.Set;

public abstract class mw extends Application {
    private static final ql a;
    private final Set b;

    static {
        a = new ql();
    }

    public mw() {
        this.b = new HashSet();
    }

    public final void a(mx mxVar) {
        synchronized (this.b) {
            this.b.add(mxVar);
        }
    }

    public final boolean a() {
        return false;
    }
}