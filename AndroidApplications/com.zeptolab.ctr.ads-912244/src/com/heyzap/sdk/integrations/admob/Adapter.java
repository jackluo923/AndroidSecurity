package com.heyzap.sdk.integrations.admob;

import android.app.Activity;
import android.os.Build.VERSION;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.heyzap.sdk.ads.HeyzapAds;
import com.heyzap.sdk.ads.HeyzapAds.OnStatusListener;
import com.heyzap.sdk.ads.InterstitialAd;

public class Adapter implements MediationInterstitialAdapter {
    private Activity activity;
    private a heyzapListener;
    private MediationInterstitialListener interstitialListener;

    private class a implements OnStatusListener {
        private a() {
        }

        public void onAudioFinished() {
        }

        public void onAudioStarted() {
        }

        public void onAvailable(String str) {
            if (Adapter.this.interstitialListener != null) {
                Adapter.this.interstitialListener.onReceivedAd(Adapter.this);
            }
        }

        public void onClick(String str) {
            if (Adapter.this.interstitialListener != null) {
                Adapter.this.interstitialListener.onLeaveApplication(Adapter.this);
            }
        }

        public void onFailedToFetch(String str) {
            if (Adapter.this.interstitialListener != null) {
                Adapter.this.interstitialListener.onFailedToReceiveAd(Adapter.this, ErrorCode.NO_FILL);
            }
        }

        public void onFailedToShow(String str) {
            if (Adapter.this.interstitialListener != null) {
                Adapter.this.interstitialListener.onFailedToReceiveAd(Adapter.this, ErrorCode.INVALID_REQUEST);
            }
        }

        public void onHide(String str) {
            if (Adapter.this.interstitialListener != null) {
                Adapter.this.interstitialListener.onDismissScreen(Adapter.this);
            }
        }

        public void onShow(String str) {
            if (Adapter.this.interstitialListener != null) {
                Adapter.this.interstitialListener.onPresentScreen(Adapter.this);
            }
        }
    }

    public void destroy() {
    }

    public Class getAdditionalParametersType() {
        return AdapterExtras.class;
    }

    public Class getServerParametersType() {
        return ServerParameters.class;
    }

    public void requestInterstitialAd(MediationInterstitialListener mediationInterstitialListener, Activity activity, ServerParameters serverParameters, MediationAdRequest mediationAdRequest, AdapterExtras adapterExtras) {
        this.interstitialListener = mediationInterstitialListener;
        this.activity = activity;
        if (VERSION.SDK_INT < 9) {
            this.interstitialListener.onFailedToReceiveAd(this, ErrorCode.INVALID_REQUEST);
        } else {
            this.heyzapListener = new a(null);
            if (HeyzapAds.hasStarted().booleanValue()) {
                HeyzapAds.setOnStatusListener(this.heyzapListener);
            } else {
                HeyzapAds.start(serverParameters.publisherId, activity, 1, this.heyzapListener);
                HeyzapAds.mediator = "admob";
            }
            InterstitialAd.fetch();
        }
    }

    public void showInterstitial() {
        if (this.activity != null) {
            InterstitialAd.display(this.activity);
        } else {
            this.interstitialListener.onFailedToReceiveAd(this, ErrorCode.INVALID_REQUEST);
        }
    }
}