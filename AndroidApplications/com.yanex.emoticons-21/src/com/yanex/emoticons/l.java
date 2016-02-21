package com.yanex.emoticons;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class l implements OnClickListener {
    final /* synthetic */ MainActivity a;

    l(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}