package com.IQzone.postitial.obfuscated;

final class cw implements Runnable {
    private /* synthetic */ int a;
    private /* synthetic */ int b;
    private /* synthetic */ cv c;

    cw(cv cvVar, int i, int i2) {
        this.c = cvVar;
        this.a = i;
        this.b = i2;
    }

    public final void run() {
        this.c.b.setText(String.format("%d:%02d", new Object[]{Integer.valueOf(this.a), Integer.valueOf(this.b)}));
    }
}