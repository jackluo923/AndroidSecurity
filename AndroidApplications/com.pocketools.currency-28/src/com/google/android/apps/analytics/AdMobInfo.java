package com.google.android.apps.analytics;

import java.util.Random;

public class AdMobInfo {
    private static final AdMobInfo INSTANCE;
    private int adHitId;
    private Random random;

    static {
        INSTANCE = new AdMobInfo();
    }

    private AdMobInfo() {
        this.random = new Random();
    }

    public static AdMobInfo getInstance() {
        return INSTANCE;
    }

    public int generateAdHitId() {
        this.adHitId = this.random.nextInt();
        return this.adHitId;
    }

    public int getAdHitId() {
        return this.adHitId;
    }

    public String getJoinId() {
        if (this.adHitId == 0) {
            return null;
        }
        GoogleAnalyticsTracker instance = GoogleAnalyticsTracker.getInstance();
        String visitorIdForAds = instance.getVisitorIdForAds();
        String sessionIdForAds = instance.getSessionIdForAds();
        if (visitorIdForAds == null || sessionIdForAds == null) {
            return null;
        }
        return String.format("A,%s,%s,%d", new Object[]{visitorIdForAds, sessionIdForAds, Integer.valueOf(this.adHitId)});
    }

    public void setAdHitId(int i) {
        this.adHitId = i;
    }
}