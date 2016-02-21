package com.yanex.emoticons.gui;

import android.view.View;
import android.view.View.OnClickListener;

final class c implements OnClickListener {
    final /* synthetic */ a a;
    final /* synthetic */ b b;

    c(b bVar, a aVar) {
        this.b = bVar;
        this.a = aVar;
    }

    public final void onClick(View view) {
        if (this.a.c != null) {
            ActionView[] a = this.b.a;
            int length = a.length;
            int i = 0;
            while (i < length) {
                View view2 = a[i];
                view2.a(view2 == view);
                i++;
            }
            this.a.c.a(this.a);
        }
    }
}