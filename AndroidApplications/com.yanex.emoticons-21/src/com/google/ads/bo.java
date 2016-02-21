package com.google.ads;

import android.os.Handler;
import android.os.Looper;
import com.google.ads.util.ab;
import com.google.ads.util.ac;
import com.google.ads.util.z;

public final class bo extends z {
    private static final bo d;
    public final ac a;
    public final ab b;
    public final ab c;

    static {
        d = new bo();
    }

    private bo() {
        this.a = new ac(this, "marketPackages", null);
        this.b = new ab(this, "constants", new bp());
        this.c = new ab(this, "uiHandler", new Handler(Looper.getMainLooper()));
    }

    public static bo a() {
        return d;
    }
}