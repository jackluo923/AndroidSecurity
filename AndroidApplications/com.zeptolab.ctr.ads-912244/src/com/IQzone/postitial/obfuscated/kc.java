package com.IQzone.postitial.obfuscated;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

final class kc implements OnKeyListener {
    private /* synthetic */ kb a;

    kc(kb kbVar) {
        this.a = kbVar;
    }

    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i == 4) {
            this.a.f.g().a(null);
        }
        return false;
    }
}