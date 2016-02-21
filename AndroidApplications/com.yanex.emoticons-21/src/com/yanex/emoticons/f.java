package com.yanex.emoticons;

import android.content.Context;
import com.yanex.emoticons.dragndroplist.b;

final class f extends g {
    final /* synthetic */ EditorActivity a;

    f(EditorActivity editorActivity, Context context) {
        this.a = editorActivity;
        super(editorActivity, context);
    }

    public final void a(String str) {
        this.a.d = true;
        this.a.a.add(str);
        ((b) this.a.b.getAdapter()).notifyDataSetChanged();
    }
}