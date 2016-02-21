package com.zeptolab.ctr.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationManager;
import android.widget.RelativeLayout;
import com.admarvel.android.ads.AdMarvelActivity;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelInterstitialAds;
import com.admarvel.android.ads.AdMarvelInterstitialAds.AdMarvelInterstitialAdListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.ads.AdMarvelVideoActivity;
import com.brightcove.player.event.EventType;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.CtrPreferences;
import com.zeptolab.ctr.L;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

public class AdMarvelInterstitial {
    private static final String TAG = "AdMarvelInterstitial";
    private boolean isShowingVideo;
    private final Activity m_activity;
    private AdMarvelActivity m_adMarvelActivity;
    private AdMarvelVideoActivity m_adMarvelVideoActivity;
    private Map m_defaultTargetParams;
    private AdMarvelInterstitialBanner staticBanner;
    private AdMarvelInterstitialBanner videoBanner;

    private class AdMarvelInterstitialAdListenerImpl implements AdMarvelInterstitialAdListener {
        private AdMarvelInterstitialAdListenerImpl() {
        }

        public void onAdMarvelVideoActivityLaunched(AdMarvelVideoActivity adMarvelVideoActivity) {
            AdMarvelInterstitial.this.m_adMarvelVideoActivity = adMarvelVideoActivity;
            L.d(TAG, "onAdmarvelVideoActivityLaunched");
        }

        public void onAdmarvelActivityLaunched(AdMarvelActivity adMarvelActivity) {
            AdMarvelInterstitial.this.m_adMarvelActivity = adMarvelActivity;
            L.d(TAG, "onAdmarvelActivityLaunched");
        }

        public void onClickInterstitialAd(String str) {
            L.d(TAG, "InterstitialClickUrl: " + str);
        }

        public void onCloseInterstitialAd() {
            L.d(TAG, "onCloseInterstitialAd");
            if (AdMarvelInterstitial.this.m_adMarvelActivity != null) {
                L.d(TAG, "adMarvel static interstitial closed");
                AdMarvelInterstitial.this.m_adMarvelActivity.finish();
                AdMarvelInterstitial.this.m_adMarvelActivity = null;
                AdMarvelInterstitial.this.staticBanner.m_interParams = null;
                if (AdMarvelInterstitial.this.isShowingVideo) {
                    SwitcherInterstitialBanner.getInstance().videoBannerWatched(100.0f);
                } else {
                    SwitcherInterstitialBanner.getInstance().interstitialWatched();
                }
                AdMarvelInterstitial.this.staticBanner.requestNewAd();
            } else if (AdMarvelInterstitial.this.m_adMarvelVideoActivity != null) {
                L.d(TAG, "adMarvel video interstitial closed");
                AdMarvelInterstitial.this.m_adMarvelVideoActivity.finish();
                AdMarvelInterstitial.this.m_adMarvelVideoActivity = null;
                AdMarvelInterstitial.this.videoBanner.m_interParams = null;
                SwitcherInterstitialBanner.getInstance().videoBannerWatched(100.0f);
                AdMarvelInterstitial.this.videoBanner.requestNewAd();
            } else if (AdMarvelInterstitial.this.isShowingVideo) {
                L.d(TAG, "adNetwork video interstitial closed");
                AdMarvelInterstitial.this.videoBanner.m_interParams = null;
                SwitcherInterstitialBanner.getInstance().videoBannerWatched(100.0f);
                AdMarvelInterstitial.this.videoBanner.requestNewAd();
            } else {
                L.d(TAG, "adNetwork static interstitial closed");
                AdMarvelInterstitial.this.staticBanner.m_interParams = null;
                SwitcherInterstitialBanner.getInstance().interstitialWatched();
                AdMarvelInterstitial.this.staticBanner.requestNewAd();
            }
            AdMarvelInterstitial.this.isShowingVideo = false;
            CtrPreferences.getInstance().setIntforKey("ADMARVEL_SESSION_COUNTER_INTERSTITIAL", CtrPreferences.getInstance().getIntForKey("ADMARVEL_SESSION_COUNTER_INTERSTITIAL") + 1, true);
            SwitcherInterstitialBanner.getInstance().videoBannerFinished();
        }

