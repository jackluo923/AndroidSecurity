package com.IQzone.postitial.obfuscated;

final class dh implements Runnable {
    private /* synthetic */ int a;
    private /* synthetic */ int b;
    private /* synthetic */ int c;
    private /* synthetic */ dg d;

    dh(dg dgVar, int i, int i2, int i3) {
        this.d = dgVar;
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final void run() {
        this.d.b.setProgress(this.a);
        this.d.c.setText(String.format("%d:%02d", new Object[]{Integer.valueOf(this.b), Integer.valueOf(this.c)}));
    }
}