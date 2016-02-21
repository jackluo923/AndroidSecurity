package com.mixpanel.android.mpmetrics;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class t implements OnClickListener {
    final /* synthetic */ aa a;
    final /* synthetic */ s b;

    t(s sVar, aa aaVar) {
        this.b = sVar;
        this.a = aaVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        r.a(this.b.c).d().a(this.a, this.b.b);
    }
}