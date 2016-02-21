package com.IQzone.postitial.obfuscated;

import android.view.ViewGroup.LayoutParams;

final class as implements mx {
    private /* synthetic */ ar a;

    as(ar arVar) {
        this.a = arVar;
    }

    private Void a(bg bgVar) {
        LayoutParams a = ap.a(this.a.a.a, this.a.a.a.c, bgVar);
        a.flags |= 8;
        try {
            if (bf.b != this.a.a.a.h) {
                ap.a;
                this.a.a.a.g.setBackgroundColor(-16777216);
                this.a.a.a.b.updateViewLayout(this.a.a.a.g, a);
            }
        } catch (Throwable th) {
            ap.a;
        }
        return null;
    }
}