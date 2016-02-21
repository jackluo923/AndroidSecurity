package com.IQzone.postitial.obfuscated;

final class kr implements Runnable {
    private /* synthetic */ String a;

    kr(String str) {
        this.a = str;
    }

    public final void run() {
        kp.c();
        new StringBuilder("ping ").append(this.a).toString();
        try {
            String a = kp.a(this.a);
            kp.c();
            new StringBuilder("ping response ").append(a).toString();
        } catch (Exception e) {
            kp.c();
            new StringBuilder("FAILED TRACKING ").append(this.a).toString();
        }
    }
}