package com.mixpanel.android.mpmetrics;

import android.app.Activity;
import android.graphics.Bitmap;
import com.mixpanel.android.mpmetrics.c.b;

class o implements b {
    final /* synthetic */ aa a;
    final /* synthetic */ Activity b;
    final /* synthetic */ d c;

    o(d dVar, aa aaVar, Activity activity) {
        this.c = dVar;
        this.a = aaVar;
        this.b = activity;
    }

    public void a(Bitmap bitmap, int i) {
        SurveyState.a(this.a, this.b, this.c.d(), j.d(this.c.a), bitmap, i);
    }
}