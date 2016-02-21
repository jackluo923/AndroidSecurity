package com.zeptolab.ctr.ads;

import android.app.Activity;
import android.content.Intent;
import android.widget.RelativeLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.vungle.publisher.EventListener;
import com.vungle.publisher.VunglePub;
import com.zeptolab.ctr.L;
import com.zeptolab.zbuild.ZBuildConfig;

public class VungleInterstitialBanner implements EventListener, InterstitialBanner {
    private static final String TAG = "VungleInterstitialBanner";
    protected Activity m_activity;
    private boolean m_isInitialized;
    private final VunglePub m_vunglePub;

    public VungleInterstitialBanner(Activity activity) {
        this.m_vunglePub = VunglePub.getInstance();
        this.m_isInitialized = false;
        this.m_activity = activity;
        this.m_isInitialized = this.m_vunglePub.init(this.m_activity, ZBuildConfig.$package_name);
        if (this.m_isInitialized) {
            this.m_vunglePub.setEventListener(this);
            L.d(TAG, "initialized");
            SwitcherInterstitialBanner.getInstance().addVideoBanner(this);
        } else {
            L.w(TAG, "initialization failed");
        }
    }

    public boolean handleActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    public boolean isAvailable() {
        L.d(TAG, "isAvailable");
        return this.m_isInitialized ? this.m_vunglePub.isCachedAdAvailable() : false;
    }

    public void onAdEnd(boolean z) {
        L.d(TAG, "ad ended");
        SwitcherInterstitialBanner.getInstance().videoBannerFinished();
    }

    public void onAdStart() {
        L.d(TAG, "ad started");
    }

    public void onAdUnavailable(String str) {
        L.d(TAG, "cached ad unavailable");
    }

    public void onCachedAdAvailable() {
        L.d(TAG, "cached ad available");
    }

    public void onDestroy() {
        this.m_isInitialized = false;
    }

    public void onPause() {
        L.d(TAG, "paused");
        if (this.m_isInitialized) {
            this.m_vunglePub.onPause();
        }
    }

    public void onResume() {
        L.d(TAG, "resumed");
        if (this.m_isInitialized) {
            this.m_vunglePub.onResume();
        }
    }

    public void onVideoView(boolean z, int i, int i2) {
        L.d(TAG, "onVideoView(isCompletedView = " + z + ", watchedMillis = " + i + ", videoDurationMillis = " + i2 + ")");
        if (z) {
            SwitcherInterstitialBanner.getInstance().videoBannerWatched(100.0f);
        } else {
            SwitcherInterstitialBanner.getInstance().videoBannerWatched(BitmapDescriptorFactory.HUE_RED);
        }
    }

    public void setLayout(RelativeLayout relativeLayout) {
    }

    public boolean showInterstitial(boolean z, boolean z2) {
        L.d(TAG, "showInterstitial(showVideos = " + z + ", showInterstitials = " + z2 + ")");
        return z ? showVideoBanner() : false;
    }

    public boolean showVideoBanner() {
        L.d(TAG, "showVideoBanner");
        if (!this.m_isInitialized) {
            return false;
        }
        Runnable anonymousClass_1 = new Runnable() {
            public void run() {
                try {
                    VungleInterstitialBanner.this.m_vunglePub.playAd();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        };
        if (!this.m_vunglePub.isCachedAdAvailable()) {
            return false;
        }
        this.m_activity.runOnUiThread(anonymousClass_1);
        return true;
    }
}