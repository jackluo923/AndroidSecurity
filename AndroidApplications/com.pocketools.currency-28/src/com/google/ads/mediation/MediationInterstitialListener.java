package com.google.ads.mediation;

import com.google.ads.AdRequest.ErrorCode;

public interface MediationInterstitialListener {
    void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter);

    void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, ErrorCode errorCode);

    void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter);

    void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter);

    void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter);
}