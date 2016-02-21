package com.inmobi.monetization;

import java.util.Map;

public interface IMInterstitialListener {
    void onDismissInterstitialScreen(IMInterstitial iMInterstitial);

    void onInterstitialFailed(IMInterstitial iMInterstitial, IMErrorCode iMErrorCode);

    void onInterstitialInteraction(IMInterstitial iMInterstitial, Map map);

    void onInterstitialLoaded(IMInterstitial iMInterstitial);

    void onLeaveApplication(IMInterstitial iMInterstitial);

    void onShowInterstitialScreen(IMInterstitial iMInterstitial);
}