        public void onFailedToReceiveInterstitialAd(SDKAdNetwork sDKAdNetwork, String str, int i, ErrorReason errorReason) {
            L.w(TAG, "failed to receive interstitial " + sDKAdNetwork + "; errorCode: " + i + " errorReason: " + errorReason.toString());
        }

        public void onReceiveInterstitialAd(SDKAdNetwork sDKAdNetwork, String str, AdMarvelAd adMarvelAd) {
            L.d(TAG, "interstitial received " + sDKAdNetwork + " " + str + " " + adMarvelAd);
            if (sDKAdNetwork == SDKAdNetwork.ADCOLONY || str.endsWith(AdMarvelInterstitial.this.videoBanner.admarvel_site_id_phone) || str.endsWith(AdMarvelInterstitial.this.videoBanner.admarvel_site_id_tablet)) {
                AdMarvelInterstitial.this.videoBanner.m_interParams = new InterstitialParams(sDKAdNetwork, str, adMarvelAd);
            } else {
                AdMarvelInterstitial.this.staticBanner.m_interParams = new InterstitialParams(sDKAdNetwork, str, adMarvelAd);
            }
        }

        public void onRequestInterstitialAd() {
            L.d(TAG, "interstitial requested");
        }
    }

    private class AdMarvelInterstitialBanner implements InterstitialBanner {
        private static final int REQUEST_DELAY = 5000;
        private final String admarvel_site_id_phone;
        private final String admarvel_site_id_tablet;
        private AdMarvelInterstitialAds m_adMarvelInterstitialAds;
        private InterstitialParams m_interParams;
        private final boolean video;

        class AnonymousClass_1 extends TimerTask {
            final /* synthetic */ AdMarvelInterstitial val$this$0;

            AnonymousClass_1(AdMarvelInterstitial adMarvelInterstitial) {
                this.val$this$0 = adMarvelInterstitial;
            }

            public void run() {
                AdMarvelInterstitialBanner.this.requestNewAd();
            }
        }

        public AdMarvelInterstitialBanner(Context context, boolean z) {
            this.m_interParams = null;
            this.video = z;
            if (z) {
                SwitcherInterstitialBanner.getInstance().addVideoBanner(this);
                this.admarvel_site_id_phone = ZBuildConfig.admarvel_site_id_phone_video;
                this.admarvel_site_id_tablet = ZBuildConfig.admarvel_site_id_tablet_video;
            } else {
                SwitcherInterstitialBanner.getInstance().addInterstitialBanner(this);
                this.admarvel_site_id_phone = ZBuildConfig.admarvel_site_id_phone_interstitial;
                this.admarvel_site_id_tablet = ZBuildConfig.admarvel_site_id_tablet_interstitial;
            }
            this.m_adMarvelInterstitialAds = new AdMarvelInterstitialAds(context, 0, 7499117, 65280, 0);
            if (z) {
                new Timer().schedule(new AnonymousClass_1(AdMarvelInterstitial.this), 5000);
            } else {
                requestNewAd();
            }
        }

        public boolean handleActivityResult(int i, int i2, Intent intent) {
            return false;
        }

        public boolean isAvailable() {
            return this.m_interParams != null;
        }

        public void onDestroy() {
        }

        public void onPause() {
        }

        public void onResume() {
        }

