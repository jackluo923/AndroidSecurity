package com.google.android.gms.internal;

import android.app.Activity;
import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.mediation.admob.AdMobServerParameters;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.internal.bg.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public final class bi extends a {
    private final MediationAdapter mR;
    private final NetworkExtras mS;

    public bi(MediationAdapter mediationAdapter, NetworkExtras networkExtras) {
        this.mR = mediationAdapter;
        this.mS = networkExtras;
    }

    private MediationServerParameters a(String str, int i, String str2) {
        if (str != null) {
            JSONObject jSONObject = new JSONObject(str);
            Map hashMap = new HashMap(jSONObject.length());
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                String str3 = (String) keys.next();
                hashMap.put(str3, jSONObject.getString(str3));
            }
            Map map = hashMap;
        } else {
            HashMap hashMap2 = new HashMap(0);
        }
        Class serverParametersType = this.mR.getServerParametersType();
        MediationServerParameters mediationServerParameters = null;
        if (serverParametersType != null) {
            MediationServerParameters mediationServerParameters2 = (MediationServerParameters) serverParametersType.newInstance();
            mediationServerParameters2.load(map);
            mediationServerParameters = mediationServerParameters2;
        }
        if (mediationServerParameters instanceof AdMobServerParameters) {
            AdMobServerParameters adMobServerParameters = (AdMobServerParameters) mediationServerParameters;
            adMobServerParameters.adJson = str2;
            adMobServerParameters.tagForChildDirectedTreatment = i;
        }
        return mediationServerParameters;
    }

    public void a(b bVar, ab abVar, z zVar, String str, bh bhVar) {
        a(bVar, abVar, zVar, str, null, bhVar);
    }

    public void a(b bVar, ab abVar, z zVar, String str, String str2, bh bhVar) {
        if (this.mR instanceof MediationBannerAdapter) {
            da.s("Requesting banner ad from adapter.");
            ((MediationBannerAdapter) this.mR).requestBannerAd(new bj(bhVar), (Activity) c.b(bVar), a(str, zVar.tagForChildDirectedTreatment, str2), bk.b(abVar), bk.e(zVar), this.mS);
        } else {
            da.w("MediationAdapter is not a MediationBannerAdapter: " + this.mR.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void a(b bVar, z zVar, String str, bh bhVar) {
        a(bVar, zVar, str, null, bhVar);
    }

    public void a(b bVar, z zVar, String str, String str2, bh bhVar) {
        if (this.mR instanceof MediationInterstitialAdapter) {
            da.s("Requesting interstitial ad from adapter.");
            ((MediationInterstitialAdapter) this.mR).requestInterstitialAd(new bj(bhVar), (Activity) c.b(bVar), a(str, zVar.tagForChildDirectedTreatment, str2), bk.e(zVar), this.mS);
        } else {
            da.w("MediationAdapter is not a MediationInterstitialAdapter: " + this.mR.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void destroy() {
        this.mR.destroy();
    }

    public b getView() {
        if (this.mR instanceof MediationBannerAdapter) {
            return c.h(((MediationBannerAdapter) this.mR).getBannerView());
        }
        da.w("MediationAdapter is not a MediationBannerAdapter: " + this.mR.getClass().getCanonicalName());
        throw new RemoteException();
    }

    public void showInterstitial() {
        if (this.mR instanceof MediationInterstitialAdapter) {
            da.s("Showing interstitial from adapter.");
            ((MediationInterstitialAdapter) this.mR).showInterstitial();
        } else {
            da.w("MediationAdapter is not a MediationInterstitialAdapter: " + this.mR.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }
}