package com.yanex.emoticons;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class h implements OnClickListener {
    final /* synthetic */ EditorActivity a;
    final /* synthetic */ g b;

    h(g gVar, EditorActivity editorActivity) {
        this.b = gVar;
        this.a = editorActivity;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.a(this.b.b.getText().toString());
    }
}