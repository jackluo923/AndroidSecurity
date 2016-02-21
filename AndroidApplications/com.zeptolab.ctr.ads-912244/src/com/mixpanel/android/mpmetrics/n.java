package com.mixpanel.android.mpmetrics;

import android.graphics.Bitmap;
import com.mixpanel.android.mpmetrics.c.b;

class n implements b {
    final /* synthetic */ aa a;
    final /* synthetic */ m b;

    n(m mVar, aa aaVar) {
        this.b = mVar;
        this.a = aaVar;
    }

    public void a(Bitmap bitmap, int i) {
        synchronized (j.f(this.b.c.a)) {
            j.a(this.b.c.a, bitmap);
            j.a(this.b.c.a, i);
            j.b(this.b.c.a, this.b.a.hashCode());
        }
        this.b.b.a(this.a);
    }
}