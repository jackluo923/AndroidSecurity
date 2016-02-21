package com.chartboost.sdk;

import com.chartboost.sdk.Chartboost.CBAgeGateConfirmation;
import com.chartboost.sdk.Model.CBError.CBClickError;
import com.chartboost.sdk.Model.CBError.CBImpressionError;

public interface ChartboostDelegate {
    void didCacheInterstitial(String str);

    void didCacheMoreApps();

    void didClickInterstitial(String str);

    void didClickMoreApps();

    void didCloseInterstitial(String str);

    void didCloseMoreApps();

    void didDismissInterstitial(String str);

    void didDismissMoreApps();

    void didFailToLoadInterstitial(String str, CBImpressionError cBImpressionError);

    void didFailToLoadMoreApps(CBImpressionError cBImpressionError);

    void didFailToRecordClick(String str, CBClickError cBClickError);

    void didShowInterstitial(String str);

    void didShowMoreApps();

    boolean shouldDisplayInterstitial(String str);

    boolean shouldDisplayLoadingViewForMoreApps();

    boolean shouldDisplayMoreApps();

    boolean shouldPauseClickForConfirmation(CBAgeGateConfirmation cBAgeGateConfirmation);

    boolean shouldRequestInterstitial(String str);

    boolean shouldRequestInterstitialsInFirstSession();

    boolean shouldRequestMoreApps();
}