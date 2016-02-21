package com.IQzone.postitial.obfuscated;

final class lf implements Runnable {
    final /* synthetic */ dz a;
    final /* synthetic */ la b;
    private /* synthetic */ boolean c;

    lf(la laVar, boolean z, dz dzVar) {
        this.b = laVar;
        this.c = z;
        this.a = dzVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        throw new UnsupportedOperationException("Method not decompiled: com.IQzone.postitial.obfuscated.lf.run():void");
        /*
        r7 = this;
        r2 = 0;
        r5 = 0;
        r0 = 1;
        r1 = 0;
        com.IQzone.postitial.obfuscated.la.l();
        r3 = r7.c;
        if (r3 == 0) goto L_0x00e9;
    L_0x000c:
        r3 = com.IQzone.postitial.obfuscated.lj.a;
        r4 = r7.a;
        r4 = r4.ordinal();
        r3 = r3[r4];
        switch(r3) {
            case 1: goto L_0x00b6;
            case 2: goto L_0x00b6;
            case 3: goto L_0x00c7;
            case 4: goto L_0x00d8;
            default: goto L_0x0019;
        };
    L_0x0019:
        r0 = r1;
    L_0x001a:
        com.IQzone.postitial.obfuscated.la.l();
        r1 = new java.lang.StringBuilder;
        r3 = "can show ";
        r1.<init>(r3);
        r1 = r1.append(r0);
        r1.toString();
        if (r0 == 0) goto L_0x0187;
    L_0x002d:
        com.IQzone.postitial.obfuscated.la.l();
        r0 = r7.b;
        r1 = com.IQzone.postitial.obfuscated.la.e(r0);
        monitor-enter(r1);
        r0 = new java.util.ArrayList;	 Catch:{ all -> 0x00ec }
        r2 = r7.b;	 Catch:{ all -> 0x00ec }
        r2 = com.IQzone.postitial.obfuscated.la.e(r2);	 Catch:{ all -> 0x00ec }
        r0.<init>(r2);	 Catch:{ all -> 0x00ec }
        monitor-exit(r1);	 Catch:{ all -> 0x00ec }
        r2 = r0.iterator();
    L_0x0047:
        r0 = r2.hasNext();
        if (r0 == 0) goto L_0x015e;
    L_0x004d:
        r0 = r2.next();
        r1 = r0;
        r1 = (com.IQzone.postitial.obfuscated.jl) r1;
        r0 = r7.b;	 Catch:{ om -> 0x009a }
        r0 = com.IQzone.postitial.obfuscated.la.h(r0);	 Catch:{ om -> 0x009a }
        r0 = r0.a(r1);	 Catch:{ om -> 0x009a }
        r0 = (com.IQzone.postitial.obfuscated.k) r0;	 Catch:{ om -> 0x009a }
        r3 = r0.getAdLauncher();	 Catch:{ om -> 0x009a }
        r4 = r7.b;	 Catch:{ om -> 0x009a }
        r4 = com.IQzone.postitial.obfuscated.la.i(r4);	 Catch:{ om -> 0x009a }
        r5 = new com.IQzone.postitial.obfuscated.ec;	 Catch:{ om -> 0x009a }
        r6 = r7.a;	 Catch:{ om -> 0x009a }
        r5.<init>(r1, r6);	 Catch:{ om -> 0x009a }
        r4.a(r5);	 Catch:{ om -> 0x009a }
        r4 = r7.b;	 Catch:{ om -> 0x009a }
        com.IQzone.postitial.obfuscated.la.a(r4, r1);	 Catch:{ om -> 0x009a }
        r4 = r7.b;	 Catch:{ om -> 0x009a }
        r4 = com.IQzone.postitial.obfuscated.la.g(r4);	 Catch:{ om -> 0x009a }
        r4 = r4.d(r1);	 Catch:{ om -> 0x009a }
        if (r4 == 0) goto L_0x00ef;
    L_0x0085:
        r0 = r7.b;	 Catch:{ om -> 0x009a }
        r0 = com.IQzone.postitial.obfuscated.la.g(r0);	 Catch:{ om -> 0x009a }
        r0.c(r1);	 Catch:{ om -> 0x009a }
        r0 = r7.b;	 Catch:{ om -> 0x009a }
        r3 = 0;
        com.IQzone.postitial.obfuscated.la.a(r0, r3);	 Catch:{ om -> 0x009a }
        r0 = r7.b;	 Catch:{ om -> 0x009a }
        r0.d();	 Catch:{ om -> 0x009a }
        goto L_0x0047;
    L_0x009a:
        r0 = move-exception;
        com.IQzone.postitial.obfuscated.la.l();
        r0 = new java.lang.StringBuilder;
        r3 = "<PriorityAdLauncher><7>, Couldn't load module: ";
        r0.<init>(r3);
        r1 = r1.a();
        r0 = r0.append(r1);
        r0.toString();
        r0 = r7.b;
        r0.d();
        goto L_0x0047;
    L_0x00b6:
        r3 = r7.b;
        r3 = com.IQzone.postitial.obfuscated.la.g(r3);
        r3 = r3.b();
        r3 = (r3 > r5 ? 1 : (r3 == r5? 0 : -1));
        if (r3 == 0) goto L_0x001a;
    L_0x00c4:
        r0 = r1;
        goto L_0x001a;
    L_0x00c7:
        r3 = r7.b;
        r3 = com.IQzone.postitial.obfuscated.la.g(r3);
        r3 = r3.a();
        r3 = (r3 > r5 ? 1 : (r3 == r5? 0 : -1));
        if (r3 == 0) goto L_0x001a;
    L_0x00d5:
        r0 = r1;
        goto L_0x001a;
    L_0x00d8:
        r3 = r7.b;
        r3 = com.IQzone.postitial.obfuscated.la.g(r3);
        r3 = r3.c();
        r3 = (r3 > r5 ? 1 : (r3 == r5? 0 : -1));
        if (r3 == 0) goto L_0x001a;
    L_0x00e6:
        r0 = r1;
        goto L_0x001a;
    L_0x00e9:
        r0 = r1;
        goto L_0x001a;
    L_0x00ec:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
    L_0x00ef:
        r4 = r7.b;	 Catch:{ om -> 0x009a }
        r5 = 0;
        com.IQzone.postitial.obfuscated.la.a(r4, r5);	 Catch:{ om -> 0x009a }
        r4 = r7.b;	 Catch:{ om -> 0x009a }
        r4 = com.IQzone.postitial.obfuscated.la.j(r4);	 Catch:{ om -> 0x009a }
        r5 = new com.IQzone.postitial.obfuscated.ee;	 Catch:{ om -> 0x009a }
        r6 = r7.a;	 Catch:{ om -> 0x009a }
        r5.<init>(r1, r6);	 Catch:{ om -> 0x009a }
        r4.a(r5);	 Catch:{ om -> 0x009a }
        r4 = r3.a();	 Catch:{ om -> 0x009a }
        if (r4 == 0) goto L_0x0180;
    L_0x010b:
        r4 = com.IQzone.postitial.obfuscated.lj.a;	 Catch:{ om -> 0x009a }
        r5 = r7.a;	 Catch:{ om -> 0x009a }
        r5 = r5.ordinal();	 Catch:{ om -> 0x009a }
        r4 = r4[r5];	 Catch:{ om -> 0x009a }
        switch(r4) {
            case 1: goto L_0x015f;
            case 2: goto L_0x015f;
            case 3: goto L_0x0169;
            case 4: goto L_0x0173;
            default: goto L_0x0118;
        };	 Catch:{ om -> 0x009a }
    L_0x0118:
        r4 = r7.b;	 Catch:{ om -> 0x009a }
        r4 = com.IQzone.postitial.obfuscated.la.k(r4);	 Catch:{ om -> 0x009a }
        monitor-enter(r4);	 Catch:{ om -> 0x009a }
        r5 = r7.b;	 Catch:{ all -> 0x017d }
        r5 = com.IQzone.postitial.obfuscated.la.k(r5);	 Catch:{ all -> 0x017d }
        r6 = -1;
        r5.a = r6;	 Catch:{ all -> 0x017d }
        r5 = r7.b;	 Catch:{ all -> 0x017d }
        r5 = com.IQzone.postitial.obfuscated.la.k(r5);	 Catch:{ all -> 0x017d }
        r6 = 0;
        r5.b = r6;	 Catch:{ all -> 0x017d }
        monitor-exit(r4);	 Catch:{ all -> 0x017d }
        r4 = r7.b;	 Catch:{ om -> 0x009a }
        r4 = com.IQzone.postitial.obfuscated.la.l(r4);	 Catch:{ om -> 0x009a }
        r4 = r4.a();	 Catch:{ om -> 0x009a }
        r4.a(r0);	 Catch:{ om -> 0x009a }
        r4 = r0.getAdController();	 Catch:{ om -> 0x009a }
        r4 = r4.e();	 Catch:{ om -> 0x009a }
        r4 = r4.g();	 Catch:{ om -> 0x009a }
        r5 = r7.b;	 Catch:{ om -> 0x009a }
        r5 = com.IQzone.postitial.obfuscated.la.m(r5);	 Catch:{ om -> 0x009a }
        r0.setOrientation(r5);	 Catch:{ om -> 0x009a }
        r0 = r7.a;	 Catch:{ om -> 0x009a }
        r5 = new com.IQzone.postitial.obfuscated.lg;	 Catch:{ om -> 0x009a }
        r5.<init>(r7, r1, r4);	 Catch:{ om -> 0x009a }
        r3.a(r0, r5);	 Catch:{ om -> 0x009a }
    L_0x015e:
        return;
    L_0x015f:
        r4 = r7.b;	 Catch:{ om -> 0x009a }
        r4 = com.IQzone.postitial.obfuscated.la.g(r4);	 Catch:{ om -> 0x009a }
        r4.d();	 Catch:{ om -> 0x009a }
        goto L_0x0118;
    L_0x0169:
        r4 = r7.b;	 Catch:{ om -> 0x009a }
        r4 = com.IQzone.postitial.obfuscated.la.g(r4);	 Catch:{ om -> 0x009a }
        r4.e();	 Catch:{ om -> 0x009a }
        goto L_0x0118;
    L_0x0173:
        r4 = r7.b;	 Catch:{ om -> 0x009a }
        r4 = com.IQzone.postitial.obfuscated.la.g(r4);	 Catch:{ om -> 0x009a }
        r4.f();	 Catch:{ om -> 0x009a }
        goto L_0x0118;
    L_0x017d:
        r0 = move-exception;
        monitor-exit(r4);	 Catch:{ om -> 0x009a }
        throw r0;	 Catch:{ om -> 0x009a }
    L_0x0180:
        r0 = r7.b;	 Catch:{ om -> 0x009a }
        r0.d();	 Catch:{ om -> 0x009a }
        goto L_0x0047;
    L_0x0187:
        com.IQzone.postitial.obfuscated.la.l();
        r0 = r7.b;
        r1 = com.IQzone.postitial.obfuscated.la.e(r0);
        monitor-enter(r1);
        r0 = new java.util.ArrayList;	 Catch:{ all -> 0x01af }
        r3 = r7.b;	 Catch:{ all -> 0x01af }
        r3 = com.IQzone.postitial.obfuscated.la.e(r3);	 Catch:{ all -> 0x01af }
        r0.<init>(r3);	 Catch:{ all -> 0x01af }
        monitor-exit(r1);	 Catch:{ all -> 0x01af }
        r1 = r0.iterator();
        r0 = r2;
    L_0x01a2:
        r2 = r1.hasNext();
        if (r2 == 0) goto L_0x01b2;
    L_0x01a8:
        r0 = r1.next();
        r0 = (com.IQzone.postitial.obfuscated.jl) r0;
        goto L_0x01a2;
    L_0x01af:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
    L_0x01b2:
        if (r0 == 0) goto L_0x01c4;
    L_0x01b4:
        r1 = r7.b;
        r1 = com.IQzone.postitial.obfuscated.la.i(r1);
        r2 = new com.IQzone.postitial.obfuscated.ec;
        r3 = r7.a;
        r2.<init>(r0, r3);
        r1.a(r2);
    L_0x01c4:
        r0 = r7.b;
        r0.d();
        goto L_0x015e;
        */
    }
}