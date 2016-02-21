package com.mixpanel.android.mpmetrics;

class q extends d {
    final /* synthetic */ String b;
    final /* synthetic */ d c;

    q(d dVar, String str) {
        this.c = dVar;
        this.b = str;
        super(dVar.a, null);
    }

    public void a(String str) {
        throw new RuntimeException("This MixpanelPeople object has a fixed, constant distinctId");
    }

    public String d() {
        return this.b;
    }
}