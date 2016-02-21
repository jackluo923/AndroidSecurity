package com.yanex.emoticons;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;

final class d implements OnItemLongClickListener {
    final /* synthetic */ EditorActivity a;

    d(EditorActivity editorActivity) {
        this.a = editorActivity;
    }

    public final boolean onItemLongClick(AdapterView adapterView, View view, int i, long j) {
        new e(this, this.a.e, i).a(this.a.getString(2131427355), (String) this.a.a.get(i));
        return true;
    }
}