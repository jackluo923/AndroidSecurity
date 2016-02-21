package com.zeptolab.ctr.ads;

import android.app.Activity;
import android.location.Location;
import android.location.LocationManager;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.ads.AdMarvelView;
import com.admarvel.android.ads.AdMarvelView.AdMarvelViewListener;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.CtrPreferences;
import com.zeptolab.ctr.L;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

public class AdMarvelBanner extends AdBanner {
    private static final int REQUEST_INTERVAL = 30000;
    private static final String TAG = "AdMarvelBanner";
    private static final int THROTTLING_INTERVAL = 5000;
    private volatile boolean m_adIsLoaded;
    private volatile boolean m_adIsShown;
    private AdMarvelView m_adMarvelView;
    private Map m_defaultTargetParams;
    private volatile long m_lastRequestTime;
    private Timer m_requestIntervalTimer;

    private class AdMarvelViewListenerImpl implements AdMarvelViewListener {
        private AdMarvelViewListenerImpl() {
        }

        public void onClickAd(AdMarvelView adMarvelView, String str) {
            L.d(TAG, "onClickAd");
        }

        public void onClose() {
            L.d(TAG, "onClose");
        }

        public void onExpand() {
            L.d(TAG, "onExpand");
        }

        public void onFailedToReceiveAd(AdMarvelView adMarvelView, int i, ErrorReason errorReason) {
            L.d(TAG, "onFailedToReceiveAd");
            AdMarvelBanner.this.m_adIsLoaded = false;
            AdMarvelBanner.this.view.queueEvent(new Runnable() {
                public void run() {
                    AdBanner.bannerFailed(AdBanner.NORMAL);
                }
            });
        }

        public void onReceiveAd(AdMarvelView adMarvelView) {
            L.d(TAG, "onReceiveAd");
            AdMarvelBanner.this.m_adIsLoaded = true;
            AdMarvelBanner.this.view.queueEvent(new Runnable() {
                public void run() {
                    AdBanner.bannerLoaded(AdBanner.NORMAL);
                }
            });
        }

        public void onRequestAd(AdMarvelView adMarvelView) {
            L.d(TAG, "onRequestAd");
        }
    }

    public AdMarvelBanner(Activity activity) {
        super(activity);
        this.m_adIsShown = false;
        this.m_adIsLoaded = false;
        this.m_requestIntervalTimer = null;
        this.m_lastRequestTime = 0;
        if (!AdMarvelBannerController.isDisabled() && AdMarvelBannerController.isInitialized()) {
            this.m_defaultTargetParams = new HashMap();
            Location lastKnownLocation = ((LocationManager) activity.getSystemService("location")).getLastKnownLocation("network");
            if (lastKnownLocation != null) {
                this.m_defaultTargetParams.put("LOCATION_OBJECT", lastKnownLocation);
                this.m_defaultTargetParams.put("GEOLOCATION", lastKnownLocation.getLatitude() + "," + lastKnownLocation.getLongitude());
            }
            this.m_defaultTargetParams.put("AGE", Integer.toString(CtrPreferences.getInstance().getIntForKey("PREFS_USER_AGE")));
            this.m_defaultTargetParams.put("HAVE_BOUGHT", CtrPreferences.getInstance().getBooleanForKey("FIRST_PURCHASE") ? "1" : "0");
            this.m_adMarvelView = new AdMarvelView(activity);
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
            layoutParams.addRule(MMException.REQUEST_NOT_FILLED);
            layoutParams.alignWithParent = true;
            this.m_adMarvelView.setLayoutParams(layoutParams);
            this.m_adMarvelView.setListener(new AdMarvelViewListenerImpl(null));
            this.m_adMarvelView.setEnableClickRedirect(true);
            requestNewAd();
        }
    }

    private void requestNewAd() {
        L.d(TAG, "request new ad");
        if (!AdMarvelBannerController.isDisabled() && AdMarvelBannerController.isInitialized() && !this.m_adIsLoaded && this.activity != null) {
            this.activity.runOnUiThread(new Runnable() {
                public void run() {
                    AdMarvelBanner.this.m_lastRequestTime = System.currentTimeMillis();
                    String toString = Integer.toString(CtrPreferences.getInstance().getIntForKey("GAME_SESSIONS_COUNT_"));
                    String toString2 = Integer.toString(CtrPreferences.getInstance().getIntForKey("ADMARVEL_SESSION_COUNTER_BANNER"));
                    String str = AdTrackerConstants.BLANK + CtrPreferences.getInstance().getStringForKey("PREFS_LAST_LEVEL");
                    Map hashMap = new HashMap();
                    hashMap.putAll(AdMarvelBanner.this.m_defaultTargetParams);
                    hashMap.put("SESSION_ID", toString);
                    hashMap.put("SESSION_COUNTER", toString2);
                    hashMap.put("GAME_LEVEL", str);
                    if (AdMarvelUtils.isTabletDevice(AdMarvelBanner.this.activity)) {
                        AdMarvelBanner.this.m_adMarvelView.requestNewAd(hashMap, ZBuildConfig.admarvel_partner_id, ZBuildConfig.admarvel_site_id_tablet_banner);
                        L.d(TAG, "requested ad for tablets");
                    } else {
                        AdMarvelBanner.this.m_adMarvelView.requestNewAd(hashMap, ZBuildConfig.admarvel_partner_id, ZBuildConfig.admarvel_site_id_phone_banner);
                        L.d(TAG, "requested ad for phones");
                    }
                }
            });
        }
    }

    public void hideBanner() {
        L.d(TAG, "hideBanner");
        if (this.activity != null) {
            this.activity.runOnUiThread(new Runnable() {
                public void run() {
                    AdMarvelBanner.this.layout.removeView(AdMarvelBanner.this.m_adMarvelView);
                    CtrPreferences.getInstance().setIntforKey("ADMARVEL_SESSION_COUNTER_BANNER", CtrPreferences.getInstance().getIntForKey("ADMARVEL_SESSION_COUNTER_BANNER") + 1, true);
                }
            });
        }
        this.m_adIsShown = false;
    }

    public void onDestroy() {
        L.d(TAG, "onDestroy");
        if (!AdMarvelBannerController.isDisabled() && AdMarvelBannerController.isInitialized()) {
            this.m_adMarvelView.destroy();
        }
    }

    public void onPause() {
        L.d(TAG, "onPause");
        if (!AdMarvelBannerController.isDisabled() && AdMarvelBannerController.isInitialized()) {
            AdMarvelBannerController.onPause(this.activity, this.m_adMarvelView);
        }
    }

    public void onResume() {
        L.d(TAG, "onResume");
        if (!AdMarvelBannerController.isDisabled() && AdMarvelBannerController.isInitialized()) {
            AdMarvelBannerController.onResume(this.activity, this.m_adMarvelView);
        }
    }

    public void refreshBanner() {
        this.m_adIsLoaded = false;
        requestNewAd();
    }

    public void setLayout(RelativeLayout relativeLayout) {
        this.layout = relativeLayout;
    }

    public boolean showBanner() {
        L.d(TAG, "showBanner");
        if (AdMarvelBannerController.isDisabled() || !AdMarvelBannerController.isInitialized()) {
            return false;
        }
        if (this.m_adIsShown) {
            return true;
        }
        this.m_adIsShown = true;
        if (this.activity == null) {
            return false;
        }
        this.activity.runOnUiThread(new Runnable() {
            public void run() {
                AdMarvelBanner.this.layout.addView(AdMarvelBanner.this.m_adMarvelView);
                AdMarvelBanner.this.m_adMarvelView.focus();
            }
        });
        return true;
    }
}