        public void requestNewAd() {
            L.d(TAG, "request new ad");
            if (AdMarvelInterstitial.this.m_activity != null) {
                AdMarvelInterstitial.this.m_activity.runOnUiThread(new Runnable() {
                    public void run() {
                        AdMarvelInterstitialBanner.this.m_interParams = null;
                        String toString = Integer.toString(CtrPreferences.getInstance().getIntForKey("GAME_SESSIONS_COUNT_"));
                        String toString2 = Integer.toString(CtrPreferences.getInstance().getIntForKey("ADMARVEL_SESSION_COUNTER_INTERSTITIAL"));
                        String str = AdTrackerConstants.BLANK + CtrPreferences.getInstance().getStringForKey("PREFS_LAST_LEVEL");
                        Map hashMap = new HashMap();
                        hashMap.putAll(AdMarvelInterstitialBanner.this.this$0.m_defaultTargetParams);
                        hashMap.put("SESSION_ID", toString);
                        hashMap.put("SESSION_COUNTER", toString2);
                        hashMap.put("GAME_LEVEL", str);
                        L.d(TAG, hashMap.toString());
                        if (AdMarvelUtils.isTabletDevice(AdMarvelInterstitialBanner.this.this$0.m_activity)) {
                            AdMarvelInterstitialBanner.this.m_adMarvelInterstitialAds.requestNewInterstitialAd(AdMarvelInterstitialBanner.this.this$0.m_activity, hashMap, ZBuildConfig.admarvel_partner_id, AdMarvelInterstitialBanner.this.admarvel_site_id_tablet);
                            L.d(TAG, "requested ad for tablets");
                        } else {
                            AdMarvelInterstitialBanner.this.m_adMarvelInterstitialAds.requestNewInterstitialAd(AdMarvelInterstitialBanner.this.this$0.m_activity, hashMap, ZBuildConfig.admarvel_partner_id, AdMarvelInterstitialBanner.this.admarvel_site_id_phone);
                            L.d(TAG, "requested ad for phones");
                        }
                    }
                });
            }
        }

        public void setLayout(RelativeLayout relativeLayout) {
        }

        public boolean showInterstitial(boolean z, boolean z2) {
            return ((!z || !this.video) && (!z2 || this.video)) ? false : showVideoBanner();
        }

        public boolean showVideoBanner() {
            if (this.m_interParams != null) {
                AdMarvelInterstitial.this.isShowingVideo = this.video;
                AdMarvelInterstitial.this.m_activity.runOnUiThread(new Runnable() {
                    public void run() {
                        AdMarvelInterstitialBanner.this.m_adMarvelInterstitialAds.displayInterstitial(AdMarvelInterstitialBanner.this.this$0.m_activity, AdMarvelInterstitialBanner.this.m_interParams.sdkAdNetwork, AdMarvelInterstitialBanner.this.m_interParams.publisherId, AdMarvelInterstitialBanner.this.m_interParams.adMarvelAd);
                    }
                });
                return true;
            } else {
                requestNewAd();
                return false;
            }
        }
    }

    private class InterstitialParams {
        public final AdMarvelAd adMarvelAd;
        public final String publisherId;
        public final SDKAdNetwork sdkAdNetwork;

        public InterstitialParams(SDKAdNetwork sDKAdNetwork, String str, AdMarvelAd adMarvelAd) {
            this.sdkAdNetwork = sDKAdNetwork;
            this.publisherId = str;
            this.adMarvelAd = adMarvelAd;
        }
    }

    public AdMarvelInterstitial(Activity activity) {
        this.m_defaultTargetParams = null;
        this.m_adMarvelActivity = null;
        this.m_adMarvelVideoActivity = null;
        this.isShowingVideo = false;
        this.m_activity = activity;
        if (!CtrPreferences.getInstance().getBooleanForKey("IAP_BANNERS")) {
            AdMarvelUtils.enableLogging(ZBuildConfig.target.contains(EventType.DEBUG));
            CtrPreferences.getInstance().setIntforKey("ADMARVEL_SESSION_COUNTER_INTERSTITIAL", 0, true);
            this.m_defaultTargetParams = new HashMap();
            Location lastKnownLocation = ((LocationManager) this.m_activity.getSystemService("location")).getLastKnownLocation("network");
            if (lastKnownLocation != null) {
                this.m_defaultTargetParams.put("LOCATION_OBJECT", lastKnownLocation);
                this.m_defaultTargetParams.put("GEOLOCATION", lastKnownLocation.getLatitude() + "," + lastKnownLocation.getLongitude());
            }
            this.m_defaultTargetParams.put("AGE", Integer.toString(CtrPreferences.getInstance().getIntForKey("PREFS_USER_AGE")));
            this.m_defaultTargetParams.put("HAVE_BOUGHT", CtrPreferences.getInstance().getBooleanForKey("FIRST_PURCHASE") ? "1" : "0");
            AdMarvelInterstitialAds.setListener(new AdMarvelInterstitialAdListenerImpl(null));
            AdMarvelInterstitialAds.setEnableClickRedirect(true);
            this.staticBanner = new AdMarvelInterstitialBanner(activity, false);
            this.videoBanner = new AdMarvelInterstitialBanner(activity, true);
        }
    }
}