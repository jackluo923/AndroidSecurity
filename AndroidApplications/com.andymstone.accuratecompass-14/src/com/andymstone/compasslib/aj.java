package com.andymstone.compasslib;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

class aj implements OnDismissListener {
    final /* synthetic */ ag a;

    aj(ag agVar) {
        this.a = agVar;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        ag.a(this.a).dismiss();
        ag.a(this.a, null);
    }
}