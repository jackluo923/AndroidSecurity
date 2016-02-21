package com.mixpanel.android.mpmetrics;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class u implements OnClickListener {
    final /* synthetic */ aa a;
    final /* synthetic */ s b;

    u(s sVar, aa aaVar) {
        this.b = sVar;
        this.a = aaVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        r.a(this.b.c).d().c("$surveys", Integer.valueOf(this.a.b()));
        r.a(this.b.c).d().c("$collections", Integer.valueOf(this.a.c()));
    }
}