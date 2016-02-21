package com.google.ads.util;

import com.google.ads.b.a;
import com.google.ads.b.e;
import com.google.ads.bq;
import com.google.ads.g;

public final class c extends e {
    public c(bq bqVar, g gVar) {
        super(bqVar, gVar);
    }

    public final boolean canScrollHorizontally(int i) {
        if (this.a.e.a() == null) {
            return super.canScrollHorizontally(i);
        }
        return !((a) this.a.e.a()).b();
    }

    public final boolean canScrollVertically(int i) {
        if (this.a.e.a() == null) {
            return super.canScrollVertically(i);
        }
        return !((a) this.a.e.a()).b();
    }
}