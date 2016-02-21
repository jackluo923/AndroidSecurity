package com.IQzone.postitial.obfuscated;

import com.facebook.ads.internal.AdWebViewUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class ld implements Runnable {
    private /* synthetic */ la a;

    ld(la laVar) {
        this.a = laVar;
    }

    public final void run() {
        try {
            Thread.sleep(30000);
        } catch (InterruptedException e) {
            la.l();
        }
        while (true) {
            List arrayList;
            synchronized (la.e(this.a)) {
                arrayList = new ArrayList(la.e(this.a));
            }
            Iterator it = arrayList.iterator();
            int i = 1800;
            while (it.hasNext()) {
                int f;
                jl jlVar = (jl) it.next();
                la.l();
                new StringBuilder("REFRESH INTERVAL FOR TYPE ").append(jlVar.f()).toString();
                f = (jlVar.f() >= i || jlVar.f() <= 0) ? i : jlVar.f();
                i = f;
            }
            long e2;
            if (la.b(this.a)) {
                la.l();
                new StringBuilder("AD REFRESH INTERVAL ").append(i).toString();
                long j = (long) ((i * 1000) / 2);
                e2 = this.a.e() + 500;
                if (e2 >= j) {
                    e2 = j;
                }
                if (e2 >= 1000) {
                    la.l();
                    new StringBuilder("REFRESH sleeptime >= 1000 ").append(e2).toString();
                    try {
                        Thread.sleep(e2);
                    } catch (InterruptedException e3) {
                    }
                } else {
                    la.l();
                    new StringBuilder("REFRESH sleeptime < 1000 ").append(e2).toString();
                    try {
                        Thread.sleep(AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                    } catch (InterruptedException e4) {
                    }
                }
                this.a.b();
            } else {
                e2 = i > 0 ? ((long) i) * 1000 : 1000;
                la.l();
                new StringBuilder("REFRESH not active sleeping ").append(e2).toString();
                try {
                    Thread.sleep(e2);
                } catch (InterruptedException e5) {
                    la.l();
                }
            }
        }
    }
}