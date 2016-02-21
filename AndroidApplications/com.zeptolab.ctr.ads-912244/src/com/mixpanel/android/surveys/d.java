package com.mixpanel.android.surveys;

class d implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ c b;

    d(c cVar, String str) {
        this.b = cVar;
        this.a = str;
    }

    public void run() {
        CardCarouselLayout.a(this.b.b.a).a(d.a(this.b.b), this.a);
    }
}