package com.inmobi.androidsdk;

import com.inmobi.androidsdk.AdRequest.ErrorCode;
import java.util.Map;

public interface InterstitialViewListener {
    void onAdRequestFailed(InterstitialView interstitialView, ErrorCode errorCode);

    void onAdRequestLoaded(InterstitialView interstitialView);

    void onDismissAdScreen(InterstitialView interstitialView);

    void onIncentCompleted(InterstitialView interstitialView, Map map);

    void onInterstitialInteraction(InterstitialView interstitialView, Map map);

    void onLeaveApplication(InterstitialView interstitialView);

    void onShowAdScreen(InterstitialView interstitialView);
}