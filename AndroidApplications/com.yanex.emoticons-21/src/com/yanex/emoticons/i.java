package com.yanex.emoticons;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class i implements OnClickListener {
    final /* synthetic */ EditorActivity a;
    final /* synthetic */ g b;

    i(g gVar, EditorActivity editorActivity) {
        this.b = gVar;
        this.a = editorActivity;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
        g gVar = this.b;
    }
}