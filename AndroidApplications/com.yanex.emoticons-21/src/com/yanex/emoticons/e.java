package com.yanex.emoticons;

import android.content.Context;
import com.yanex.emoticons.dragndroplist.b;

final class e extends g {
    final /* synthetic */ int a;
    final /* synthetic */ d b;

    e(d dVar, Context context, int i) {
        this.b = dVar;
        this.a = i;
        super(dVar.a, context);
    }

    public final void a(String str) {
        this.b.a.d = true;
        this.b.a.a.set(this.a, str);
        ((b) this.b.a.b.getAdapter()).notifyDataSetChanged();
    }
}