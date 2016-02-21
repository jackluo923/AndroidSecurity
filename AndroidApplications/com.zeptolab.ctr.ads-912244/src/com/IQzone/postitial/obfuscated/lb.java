package com.IQzone.postitial.obfuscated;

final class lb implements pw {
    private volatile boolean a;

    lb(la laVar) {
        this.a = true;
    }

    private synchronized void a(Boolean bool) {
        this.a = bool.booleanValue();
    }

    private synchronized Boolean b() {
        Boolean valueOf;
        boolean z = true;
        synchronized (this) {
            if (this.a) {
                this.a = !this.a;
                if (this.a) {
                    z = false;
                }
                valueOf = Boolean.valueOf(z);
            } else {
                valueOf = Boolean.valueOf(false);
            }
        }
        return valueOf;
    }

    public final /* synthetic */ Object a() {
        return b();
    }
}