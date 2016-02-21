package com.mixpanel.android.mpmetrics;

class b implements Runnable {
    final /* synthetic */ com.mixpanel.android.mpmetrics.a.b a;
    final /* synthetic */ aa b;
    final /* synthetic */ a c;

    b(a aVar, com.mixpanel.android.mpmetrics.a.b bVar, aa aaVar) {
        this.c = aVar;
        this.a = bVar;
        this.b = aaVar;
    }

    public void run() {
        this.a.a().a(this.b);
    }
}