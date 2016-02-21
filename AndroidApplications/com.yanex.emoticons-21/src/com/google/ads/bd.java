package com.google.ads;

import android.view.View;
import com.google.ads.util.g;

final class bd implements Runnable {
    final /* synthetic */ bh a;
    final /* synthetic */ View b;
    final /* synthetic */ be c;
    final /* synthetic */ ba d;

    bd(ba baVar, bh bhVar, View view, be beVar) {
        this.d = baVar;
        this.a = bhVar;
        this.b = view;
        this.c = beVar;
    }

    public final void run() {
        if (ba.a(this.d, this.a)) {
            g.a("Trying to switch GWAdNetworkAmbassadors, but GWController().destroy() has been called. Destroying the new ambassador and terminating mediation.");
        } else {
            ba.c(this.d).a(this.b, this.a, this.c);
        }
    }
}