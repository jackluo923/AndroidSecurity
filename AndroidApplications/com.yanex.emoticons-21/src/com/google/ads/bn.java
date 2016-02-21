package com.google.ads;

import com.google.ads.b.n;
import com.google.ads.util.ab;
import com.google.ads.util.ac;
import com.google.ads.util.z;

public final class bn extends z {
    public final ab a;
    public final ac b;
    public final ac c;

    public bn(bq bqVar) {
        this.c = new ac(this, "disableNativeScroll", Boolean.valueOf(false));
        this.a = new ab(this, "slotState", bqVar);
        this.b = new ac(this, "adLoader", new n(this));
    }
}