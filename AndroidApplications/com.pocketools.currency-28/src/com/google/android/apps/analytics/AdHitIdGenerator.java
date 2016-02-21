package com.google.android.apps.analytics;

public class AdHitIdGenerator {
    private boolean adMobSdkInstalled;

    public AdHitIdGenerator() {
        boolean z = false;
        try {
            this.adMobSdkInstalled = Class.forName("com.google.ads.AdRequest") != null ? true : z;
        } catch (ClassNotFoundException e) {
            this.adMobSdkInstalled = z;
        }
    }

    AdHitIdGenerator(boolean z) {
        this.adMobSdkInstalled = z;
    }

    int getAdHitId() {
        return this.adMobSdkInstalled ? AdMobInfo.getInstance().generateAdHitId() : 0;
    }
}