package com.mixpanel.android.mpmetrics;

import android.app.Activity;

class m implements ab {
    final /* synthetic */ Activity a;
    final /* synthetic */ ab b;
    final /* synthetic */ d c;

    m(d dVar, Activity activity, ab abVar) {
        this.c = dVar;
        this.a = activity;
        this.b = abVar;
    }

    public void a(aa aaVar) {
        c.a(this.a, new n(this, aaVar));
    }
}