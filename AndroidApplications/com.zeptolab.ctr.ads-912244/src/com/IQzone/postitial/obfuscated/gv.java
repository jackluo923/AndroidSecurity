package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Looper;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.gms.cast.Cast;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

public class gv {
    private static final ql a;
    private final pq b;
    private final ma c;
    private final hf d;
    private final oa e;
    private final oa f;
    private final oa g;
    private final oa h;
    private final oa i;
    private final la j;
    private final px k;
    private final Executor l;
    private oa m;
    private final pw n;
    private final Context o;

    static {
        a = new ql();
    }

    public gv(Context context, ou ouVar, String str, es esVar, la laVar, Executor executor, String str2) {
        ql qlVar = a;
        this.o = context;
        this.l = new oc(executor);
        Context applicationContext = context.getApplicationContext();
        try {
            String str3 = (String) applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), Cast.MAX_NAMESPACE_LENGTH).metaData.get("postitial-environment-name");
            if (str3 != null && str2.equals("undefined")) {
                this.b = new lz(str3);
            } else if (str2.equals("undefined")) {
                this.b = new lz(AdTrackerConstants.BLANK);
            } else {
                this.b = new lz(str2);
            }
            qlVar = a;
            this.j = laVar;
            this.k = new gw(this, ouVar);
            qlVar = a;
            mx gyVar = new gy(this, executor);
            ql qlVar2 = a;
            this.c = new ma(this.b, gyVar);
            qlVar = a;
            this.d = a(ouVar, context, executor);
            qlVar = a;
            this.e = new jc(context, executor, str, this.c, esVar, this.d, new ha(this)).a();
            qlVar = a;
            this.f = new hx(context, executor, str, this.c, this.d).a();
            this.m = new iq(context, executor, str, this.c, this.d).a();
            qlVar = a;
            this.g = new id(context, executor, str, this.c, this.d).a();
            qlVar = a;
            this.i = new iw(context, executor, str, this.c, this.d).a();
            qlVar = a;
            this.h = new ij(context, executor, str, this.c, this.d).a();
            qlVar = a;
            qlVar = a;
            this.n = new py(new hb(this));
            qlVar = a;
            qlVar = a;
            if (this.d.c()) {
                qlVar = a;
                qlVar = a;
                qlVar = a;
                new StringBuilder("Ads Enabled: ").append(this.d.f()).toString();
                qlVar = a;
                new StringBuilder("AdsPerDay: ").append(this.d.h()).toString();
                qlVar = a;
                new StringBuilder("TimeBetween: ").append(this.d.g()).toString();
                esVar.a = this.d.f();
                esVar.c = this.d.h();
                esVar.b = (long) ((this.d.g() * 60) * 1000);
                a(this.d.b());
            } else {
                qlVar = a;
                qlVar = a;
                executor.execute(new hd(this));
            }
            qlVar = a;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException(new StringBuilder("<AdClient><1>, Could not retrieve package info: context=").append(applicationContext).toString());
        }
    }

    private static hf a(ou ouVar, Context context, Executor executor) {
        ql qlVar = a;
        ou plVar = new pl(new pm(new pm(new pi(new ox(new File(context.getDir("configuration", AccessibilityNodeInfoCompat.ACTION_PASTE), "termination-properties"), 200000, -1)), new os(new op())), new ot()));
        qlVar = a;
        try {
            boolean parseBoolean;
            boolean parseBoolean2;
            boolean parseBoolean3;
            boolean parseBoolean4;
            int parseInt;
            int parseInt2;
            String str = (String) ouVar.a("postitial-initialized");
            String str2 = (String) ouVar.a("postitial-config-version");
            String str3 = (String) ouVar.a("postitial-device-id");
            String str4 = (String) ouVar.a("postitial-ads-enabled");
            String str5 = (String) ouVar.a("postitial-interval");
            String str6 = (String) ouVar.a("postitial-ads-day");
            String str7 = (String) ouVar.a("postitial-logevent-disabled");
            String str8 = (String) ouVar.a("postitial-assets");
            String str9 = (String) ouVar.a("postitial-homescreens");
            String str10 = (String) ouVar.a("postitial-rich-media-enable");
            ql qlVar2 = a;
            if (str != null) {
                parseBoolean = Boolean.parseBoolean(str);
            } else {
                parseBoolean = false;
                qlVar = a;
            }
            if (str10 != null) {
                parseBoolean2 = Boolean.parseBoolean(str10);
            } else {
                parseBoolean2 = false;
                qlVar = a;
            }
            if (str7 != null) {
                parseBoolean3 = Boolean.parseBoolean(str7);
            } else {
                parseBoolean3 = false;
                qlVar = a;
            }
            if (str2 == null) {
                str2 = "0";
                qlVar = a;
            }
            if (str3 == null) {
                str3 = "0";
                qlVar = a;
            }
            if (str4 != null) {
                parseBoolean4 = Boolean.parseBoolean(str4);
            } else {
                parseBoolean4 = false;
                qlVar = a;
            }
            if (str5 != null) {
                parseInt = Integer.parseInt(str5);
            } else {
                qlVar = a;
                parseInt = 0;
            }
            if (str6 != null) {
                parseInt2 = Integer.parseInt(str6);
            } else {
                qlVar = a;
                parseInt2 = 0;
            }
            if (str8 == null) {
                str8 = "http://postitial.iqzone.com/a/";
            }
            hf hfVar = new hf(parseBoolean, str2, str3, ouVar, plVar, parseBoolean4, parseInt, parseInt2, parseBoolean3, str8, executor, str9 != null ? str9 : AdTrackerConstants.BLANK, parseBoolean2);
            qlVar2 = a;
            qlVar2 = a;
            return hfVar;
        } catch (om e) {
            qlVar = a;
            throw new RuntimeException("<AdClient><8>, ERROR");
        }
    }

    private void a(Set set) {
        Collection arrayList = new ArrayList(set);
        Collections.sort(arrayList, new he(this));
        List arrayList2 = new ArrayList(arrayList);
        this.d.a(new HashSet(arrayList));
        this.j.a(arrayList2);
    }

    public final void a() {
        ql qlVar = a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            new hs(this.o, this.n).run();
        } else {
            new mv(Looper.getMainLooper()).post(new hs(this.o, this.n));
        }
    }

    public final void a(jl jlVar, int i) {
        if (!this.d.i()) {
            try {
                this.i.b(new iv(jlVar, System.currentTimeMillis(), ((Integer) this.k.a()).intValue(), i));
            } catch (om e) {
                throw new RuntimeException("<AdClient><12>, error getting sequence number");
            }
        }
    }

    public final void a(jl jlVar, int i, dz dzVar) {
        try {
            if (!this.d.i()) {
                this.f.b(new hw(jlVar, hu.a(dzVar), System.currentTimeMillis(), ((Integer) this.k.a()).intValue(), i));
            }
        } catch (om e) {
            throw new RuntimeException("<AdClient><11>, This should never happen");
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(com.IQzone.postitial.obfuscated.jl r8, com.IQzone.postitial.obfuscated.dz r9) {
        throw new UnsupportedOperationException("Method not decompiled: com.IQzone.postitial.obfuscated.gv.a(com.IQzone.postitial.obfuscated.jl, com.IQzone.postitial.obfuscated.dz):void");
        /*
        r7 = this;
        if (r8 != 0) goto L_0x0006;
    L_0x0002:
        r7.c();	 Catch:{ om -> 0x002e }
    L_0x0005:
        return;
    L_0x0006:
        r0 = r7.d;	 Catch:{ om -> 0x002e }
        r0 = r0.i();	 Catch:{ om -> 0x002e }
        if (r0 != 0) goto L_0x0037;
    L_0x000e:
        r6 = r7.g;	 Catch:{ om -> 0x002e }
        r0 = new com.IQzone.postitial.obfuscated.ic;	 Catch:{ om -> 0x002e }
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ om -> 0x002e }
        r1 = r7.k;	 Catch:{ om -> 0x002e }
        r1 = r1.a();	 Catch:{ om -> 0x002e }
        r1 = (java.lang.Integer) r1;	 Catch:{ om -> 0x002e }
        r4 = r1.intValue();	 Catch:{ om -> 0x002e }
        r5 = com.IQzone.postitial.obfuscated.hu.a(r9);	 Catch:{ om -> 0x002e }
        r1 = r8;
        r0.<init>(r1, r2, r4, r5);	 Catch:{ om -> 0x002e }
        r6.b(r0);	 Catch:{ om -> 0x002e }
        goto L_0x0005;
    L_0x002e:
        r0 = move-exception;
        r0 = new java.lang.RuntimeException;
        r1 = "<AdClient><10>, This should never happen";
        r0.<init>(r1);
        throw r0;
    L_0x0037:
        r7.c();	 Catch:{ om -> 0x002e }
        goto L_0x0005;
        */
    }

    public final void b() {
        ql qlVar = a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            new ht(this.o, this.n).run();
        } else {
            new mv(Looper.getMainLooper()).post(new ht(this.o, this.n));
        }
    }

    public final void b(jl jlVar, int i) {
        if (!this.d.i()) {
            try {
                this.h.b(new ii(jlVar, System.currentTimeMillis(), ((Integer) this.k.a()).intValue(), i));
            } catch (om e) {
                throw new RuntimeException("<AdClient><13>, error getting sequence number");
            }
        }
    }

    public final void b(jl jlVar, dz dzVar) {
        try {
            if (!this.d.i()) {
                this.m.b(new ip(jlVar, hu.a(dzVar), System.currentTimeMillis(), ((Integer) this.k.a()).intValue()));
            }
        } catch (om e) {
            throw new RuntimeException("<AdClient><11-a>, This should never happen");
        }
    }

    public final void c() {
        this.e.b(new jb());
    }

    public final String d() {
        return this.d.d();
    }

    public final synchronized void e() {
        this.e.a(true);
        this.f.a(true);
        this.g.a(true);
        this.h.a(true);
        this.m.a(true);
        this.i.a(true);
        this.e.c();
        this.f.c();
        this.g.c();
        this.h.c();
        this.m.c();
        this.i.c();
    }

    public final String f() {
        return this.d.a();
    }

    public final String g() {
        return this.d.j();
    }

    public final void h() {
        while (true) {
            if (this.f.e() || this.g.e() || this.h.e() || this.m.e() || this.i.e()) {
                ql qlVar = a;
                qlVar = a;
                new StringBuilder("logImpressionRunner ").append(this.f.e()).toString();
                qlVar = a;
                new StringBuilder("logRequestedRunner ").append(this.g.e()).toString();
                qlVar = a;
                new StringBuilder("logRetrievedRunner ").append(this.h.e()).toString();
                qlVar = a;
                new StringBuilder("logSuitableRunner ").append(this.m.e()).toString();
                qlVar = a;
                new StringBuilder("logTimeoutRunner ").append(this.i.e()).toString();
                try {
                    Thread.sleep(50);
                } catch (InterruptedException e) {
                    qlVar = a;
                }
            } else {
                return;
            }
        }
    }
}