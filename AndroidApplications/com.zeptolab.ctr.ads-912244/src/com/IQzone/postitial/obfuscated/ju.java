package com.IQzone.postitial.obfuscated;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

final class ju implements OnKeyListener {
    private /* synthetic */ js a;

    ju(js jsVar) {
        this.a = jsVar;
    }

    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i == 4) {
            this.a.a.d.g().a(null);
        }
        return false;
    }
}