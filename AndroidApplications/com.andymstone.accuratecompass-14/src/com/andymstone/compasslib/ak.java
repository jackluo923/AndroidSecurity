package com.andymstone.compasslib;

import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.view.View;

class ak implements OnShowListener {
    final /* synthetic */ ag a;
    private final /* synthetic */ View b;

    ak(ag agVar, View view) {
        this.a = agVar;
        this.b = view;
    }

    public void onShow(DialogInterface dialogInterface) {
        ag.a(this.a).showAtLocation(this.b, 17, 0, 120);
    }
}