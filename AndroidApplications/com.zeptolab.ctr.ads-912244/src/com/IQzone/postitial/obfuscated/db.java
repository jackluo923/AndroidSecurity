package com.IQzone.postitial.obfuscated;

final class db implements Runnable {
    private /* synthetic */ cl a;

    db(cl clVar) {
        this.a = clVar;
    }

    public final void run() {
        if (cl.d(this.a) != null) {
            cl.e(this.a).execute(cl.d(this.a));
        }
    }
}