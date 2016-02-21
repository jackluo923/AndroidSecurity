package com.IQzone.postitial.obfuscated;

import android.view.ViewGroup.LayoutParams;

final class av implements mx {
    private /* synthetic */ mx a;
    private /* synthetic */ ap b;

    av(ap apVar, mx mxVar) {
        this.b = apVar;
        this.a = mxVar;
    }

    private Void a(bg bgVar) {
        boolean z = false;
        LayoutParams a = ap.a(this.b, this.b.c, bgVar);
        try {
            this.b.g.setBackgroundColor(-16777216);
            this.b.c();
            this.b.b.addView(this.b.g, a);
            if (this.a != null) {
                this.a.a(Boolean.valueOf(true));
            }
        } catch (Throwable th) {
            ap.a;
            this.b.c.e = z;
            if (this.a != null) {
                this.a.a(Boolean.valueOf(z));
            }
        }
        return null;
    }
}