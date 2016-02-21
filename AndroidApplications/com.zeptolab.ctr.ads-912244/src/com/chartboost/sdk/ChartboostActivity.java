package com.chartboost.sdk;

import android.app.Activity;
import android.os.Bundle;
import com.chartboost.sdk.Chartboost.CBAgeGateConfirmation;
import com.chartboost.sdk.Model.CBError.CBClickError;
import com.chartboost.sdk.Model.CBError.CBImpressionError;

public abstract class ChartboostActivity extends Activity implements ChartboostDelegate {
    private Chartboost a;

    public void didCacheInterstitial(String str) {
    }

    public void didCacheMoreApps() {
    }

    public void didClickInterstitial(String str) {
    }

    public void didClickMoreApps() {
    }

    public void didCloseInterstitial(String str) {
    }

    public void didCloseMoreApps() {
    }

    public void didDismissInterstitial(String str) {
    }

    public void didDismissMoreApps() {
    }

    public void didFailToLoadInterstitial(String str, CBImpressionError cBImpressionError) {
    }

    public void didFailToLoadMoreApps(CBImpressionError cBImpressionError) {
    }

    public void didFailToRecordClick(String str, CBClickError cBClickError) {
    }

    public void didShowInterstitial(String str) {
    }

    public void didShowMoreApps() {
    }

    protected abstract String getChartboostAppID();

    protected abstract String getChartboostAppSignature();

    public void onBackPressed() {
        if (!this.a.onBackPressed()) {
            super.onBackPressed();
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = Chartboost.sharedChartboost();
        this.a.onCreate(this, getChartboostAppID(), getChartboostAppSignature(), this);
    }

    protected void onDestroy() {
        super.onDestroy();
        this.a.onDestroy(this);
    }

    protected void onStart() {
        super.onStart();
        this.a.onStart(this);
        this.a.startSession();
    }

    protected void onStop() {
        super.onStop();
        this.a.onStop(this);
    }

    public boolean shouldDisplayInterstitial(String str) {
        return true;
    }

    public boolean shouldDisplayLoadingViewForMoreApps() {
        return true;
    }

    public boolean shouldDisplayMoreApps() {
        return true;
    }

    public boolean shouldPauseClickForConfirmation(CBAgeGateConfirmation cBAgeGateConfirmation) {
        return false;
    }

    public boolean shouldRequestInterstitial(String str) {
        return true;
    }

    public boolean shouldRequestInterstitialsInFirstSession() {
        return true;
    }

    public boolean shouldRequestMoreApps() {
        return true;
    }
}