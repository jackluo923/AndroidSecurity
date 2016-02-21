package com.google.ads;

import android.app.Activity;
import com.google.ads.c.b;
import com.google.ads.c.c;
import com.google.ads.c.d;
import com.google.ads.c.e;
import com.google.ads.util.g;
import java.lang.ref.WeakReference;
import java.util.HashMap;

final class bj implements Runnable {
    private final bh a;
    private final String b;
    private final d c;
    private final HashMap d;
    private final boolean e;
    private final WeakReference f;

    public bj(bh bhVar, Activity activity, String str, d dVar, HashMap hashMap) {
        boolean z;
        this.a = bhVar;
        this.b = str;
        this.f = new WeakReference(activity);
        this.c = dVar;
        this.d = new HashMap(hashMap);
        String str2 = (String) this.d.remove("gwhirl_share_location");
        if ("1".equals(str2)) {
            z = true;
        } else {
            if (!(str2 == null || "0".equals(str2))) {
                g.b(new StringBuilder("Received an illegal value, '").append(str2).append("', for the special share location parameter from mediation server (expected '0' or '1'). Will not share the location.").toString());
            }
            z = false;
        }
        this.e = z;
    }

    private void a(String str, Throwable th, bg bgVar) {
        g.b(str, th);
        this.a.a(bgVar);
    }

    public final void run() {
        try {
            g.a(new StringBuilder("Trying to instantiate: ").append(this.b).toString());
            b bVar = (b) b.class.cast(Class.forName(this.b).newInstance());
            if (((Activity) this.f.get()) == null) {
                throw new bk("Activity became null while trying to instantiate adapter.");
            }
            this.a.a(bVar);
            Class c = bVar.c();
            if (c != null) {
                ((e) c.newInstance()).a(this.d);
            }
            c = bVar.b();
            if (c != null) {
                this.c.a(c);
            }
            d dVar = this.c;
            boolean z = this.e;
            bh bhVar;
            if (this.a.a.a()) {
                if (bVar instanceof d) {
                    d dVar2 = (d) bVar;
                    bhVar = this.a;
                    dVar2.d();
                } else {
                    throw new bk(new StringBuilder("Adapter ").append(this.b).append(" doesn't support the MediationInterstitialAdapter interface.").toString());
                }
            } else if (bVar instanceof c) {
                c cVar = (c) bVar;
                bhVar = this.a;
                this.a.a.c();
                cVar.d();
            } else {
                throw new bk(new StringBuilder("Adapter ").append(this.b).append(" doesn't support the MediationBannerAdapter interface").toString());
            }
            this.a.g();
        } catch (ClassNotFoundException e) {
            a(new StringBuilder("Cannot find adapter class '").append(this.b).append("'. Did you link the ad network's mediation adapter? Skipping ad network.").toString(), e, bg.e);
        } catch (Throwable th) {
            a("Error while creating adapter and loading ad from ad network. Skipping ad network.", th, bg.f);
        }
    }
}