package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.IQzone.postitial.b.a;
import com.IQzone.postitial.b.b;
import com.IQzone.postitial.b.c;
import com.IQzone.postitial.b.d;
import com.IQzone.postitial.b.e;
import com.IQzone.postitial.b.f;
import com.IQzone.postitial.b.g;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public class la implements dy, ea {
    private static final ql a;
    private boolean A;
    private final ne B;
    private int C;
    private final List b;
    private final Executor c;
    private final pq d;
    private final n e;
    private final mx f;
    private final mx g;
    private final mx h;
    private final mx i;
    private final mx j;
    private mx k;
    private final kw l;
    private final mz m;
    private final Executor n;
    private final Set o;
    private final Set p;
    private final Set q;
    private final Set r;
    private final Set s;
    private final Set t;
    private final Set u;
    private final lm v;
    private volatile boolean w;
    private final Random x;
    private Context y;
    private final boolean z;

    static {
        a = new ql();
    }

    public la(Context context, ExecutorService executorService, pq pqVar, n nVar, mx mxVar, mx mxVar2, mx mxVar3, mx mxVar4, mx mxVar5, mx mxVar6, ou ouVar, es esVar, mx mxVar7, boolean z) {
        this.b = new ArrayList();
        this.o = new HashSet();
        this.p = new HashSet();
        this.q = new HashSet();
        this.r = new HashSet();
        this.s = new HashSet();
        this.t = new HashSet();
        this.u = new HashSet();
        this.v = new lm();
        this.x = new Random(System.currentTimeMillis());
        this.B = new ne(1000, 10);
        this.z = true;
        this.y = context;
        this.n = nh.a(executorService, executorService, 1);
        this.l = new kw(esVar, ouVar, mxVar6, executorService);
        this.j = mxVar7;
        this.k = new ls(this, mxVar5, executorService);
        this.f = new lk(this, mxVar, executorService);
        this.g = new lu(this, mxVar2, executorService);
        this.i = new lq(this, mxVar3, executorService);
        this.h = new lo(this, mxVar4, executorService);
        this.e = nVar;
        this.d = pqVar;
        this.m = new mz(new lc(this), executorService, 1, new lb(this));
        this.c = new oc(executorService);
        executorService.execute(new ld(this));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void a(com.IQzone.postitial.obfuscated.jl r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.IQzone.postitial.obfuscated.la.a(com.IQzone.postitial.obfuscated.jl):void");
        /*
        r5 = this;
        r0 = 1;
        monitor-enter(r5);
        r1 = r5.A;	 Catch:{ all -> 0x0059 }
        if (r1 != 0) goto L_0x0024;
    L_0x0006:
        r1 = 1;
        r5.A = r1;	 Catch:{ all -> 0x0059 }
        r1 = r5.l;	 Catch:{ all -> 0x0059 }
        r1 = r1.a(r6);	 Catch:{ all -> 0x0059 }
        r2 = com.IQzone.postitial.obfuscated.kz.a;	 Catch:{ all -> 0x0059 }
        if (r1 != r2) goto L_0x0026;
    L_0x0013:
        r1 = r6.g();	 Catch:{ all -> 0x0059 }
    L_0x0017:
        if (r1 == 0) goto L_0x0057;
    L_0x0019:
        r2 = 100;
        if (r1 != r2) goto L_0x002b;
    L_0x001d:
        if (r0 != 0) goto L_0x0024;
    L_0x001f:
        r0 = r5.l;	 Catch:{ all -> 0x0059 }
        r0.b(r6);	 Catch:{ all -> 0x0059 }
    L_0x0024:
        monitor-exit(r5);
        return;
    L_0x0026:
        r1 = r6.h();	 Catch:{ all -> 0x0059 }
        goto L_0x0017;
    L_0x002b:
        r2 = r5.x;	 Catch:{ all -> 0x0059 }
        r3 = 99;
        r2 = r2.nextInt(r3);	 Catch:{ all -> 0x0059 }
        r2 = r2 + 1;
        r3 = a;	 Catch:{ all -> 0x0059 }
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0059 }
        r4 = "random ";
        r3.<init>(r4);	 Catch:{ all -> 0x0059 }
        r3 = r3.append(r2);	 Catch:{ all -> 0x0059 }
        r3.toString();	 Catch:{ all -> 0x0059 }
        r3 = a;	 Catch:{ all -> 0x0059 }
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0059 }
        r4 = "chance ";
        r3.<init>(r4);	 Catch:{ all -> 0x0059 }
        r3 = r3.append(r1);	 Catch:{ all -> 0x0059 }
        r3.toString();	 Catch:{ all -> 0x0059 }
        if (r2 <= r1) goto L_0x001d;
    L_0x0057:
        r0 = 0;
        goto L_0x001d;
    L_0x0059:
        r0 = move-exception;
        monitor-exit(r5);
        throw r0;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean m() {
        throw new UnsupportedOperationException("Method not decompiled: com.IQzone.postitial.obfuscated.la.m():boolean");
        /*
        r12 = this;
        r3 = 0;
        r4 = 1;
        r0 = r12.z;
        if (r0 == 0) goto L_0x000b;
    L_0x0006:
        r0 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        java.lang.Thread.sleep(r0);	 Catch:{ InterruptedException -> 0x003d }
    L_0x000b:
        r0 = a;
        r0 = r12.a();
        if (r0 != 0) goto L_0x02d5;
    L_0x0013:
        r0 = a;
        r1 = r12.b;
        monitor-enter(r1);
        r0 = new java.util.ArrayList;	 Catch:{ all -> 0x0041 }
        r2 = r12.b;	 Catch:{ all -> 0x0041 }
        r0.<init>(r2);	 Catch:{ all -> 0x0041 }
        monitor-exit(r1);	 Catch:{ all -> 0x0041 }
        r1 = r0.size();
        if (r1 != 0) goto L_0x0026;
    L_0x0026:
        r5 = r0.iterator();
        r2 = r3;
    L_0x002b:
        r0 = r5.hasNext();
        if (r0 == 0) goto L_0x02d2;
    L_0x0031:
        r0 = r5.next();
        r1 = r0;
        r1 = (com.IQzone.postitial.obfuscated.jl) r1;
        r0 = r12.w;
        if (r0 != 0) goto L_0x0044;
    L_0x003c:
        return r3;
    L_0x003d:
        r0 = move-exception;
        r0 = a;
        goto L_0x000b;
    L_0x0041:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
    L_0x0044:
        r12.a(r1);
        r0 = r12.l;
        r0 = r0.d(r1);
        if (r0 == 0) goto L_0x0051;
    L_0x004f:
        r3 = r4;
        goto L_0x003c;
    L_0x0051:
        r0 = r12.d;	 Catch:{ om -> 0x0144 }
        r0 = r0.a(r1);	 Catch:{ om -> 0x0144 }
        r0 = (com.IQzone.postitial.obfuscated.k) r0;	 Catch:{ om -> 0x0144 }
        r6 = r0.getAdController();	 Catch:{ om -> 0x0144 }
        r0 = r6.c();	 Catch:{ om -> 0x0144 }
        if (r0 != 0) goto L_0x003c;
    L_0x0063:
        r7 = r6.e();	 Catch:{ om -> 0x0144 }
        r0 = r7.a();	 Catch:{ om -> 0x0144 }
        if (r0 != 0) goto L_0x02cd;
    L_0x006d:
        r0 = a;	 Catch:{ om -> 0x0144 }
        r8 = r12.v;	 Catch:{ all -> 0x00fe }
        monitor-enter(r8);	 Catch:{ all -> 0x00fe }
        r0 = r12.v;	 Catch:{ all -> 0x00fb }
        r0 = r0.b;	 Catch:{ all -> 0x00fb }
        if (r0 == 0) goto L_0x0094;
    L_0x0078:
        r0 = r12.g;	 Catch:{ all -> 0x00fb }
        r9 = new com.IQzone.postitial.obfuscated.ef;	 Catch:{ all -> 0x00fb }
        r10 = r12.v;	 Catch:{ all -> 0x00fb }
        r10 = r10.b;	 Catch:{ all -> 0x00fb }
        r11 = r12.v;	 Catch:{ all -> 0x00fb }
        r11 = r11.a;	 Catch:{ all -> 0x00fb }
        r9.<init>(r10, r11);	 Catch:{ all -> 0x00fb }
        r0.a(r9);	 Catch:{ all -> 0x00fb }
        r0 = r12.v;	 Catch:{ all -> 0x00fb }
        r9 = -1;
        r0.a = r9;	 Catch:{ all -> 0x00fb }
        r0 = r12.v;	 Catch:{ all -> 0x00fb }
        r9 = 0;
        r0.b = r9;	 Catch:{ all -> 0x00fb }
    L_0x0094:
        monitor-exit(r8);	 Catch:{ all -> 0x00fb }
        r0 = a;	 Catch:{ all -> 0x00fe }
        r8 = r7.b();	 Catch:{ all -> 0x00fe }
        r0 = r7.c(r8);	 Catch:{ all -> 0x00fe }
        if (r0 != 0) goto L_0x00a7;
    L_0x00a1:
        r0 = r7.d(r8);	 Catch:{ all -> 0x00fe }
        if (r0 != 0) goto L_0x01af;
    L_0x00a7:
        r0 = r7.a();	 Catch:{ all -> 0x00fe }
        if (r0 == 0) goto L_0x0163;
    L_0x00ad:
        r0 = r7.d(r8);	 Catch:{ all -> 0x00fe }
        if (r0 == 0) goto L_0x0163;
    L_0x00b3:
        r0 = a;	 Catch:{ all -> 0x00fe }
        r0 = a;	 Catch:{ om -> 0x0160 }
        r0 = new java.lang.StringBuilder;	 Catch:{ om -> 0x0160 }
        r2 = "returnVal of doRefresh: ";
        r0.<init>(r2);	 Catch:{ om -> 0x0160 }
        r2 = 1;
        r0 = r0.append(r2);	 Catch:{ om -> 0x0160 }
        r0.toString();	 Catch:{ om -> 0x0160 }
        r0 = r6.e();	 Catch:{ om -> 0x0160 }
        r0 = r0.g();	 Catch:{ om -> 0x0160 }
        r2 = r12.v;	 Catch:{ om -> 0x0160 }
        monitor-enter(r2);	 Catch:{ om -> 0x0160 }
        r6 = r12.v;	 Catch:{ all -> 0x015d }
        r6.a = r0;	 Catch:{ all -> 0x015d }
        r0 = r12.v;	 Catch:{ all -> 0x015d }
        r0.b = r1;	 Catch:{ all -> 0x015d }
        monitor-exit(r2);	 Catch:{ all -> 0x015d }
        r0 = a;	 Catch:{ om -> 0x0160 }
        r0 = r12.i;	 Catch:{ om -> 0x0160 }
        r2 = new com.IQzone.postitial.obfuscated.ed;	 Catch:{ om -> 0x0160 }
        r6 = r12.v;	 Catch:{ om -> 0x0160 }
        r6 = r6.b;	 Catch:{ om -> 0x0160 }
        r7 = r12.v;	 Catch:{ om -> 0x0160 }
        r7 = r7.a;	 Catch:{ om -> 0x0160 }
        r2.<init>(r6, r7);	 Catch:{ om -> 0x0160 }
        r0.a(r2);	 Catch:{ om -> 0x0160 }
        r0 = r12.c;	 Catch:{ om -> 0x0160 }
        r2 = new com.IQzone.postitial.obfuscated.le;	 Catch:{ om -> 0x0160 }
        r2.<init>(r12);	 Catch:{ om -> 0x0160 }
        r0.execute(r2);	 Catch:{ om -> 0x0160 }
        r3 = r4;
        goto L_0x003c;
    L_0x00fb:
        r0 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x00fe }
        throw r0;	 Catch:{ all -> 0x00fe }
    L_0x00fe:
        r0 = move-exception;
        r7 = a;	 Catch:{ om -> 0x0144 }
        r7 = new java.lang.StringBuilder;	 Catch:{ om -> 0x0144 }
        r8 = "returnVal of doRefresh: ";
        r7.<init>(r8);	 Catch:{ om -> 0x0144 }
        r7 = r7.append(r2);	 Catch:{ om -> 0x0144 }
        r7.toString();	 Catch:{ om -> 0x0144 }
        if (r2 == 0) goto L_0x0143;
    L_0x0111:
        r6 = r6.e();	 Catch:{ om -> 0x0144 }
        r6 = r6.g();	 Catch:{ om -> 0x0144 }
        r7 = r12.v;	 Catch:{ om -> 0x0144 }
        monitor-enter(r7);	 Catch:{ om -> 0x0144 }
        r8 = r12.v;	 Catch:{ all -> 0x02ca }
        r8.a = r6;	 Catch:{ all -> 0x02ca }
        r6 = r12.v;	 Catch:{ all -> 0x02ca }
        r6.b = r1;	 Catch:{ all -> 0x02ca }
        monitor-exit(r7);	 Catch:{ all -> 0x02ca }
        r6 = a;	 Catch:{ om -> 0x0144 }
        r6 = r12.i;	 Catch:{ om -> 0x0144 }
        r7 = new com.IQzone.postitial.obfuscated.ed;	 Catch:{ om -> 0x0144 }
        r8 = r12.v;	 Catch:{ om -> 0x0144 }
        r8 = r8.b;	 Catch:{ om -> 0x0144 }
        r9 = r12.v;	 Catch:{ om -> 0x0144 }
        r9 = r9.a;	 Catch:{ om -> 0x0144 }
        r7.<init>(r8, r9);	 Catch:{ om -> 0x0144 }
        r6.a(r7);	 Catch:{ om -> 0x0144 }
        r6 = r12.c;	 Catch:{ om -> 0x0144 }
        r7 = new com.IQzone.postitial.obfuscated.le;	 Catch:{ om -> 0x0144 }
        r7.<init>(r12);	 Catch:{ om -> 0x0144 }
        r6.execute(r7);	 Catch:{ om -> 0x0144 }
    L_0x0143:
        throw r0;	 Catch:{ om -> 0x0144 }
    L_0x0144:
        r0 = move-exception;
        r0 = r2;
    L_0x0146:
        r2 = a;
        r2 = new java.lang.StringBuilder;
        r6 = "<PriorityAdLauncher><6>, Couldn't load module: ";
        r2.<init>(r6);
        r1 = r1.a();
        r1 = r2.append(r1);
        r1.toString();
        r2 = r0;
        goto L_0x002b;
    L_0x015d:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ om -> 0x0160 }
        throw r0;	 Catch:{ om -> 0x0160 }
    L_0x0160:
        r0 = move-exception;
        r0 = r4;
        goto L_0x0146;
    L_0x0163:
        r7.b(r8);	 Catch:{ all -> 0x00fe }
        r0 = a;	 Catch:{ om -> 0x0144 }
        r0 = new java.lang.StringBuilder;	 Catch:{ om -> 0x0144 }
        r7 = "returnVal of doRefresh: ";
        r0.<init>(r7);	 Catch:{ om -> 0x0144 }
        r0 = r0.append(r2);	 Catch:{ om -> 0x0144 }
        r0.toString();	 Catch:{ om -> 0x0144 }
        if (r2 == 0) goto L_0x002b;
    L_0x0178:
        r0 = r6.e();	 Catch:{ om -> 0x0144 }
        r0 = r0.g();	 Catch:{ om -> 0x0144 }
        r6 = r12.v;	 Catch:{ om -> 0x0144 }
        monitor-enter(r6);	 Catch:{ om -> 0x0144 }
        r7 = r12.v;	 Catch:{ all -> 0x01ac }
        r7.a = r0;	 Catch:{ all -> 0x01ac }
        r0 = r12.v;	 Catch:{ all -> 0x01ac }
        r0.b = r1;	 Catch:{ all -> 0x01ac }
        monitor-exit(r6);	 Catch:{ all -> 0x01ac }
        r0 = a;	 Catch:{ om -> 0x0144 }
        r0 = r12.i;	 Catch:{ om -> 0x0144 }
        r6 = new com.IQzone.postitial.obfuscated.ed;	 Catch:{ om -> 0x0144 }
        r7 = r12.v;	 Catch:{ om -> 0x0144 }
        r7 = r7.b;	 Catch:{ om -> 0x0144 }
        r8 = r12.v;	 Catch:{ om -> 0x0144 }
        r8 = r8.a;	 Catch:{ om -> 0x0144 }
        r6.<init>(r7, r8);	 Catch:{ om -> 0x0144 }
        r0.a(r6);	 Catch:{ om -> 0x0144 }
        r0 = r12.c;	 Catch:{ om -> 0x0144 }
        r6 = new com.IQzone.postitial.obfuscated.le;	 Catch:{ om -> 0x0144 }
        r6.<init>(r12);	 Catch:{ om -> 0x0144 }
        r0.execute(r6);	 Catch:{ om -> 0x0144 }
        goto L_0x002b;
    L_0x01ac:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ om -> 0x0144 }
        throw r0;	 Catch:{ om -> 0x0144 }
    L_0x01af:
        r0 = r3;
    L_0x01b0:
        r9 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r0 >= r9) goto L_0x01d2;
    L_0x01b4:
        r9 = 100;
        java.lang.Thread.sleep(r9);	 Catch:{ InterruptedException -> 0x01ce }
    L_0x01b9:
        r9 = r7.c(r8);	 Catch:{ all -> 0x00fe }
        if (r9 != 0) goto L_0x01d2;
    L_0x01bf:
        r9 = r7.d(r8);	 Catch:{ all -> 0x00fe }
        if (r9 == 0) goto L_0x01d2;
    L_0x01c5:
        r9 = r12.w;	 Catch:{ all -> 0x00fe }
        if (r9 == 0) goto L_0x01d2;
    L_0x01c9:
        r9 = a;	 Catch:{ all -> 0x00fe }
        r0 = r0 + 1;
        goto L_0x01b0;
    L_0x01ce:
        r9 = move-exception;
        r9 = a;	 Catch:{ all -> 0x00fe }
        goto L_0x01b9;
    L_0x01d2:
        r0 = r7.c(r8);	 Catch:{ all -> 0x00fe }
        if (r0 != 0) goto L_0x01de;
    L_0x01d8:
        r0 = r7.d(r8);	 Catch:{ all -> 0x00fe }
        if (r0 != 0) goto L_0x0281;
    L_0x01de:
        r0 = r7.a();	 Catch:{ all -> 0x00fe }
        if (r0 == 0) goto L_0x0235;
    L_0x01e4:
        r0 = r7.d(r8);	 Catch:{ all -> 0x00fe }
        if (r0 == 0) goto L_0x0235;
    L_0x01ea:
        r0 = a;	 Catch:{ all -> 0x00fe }
        r0 = a;	 Catch:{ om -> 0x0160 }
        r0 = new java.lang.StringBuilder;	 Catch:{ om -> 0x0160 }
        r2 = "returnVal of doRefresh: ";
        r0.<init>(r2);	 Catch:{ om -> 0x0160 }
        r2 = 1;
        r0 = r0.append(r2);	 Catch:{ om -> 0x0160 }
        r0.toString();	 Catch:{ om -> 0x0160 }
        r0 = r6.e();	 Catch:{ om -> 0x0160 }
        r0 = r0.g();	 Catch:{ om -> 0x0160 }
        r2 = r12.v;	 Catch:{ om -> 0x0160 }
        monitor-enter(r2);	 Catch:{ om -> 0x0160 }
        r6 = r12.v;	 Catch:{ all -> 0x0232 }
        r6.a = r0;	 Catch:{ all -> 0x0232 }
        r0 = r12.v;	 Catch:{ all -> 0x0232 }
        r0.b = r1;	 Catch:{ all -> 0x0232 }
        monitor-exit(r2);	 Catch:{ all -> 0x0232 }
        r0 = a;	 Catch:{ om -> 0x0160 }
        r0 = r12.i;	 Catch:{ om -> 0x0160 }
        r2 = new com.IQzone.postitial.obfuscated.ed;	 Catch:{ om -> 0x0160 }
        r6 = r12.v;	 Catch:{ om -> 0x0160 }
        r6 = r6.b;	 Catch:{ om -> 0x0160 }
        r7 = r12.v;	 Catch:{ om -> 0x0160 }
        r7 = r7.a;	 Catch:{ om -> 0x0160 }
        r2.<init>(r6, r7);	 Catch:{ om -> 0x0160 }
        r0.a(r2);	 Catch:{ om -> 0x0160 }
        r0 = r12.c;	 Catch:{ om -> 0x0160 }
        r2 = new com.IQzone.postitial.obfuscated.le;	 Catch:{ om -> 0x0160 }
        r2.<init>(r12);	 Catch:{ om -> 0x0160 }
        r0.execute(r2);	 Catch:{ om -> 0x0160 }
        r3 = r4;
        goto L_0x003c;
    L_0x0232:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ om -> 0x0160 }
        throw r0;	 Catch:{ om -> 0x0160 }
    L_0x0235:
        r7.b(r8);	 Catch:{ all -> 0x00fe }
        r0 = a;	 Catch:{ om -> 0x0144 }
        r0 = new java.lang.StringBuilder;	 Catch:{ om -> 0x0144 }
        r7 = "returnVal of doRefresh: ";
        r0.<init>(r7);	 Catch:{ om -> 0x0144 }
        r0 = r0.append(r2);	 Catch:{ om -> 0x0144 }
        r0.toString();	 Catch:{ om -> 0x0144 }
        if (r2 == 0) goto L_0x002b;
    L_0x024a:
        r0 = r6.e();	 Catch:{ om -> 0x0144 }
        r0 = r0.g();	 Catch:{ om -> 0x0144 }
        r6 = r12.v;	 Catch:{ om -> 0x0144 }
        monitor-enter(r6);	 Catch:{ om -> 0x0144 }
        r7 = r12.v;	 Catch:{ all -> 0x027e }
        r7.a = r0;	 Catch:{ all -> 0x027e }
        r0 = r12.v;	 Catch:{ all -> 0x027e }
        r0.b = r1;	 Catch:{ all -> 0x027e }
        monitor-exit(r6);	 Catch:{ all -> 0x027e }
        r0 = a;	 Catch:{ om -> 0x0144 }
        r0 = r12.i;	 Catch:{ om -> 0x0144 }
        r6 = new com.IQzone.postitial.obfuscated.ed;	 Catch:{ om -> 0x0144 }
        r7 = r12.v;	 Catch:{ om -> 0x0144 }
        r7 = r7.b;	 Catch:{ om -> 0x0144 }
        r8 = r12.v;	 Catch:{ om -> 0x0144 }
        r8 = r8.a;	 Catch:{ om -> 0x0144 }
        r6.<init>(r7, r8);	 Catch:{ om -> 0x0144 }
        r0.a(r6);	 Catch:{ om -> 0x0144 }
        r0 = r12.c;	 Catch:{ om -> 0x0144 }
        r6 = new com.IQzone.postitial.obfuscated.le;	 Catch:{ om -> 0x0144 }
        r6.<init>(r12);	 Catch:{ om -> 0x0144 }
        r0.execute(r6);	 Catch:{ om -> 0x0144 }
        goto L_0x002b;
    L_0x027e:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ om -> 0x0144 }
        throw r0;	 Catch:{ om -> 0x0144 }
    L_0x0281:
        r0 = a;	 Catch:{ om -> 0x0144 }
        r0 = new java.lang.StringBuilder;	 Catch:{ om -> 0x0144 }
        r7 = "returnVal of doRefresh: ";
        r0.<init>(r7);	 Catch:{ om -> 0x0144 }
        r0 = r0.append(r2);	 Catch:{ om -> 0x0144 }
        r0.toString();	 Catch:{ om -> 0x0144 }
        if (r2 == 0) goto L_0x002b;
    L_0x0293:
        r0 = r6.e();	 Catch:{ om -> 0x0144 }
        r0 = r0.g();	 Catch:{ om -> 0x0144 }
        r6 = r12.v;	 Catch:{ om -> 0x0144 }
        monitor-enter(r6);	 Catch:{ om -> 0x0144 }
        r7 = r12.v;	 Catch:{ all -> 0x02c7 }
        r7.a = r0;	 Catch:{ all -> 0x02c7 }
        r0 = r12.v;	 Catch:{ all -> 0x02c7 }
        r0.b = r1;	 Catch:{ all -> 0x02c7 }
        monitor-exit(r6);	 Catch:{ all -> 0x02c7 }
        r0 = a;	 Catch:{ om -> 0x0144 }
        r0 = r12.i;	 Catch:{ om -> 0x0144 }
        r6 = new com.IQzone.postitial.obfuscated.ed;	 Catch:{ om -> 0x0144 }
        r7 = r12.v;	 Catch:{ om -> 0x0144 }
        r7 = r7.b;	 Catch:{ om -> 0x0144 }
        r8 = r12.v;	 Catch:{ om -> 0x0144 }
        r8 = r8.a;	 Catch:{ om -> 0x0144 }
        r6.<init>(r7, r8);	 Catch:{ om -> 0x0144 }
        r0.a(r6);	 Catch:{ om -> 0x0144 }
        r0 = r12.c;	 Catch:{ om -> 0x0144 }
        r6 = new com.IQzone.postitial.obfuscated.le;	 Catch:{ om -> 0x0144 }
        r6.<init>(r12);	 Catch:{ om -> 0x0144 }
        r0.execute(r6);	 Catch:{ om -> 0x0144 }
        goto L_0x002b;
    L_0x02c7:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ om -> 0x0144 }
        throw r0;	 Catch:{ om -> 0x0144 }
    L_0x02ca:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ om -> 0x0144 }
        throw r0;	 Catch:{ om -> 0x0144 }
    L_0x02cd:
        r0 = a;	 Catch:{ om -> 0x0144 }
        r3 = r4;
        goto L_0x003c;
    L_0x02d2:
        r3 = r2;
        goto L_0x003c;
    L_0x02d5:
        r0 = a;
        r0 = a;
        r3 = r4;
        goto L_0x003c;
        */
    }

    private boolean n() {
        List arrayList;
        synchronized (this.b) {
            arrayList = new ArrayList(this.b);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            jl jlVar = (jl) it.next();
            try {
                if (((k) this.d.a(jlVar)).getAdController().c()) {
                    return true;
                }
            } catch (om e) {
                ql qlVar = a;
                new StringBuilder("<PriorityAdLauncher><9>, Couldn't load module: ").append(jlVar.a()).toString();
            }
        }
        return false;
    }

    public final void a(int i) {
        this.C = i;
    }

    public final void a(a aVar) {
        synchronized (this.o) {
            this.o.add(aVar);
        }
    }

    public final void a(b bVar) {
        synchronized (this.q) {
            this.q.add(bVar);
        }
    }

    public final void a(c cVar) {
        synchronized (this.r) {
            this.r.add(cVar);
        }
    }

    public final void a(d dVar) {
        synchronized (this.s) {
            this.s.add(dVar);
        }
    }

    public final void a(e eVar) {
        synchronized (this.t) {
            this.t.add(eVar);
        }
    }

    public final void a(f fVar) {
        synchronized (this.u) {
            this.u.add(fVar);
        }
    }

    public final void a(g gVar) {
        synchronized (this.p) {
            this.p.add(gVar);
        }
    }

    public final synchronized void a(dz dzVar, mx mxVar) {
        boolean z;
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.y.getSystemService("connectivity")).getActiveNetworkInfo();
        z = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        ql qlVar = a;
        this.c.execute(new lf(this, z, dzVar));
    }

    public final synchronized void a(List list) {
        try {
            synchronized (this.b) {
                List arrayList = new ArrayList(this.b);
            }
            boolean z;
            if (list.size() == arrayList.size()) {
                int i = 0;
                while (i < list.size()) {
                    if (((jl) list.get(i)).a() != ((jl) arrayList.get(i)).a()) {
                        z = false;
                        break;
                    } else {
                        i++;
                    }
                }
                int i2 = 1;
            } else {
                z = false;
            }
            synchronized (this.b) {
                this.b.clear();
                this.b.addAll(list);
            }
            if (i2 == 0) {
                b();
            }
        } catch (Throwable th) {
        }
    }

    public final void a(boolean z) {
        this.w = z;
        if (z) {
            List arrayList;
            synchronized (this.b) {
                arrayList = new ArrayList(this.b);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                jl jlVar = (jl) it.next();
                try {
                    ((k) this.d.a(jlVar)).setLoadable();
                } catch (om e) {
                    ql qlVar = a;
                    new StringBuilder("<PriorityAdLauncher><9>, Couldn't load module: ").append(jlVar.a()).toString();
                }
            }
        }
    }

    public final synchronized boolean a() {
        boolean z;
        try {
            List arrayList;
            synchronized (this.b) {
                arrayList = new ArrayList(this.b);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                jl jlVar = (jl) it.next();
                if (!this.l.d(jlVar)) {
                    try {
                        if (((k) this.d.a(jlVar)).getAdLauncher().a()) {
                            z = true;
                            break;
                        }
                    } catch (om e) {
                        ql qlVar = a;
                        new StringBuilder("<PriorityAdLauncher><9>, Couldn't load module: ").append(jlVar.a()).toString();
                    }
                } else {
                    z = true;
                    break;
                }
            }
            z = false;
        } catch (Throwable th) {
        }
        return z;
    }

    public final int b() {
        ql qlVar;
        if (this.B.a() && !mg.a()) {
            qlVar = a;
            try {
                Thread.sleep(3000);
            } catch (InterruptedException e) {
                qlVar = a;
            }
        }
        long b = this.l.b();
        ql qlVar2 = a;
        synchronized (this.b) {
            List arrayList = new ArrayList(this.b);
        }
        if (this.w && arrayList.size() > 0) {
            qlVar2 = a;
            if (b == 0) {
                qlVar = a;
                this.m.a();
            } else {
                qlVar2 = a;
                this.n.execute(new lh(this, b));
            }
        }
        return -1;
    }

    public final void b(int i) {
    }

    public final List c() {
        List arrayList;
        synchronized (this.b) {
            arrayList = new ArrayList(this.b);
        }
        return arrayList;
    }

    public final boolean c(int i) {
        throw new RuntimeException("<PriorityAdLauncher><11>, Not implemented");
    }

    public final void d() {
        synchronized (this.p) {
            if (this.p.size() > 0) {
                this.j.a(new li(this));
            }
        }
    }

    public final boolean d(int i) {
        throw new RuntimeException("<PriorityAdLauncher><13>, Not implemented");
    }

    public final synchronized long e() {
        long j;
        try {
            List arrayList;
            synchronized (this.b) {
                arrayList = new ArrayList(this.b);
            }
            j = Long.MAX_VALUE;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                jl jlVar = (jl) it.next();
                try {
                    long e = ((k) this.d.a(jlVar)).getAdController().e().e();
                    if (e >= j) {
                        e = j;
                    }
                    j = e;
                } catch (om e2) {
                    ql qlVar = a;
                    new StringBuilder("<PriorityAdLauncher><14>, Couldn't load module: ").append(jlVar.a()).toString();
                }
            }
        } catch (Throwable th) {
        }
        return j;
    }

    public final void f() {
        synchronized (this.q) {
            Iterator it = this.q.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a();
            }
        }
    }

    public final void f(int i) {
    }

    public final int g() {
        return -1;
    }

    public final void h() {
        synchronized (this.r) {
            Iterator it = this.r.iterator();
            while (it.hasNext()) {
                ((c) it.next()).a();
            }
        }
    }

    public final void i() {
        synchronized (this.s) {
            Iterator it = this.s.iterator();
            while (it.hasNext()) {
                ((d) it.next()).a();
            }
        }
    }

    public final void j() {
        synchronized (this.t) {
            Iterator it = this.t.iterator();
            while (it.hasNext()) {
                ((e) it.next()).a();
            }
        }
    }

    public final void k() {
        synchronized (this.u) {
            Iterator it = this.u.iterator();
            while (it.hasNext()) {
                ((f) it.next()).a();
            }
        }
    }
}