package com.IQzone.postitial.obfuscated;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

final class r implements OnKeyListener {
    private /* synthetic */ o a;

    r(o oVar) {
        this.a = oVar;
    }

    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (!this.a.isBackOverriden() && i == 4) {
            this.a.d.a();
        }
        return false;
    }
}