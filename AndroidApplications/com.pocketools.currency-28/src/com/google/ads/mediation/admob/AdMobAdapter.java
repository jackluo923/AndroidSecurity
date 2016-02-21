package com.google.ads.mediation.admob;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.ads.InterstitialAd;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.util.AdUtil;

public class AdMobAdapter implements MediationBannerAdapter<AdMobAdapterExtras, AdMobAdapterServerParameters>, MediationInterstitialAdapter<AdMobAdapterExtras, AdMobAdapterServerParameters> {
    private MediationBannerListener a;
    private MediationInterstitialListener b;
    private AdView c;
    private InterstitialAd d;

    private class a implements AdListener {
        private a() {
        }

        public void onDismissScreen(Ad ad) {
            AdMobAdapter.this.onDismissScreen(AdMobAdapter.this);
        }

        public void onFailedToReceiveAd(Ad ad, ErrorCode error) {
            AdMobAdapter.this.onFailedToReceiveAd(AdMobAdapter.this, error);
        }

        public void onLeaveApplication(Ad ad) {
            AdMobAdapter.this.onLeaveApplication(AdMobAdapter.this);
        }

        public void onPresentScreen(Ad ad) {
            AdMobAdapter.this.onClick(AdMobAdapter.this);
            AdMobAdapter.this.onPresentScreen(AdMobAdapter.this);
        }

        public void onReceiveAd(Ad ad) {
            AdMobAdapter.this.onReceivedAd(AdMobAdapter.this);
        }
    }

    private class b implements AdListener {
        private b() {
        }

        public void onDismissScreen(Ad ad) {
            AdMobAdapter.this.b.onDismissScreen(AdMobAdapter.this);
        }

        public void onFailedToReceiveAd(Ad ad, ErrorCode error) {
            AdMobAdapter.this.b.onFailedToReceiveAd(AdMobAdapter.this, error);
        }

        public void onLeaveApplication(Ad ad) {
            AdMobAdapter.this.b.onLeaveApplication(AdMobAdapter.this);
        }

        public void onPresentScreen(Ad ad) {
            AdMobAdapter.this.b.onPresentScreen(AdMobAdapter.this);
        }

        public void onReceiveAd(Ad ad) {
            AdMobAdapter.this.b.onReceivedAd(AdMobAdapter.this);
        }
    }

    private AdRequest a(Context context, AdMobAdapterServerParameters adMobAdapterServerParameters, MediationAdRequest mediationAdRequest, AdMobAdapterExtras adMobAdapterExtras) {
        NetworkExtras adMobAdapterExtras2 = new AdMobAdapterExtras(adMobAdapterExtras);
        adMobAdapterExtras2.addExtra("_norefresh", "t");
        if (adMobAdapterServerParameters.allowHouseAds != null) {
            adMobAdapterExtras2.addExtra("mad_hac", adMobAdapterServerParameters.allowHouseAds);
        }
        AdRequest networkExtras = new AdRequest().setBirthday(mediationAdRequest.getBirthday()).setGender(mediationAdRequest.getGender()).setKeywords(mediationAdRequest.getKeywords()).setLocation(mediationAdRequest.getLocation()).setNetworkExtras(adMobAdapterExtras2);
        if (mediationAdRequest.isTesting()) {
            networkExtras.addTestDevice(AdUtil.a(context));
        }
        return networkExtras;
    }

    private void a() {
        if (b()) {
            throw new IllegalStateException("Adapter has already been destroyed");
        }
    }

    private boolean b() {
        return this.c == null && this.d == null;
    }

    protected AdView a(Activity activity, AdSize adSize, String str) {
        return new AdView(activity, adSize, str);
    }

    protected InterstitialAd a(Activity activity, String str) {
        return new InterstitialAd(activity, str);
    }

    public void destroy() {
        a();
        if (this.c != null) {
            this.c.stopLoading();
            this.c.destroy();
            this.c = null;
        }
        if (this.d != null) {
            this.d.stopLoading();
            this.d = null;
        }
    }

    public Class<AdMobAdapterExtras> getAdditionalParametersType() {
        return AdMobAdapterExtras.class;
    }

    public View getBannerView() {
        return this.c;
    }

    public Class<AdMobAdapterServerParameters> getServerParametersType() {
        return AdMobAdapterServerParameters.class;
    }

    public void requestBannerAd(MediationBannerListener listener, Activity activity, AdMobAdapterServerParameters serverParameters, AdSize adSize, MediationAdRequest mediationAdRequest, AdMobAdapterExtras extras) {
        this.a = listener;
        if (!(adSize.isAutoHeight() || adSize.isFullWidth())) {
            if (extras == null || !extras.getUseExactAdSize()) {
                adSize = adSize.findBestSize(new AdSize[]{AdSize.BANNER, AdSize.IAB_BANNER, AdSize.IAB_LEADERBOARD, AdSize.IAB_MRECT, AdSize.IAB_WIDE_SKYSCRAPER});
                if (adSize == null) {
                    listener.onFailedToReceiveAd(this, ErrorCode.NO_FILL);
                    return;
                }
            }
        }
        this.c = a(activity, adSize, serverParameters.adUnitId);
        this.c.setAdListener(new a(null));
        this.c.loadAd(a(activity, serverParameters, mediationAdRequest, extras));
    }

    public void requestInterstitialAd(MediationInterstitialListener listener, Activity activity, AdMobAdapterServerParameters serverParameters, MediationAdRequest mediationAdRequest, AdMobAdapterExtras extras) {
        this.b = listener;
        this.d = a(activity, serverParameters.adUnitId);
        this.d.setAdListener(new b(null));
        this.d.loadAd(a(activity, serverParameters, mediationAdRequest, extras));
    }

    public void showInterstitial() {
        this.d.show();
    }
}