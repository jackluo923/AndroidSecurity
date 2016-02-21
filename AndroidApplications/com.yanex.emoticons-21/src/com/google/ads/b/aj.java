package com.google.ads.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class aj implements OnClickListener {
    final /* synthetic */ ah a;

    aj(ah ahVar) {
        this.a = ahVar;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        new Thread(new ae(ah.a(this.a).c(), ah.b(this.a).getApplicationContext())).start();
    }
}