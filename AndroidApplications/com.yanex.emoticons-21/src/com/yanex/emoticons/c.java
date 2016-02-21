package com.yanex.emoticons;

import android.widget.ListAdapter;
import com.yanex.emoticons.dragndroplist.b;
import com.yanex.emoticons.dragndroplist.d;

final class c implements d {
    final /* synthetic */ EditorActivity a;

    c(EditorActivity editorActivity) {
        this.a = editorActivity;
    }

    public final void a(int i, int i2) {
        ListAdapter adapter = this.a.b.getAdapter();
        if (adapter instanceof b) {
            ((b) adapter).a(i, i2);
            this.a.b.invalidateViews();
        }
    }
}