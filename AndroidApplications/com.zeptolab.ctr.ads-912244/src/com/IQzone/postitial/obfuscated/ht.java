package com.IQzone.postitial.obfuscated;

import android.content.BroadcastReceiver;
import android.content.Context;

final class ht implements Runnable {
    private final pw a;
    private final Context b;

    public ht(Context context, pw pwVar) {
        this.a = pwVar;
        this.b = context;
    }

    public final void run() {
        try {
            this.b.unregisterReceiver((BroadcastReceiver) this.a.a());
            try {
                this.a.a(null);
            } catch (om e) {
                gv.i();
            }
        } catch (Throwable th) {
            try {
                this.a.a(null);
            } catch (om e2) {
                gv.i();
            }
        }
    }
}