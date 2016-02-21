package com.google.ads;

import android.app.Activity;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.util.b;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

class i implements Runnable {
    private final h a;
    private final String b;
    private final AdRequest c;
    private final HashMap d;
    private final boolean e;
    private final WeakReference f;

    class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    public i(h hVar, Activity activity, String str, AdRequest adRequest, HashMap hashMap) {
        this.a = hVar;
        this.b = str;
        this.f = new WeakReference(activity);
        this.c = adRequest;
        this.d = new HashMap(hashMap);
        this.e = a(this.d);
    }

    private void a(MediationAdapter mediationAdapter) {
        Activity activity = (Activity) this.f.get();
        if (activity == null) {
            throw new a("Activity became null while trying to instantiate adapter.");
        }
        MediationServerParameters mediationServerParameters;
        this.a.a(mediationAdapter);
        Class c = mediationAdapter.c();
        if (c != null) {
            MediationServerParameters mediationServerParameters2 = (MediationServerParameters) c.newInstance();
            mediationServerParameters2.a(this.d);
            mediationServerParameters = mediationServerParameters2;
        } else {
            mediationServerParameters = null;
        }
        c = mediationAdapter.b();
        NetworkExtras networkExtras = c != null ? (NetworkExtras) this.c.a(c) : null;
        MediationAdRequest mediationAdRequest = new MediationAdRequest(this.c, activity, this.e);
        if (this.a.a.a()) {
            if (mediationAdapter instanceof MediationInterstitialAdapter) {
                ((MediationInterstitialAdapter) mediationAdapter).a(new k(this.a), activity, mediationServerParameters, mediationAdRequest, networkExtras);
            } else {
                throw new a("Adapter " + this.b + " doesn't support the MediationInterstitialAdapter" + " interface.");
            }
        } else if (mediationAdapter instanceof MediationBannerAdapter) {
            ((MediationBannerAdapter) mediationAdapter).a(new j(this.a), activity, mediationServerParameters, this.a.a.b(), mediationAdRequest, networkExtras);
        } else {
            throw new a("Adapter " + this.b + " doesn't support the MediationBannerAdapter interface");
        }
        this.a.k();
    }

    private void a(String str, Throwable th, com.google.ads.g.a aVar) {
        b.b(str, th);
        this.a.a(false, aVar);
    }

    private static boolean a(Map map) {
        String str = (String) map.remove("gwhirl_share_location");
        if ("1".equals(str)) {
            return true;
        }
        if (!(str == null || "0".equals(str))) {
            b.b("Received an illegal value, '" + str + "', for the special share location parameter from mediation server" + " (expected '0' or '1'). Will not share the location.");
        }
        return false;
    }

    public void run() {
        try {
            b.a("Trying to instantiate: " + this.b);
            a((MediationAdapter) g.a(this.b, MediationAdapter.class));
        } catch (ClassNotFoundException e) {
            a("Cannot find adapter class '" + this.b + "'. Did you link the ad network's mediation adapter? Skipping ad network.", e, com.google.ads.g.a.e);
        } catch (Throwable th) {
            a("Error while creating adapter and loading ad from ad network. Skipping ad network.", th, com.google.ads.g.a.f);
        }
    }
}