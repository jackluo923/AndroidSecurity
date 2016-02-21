package com.google.ads.mediation.customevent;

import android.app.Activity;
import com.google.ads.mediation.MediationAdRequest;

public interface CustomEventInterstitial extends CustomEvent {
    void a(CustomEventInterstitialListener customEventInterstitialListener, Activity activity, String str, String str2, MediationAdRequest mediationAdRequest, Object obj);

    void b();
}