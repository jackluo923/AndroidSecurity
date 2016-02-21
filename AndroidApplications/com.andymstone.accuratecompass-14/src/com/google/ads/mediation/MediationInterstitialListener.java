package com.google.ads.mediation;

import com.google.ads.AdRequest.ErrorCode;

public interface MediationInterstitialListener {
    void a(MediationInterstitialAdapter mediationInterstitialAdapter);

    void a(MediationInterstitialAdapter mediationInterstitialAdapter, ErrorCode errorCode);

    void b(MediationInterstitialAdapter mediationInterstitialAdapter);

    void c(MediationInterstitialAdapter mediationInterstitialAdapter);

    void d(MediationInterstitialAdapter mediationInterstitialAdapter);
}