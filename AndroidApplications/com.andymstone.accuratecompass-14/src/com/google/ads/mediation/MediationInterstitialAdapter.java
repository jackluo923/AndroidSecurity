package com.google.ads.mediation;

import android.app.Activity;

public interface MediationInterstitialAdapter extends MediationAdapter {
    void a(MediationInterstitialListener mediationInterstitialListener, Activity activity, MediationServerParameters mediationServerParameters, MediationAdRequest mediationAdRequest, NetworkExtras networkExtras);

    void e();
}