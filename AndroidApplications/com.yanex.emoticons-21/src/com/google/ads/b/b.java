package com.google.ads.b;

import com.google.ads.AdView;

final class b implements Runnable {
    final /* synthetic */ a a;
    final /* synthetic */ a b;

    b(a aVar, a aVar2) {
        this.b = aVar;
        this.a = aVar2;
    }

    public final void run() {
        ((AdView) this.b.a.j.a()).removeView(this.a);
    }
}