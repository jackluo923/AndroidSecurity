package com.heyzap.sdk.integrations.a;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.heyzap.sdk.ads.HeyzapAds;
import com.heyzap.sdk.ads.HeyzapAds.OnStatusListener;
import com.heyzap.sdk.ads.InterstitialAd;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.Map;

class a extends CustomEventInterstitial implements OnStatusListener {
    private Context a;
    private boolean b;
    private CustomEventInterstitialListener c;
    private String d;

    a() {
        this.d = null;
    }

    protected void a_() {
        if (InterstitialAd.isAvailable().booleanValue()) {
            InterstitialAd.display((Activity) this.a);
        } else {
            Log.d("MoPub", "Tried to show a Heyzap interstitial ad before it finished loading. Please try again.");
        }
    }

    protected void a_(Context context, CustomEventInterstitialListener customEventInterstitialListener, Map map, Map map2) {
        this.c = customEventInterstitialListener;
        if (context instanceof Activity) {
            this.a = context;
            if (!HeyzapAds.hasStarted().booleanValue()) {
                HeyzapAds.mediator = AdWebViewClient.MOPUB;
                String str = (String) map.get("publisher_id");
                String str2 = (String) map2.get("publisher_id");
                if (str2 != null) {
                    this.d = str2;
                } else if (str != null) {
                    this.d = str;
                }
                if (this.d != null) {
                    HeyzapAds.start(this.d, (Activity) context, 1);
                } else {
                    Log.d("MoPub", "Heyzap not enabled. Could not find publisher_id in either the local or server extras.");
                    this.c.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                }
            }
            InterstitialAd.setOnStatusListener(this);
            InterstitialAd.fetch();
        } else {
            this.c.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
        }
    }

    protected void b() {
        InterstitialAd.setOnStatusListener(null);
    }

    public void onAudioFinished() {
    }

    public void onAudioStarted() {
    }

    public void onAvailable(String str) {
        Log.d("MoPub", "Heyzap interstitial ad loaded successfully.");
        this.c.onInterstitialLoaded();
    }

    public void onClick(String str) {
        Log.d("MoPub", "Heyzap interstitial ad clicked.");
        this.c.onInterstitialClicked();
    }

    public void onFailedToFetch(String str) {
        Log.d("MoPub", "Heyzap interstitial ad failed to load.");
        this.c.onInterstitialFailed(MoPubErrorCode.NETWORK_NO_FILL);
    }

    public void onFailedToShow(String str) {
        Log.d("MoPub", "Heyzap interstitial ad failed to show.");
        this.c.onInterstitialFailed(MoPubErrorCode.NETWORK_TIMEOUT);
    }

    public void onHide(String str) {
        Log.d("MoPub", "Heyzap interstitial ad dismissed.");
        this.c.onInterstitialDismissed();
    }

    public void onShow(String str) {
        Log.d("MoPub", "Showing Heyzap interstitial ad.");
        this.c.onInterstitialShown();
    }
}