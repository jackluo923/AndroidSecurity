package com.IQzone.postitial.obfuscated;

import java.util.concurrent.ExecutorService;

final class nk implements Runnable {
    final /* synthetic */ nv a;
    private /* synthetic */ Runnable b;
    private /* synthetic */ ExecutorService c;

    nk(Runnable runnable, nv nvVar, ExecutorService executorService) {
        this.b = runnable;
        this.a = nvVar;
        this.c = executorService;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        throw new UnsupportedOperationException("Method not decompiled: com.IQzone.postitial.obfuscated.nk.run():void");
        /*
        r3 = this;
    L_0x0000:
        r0 = r3.b;	 Catch:{ InterruptedException -> 0x001c }
        r0.run();	 Catch:{ InterruptedException -> 0x001c }
        r0 = r3.a;	 Catch:{ InterruptedException -> 0x001c }
        r0 = r0.b();	 Catch:{ InterruptedException -> 0x001c }
        r1 = r3.c;	 Catch:{ InterruptedException -> 0x001c }
        r2 = new com.IQzone.postitial.obfuscated.nl;	 Catch:{ InterruptedException -> 0x001c }
        r2.<init>(r3, r0);	 Catch:{ InterruptedException -> 0x001c }
        r1 = r1.submit(r2);	 Catch:{ InterruptedException -> 0x001c }
        r2 = r3.a;	 Catch:{ InterruptedException -> 0x001c }
        r2.a(r1, r0);	 Catch:{ InterruptedException -> 0x001c }
        goto L_0x0000;
    L_0x001c:
        r0 = move-exception;
        com.IQzone.postitial.obfuscated.nh.a;
        return;
        */
    }
}