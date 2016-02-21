package com.vungle.publisher;

import android.content.Context;

public class VunglePub extends VunglePubBase {
    private static final VunglePub n;

    static {
        n = new VunglePub();
    }

    VunglePub() {
    }

    public static VunglePub getInstance() {
        return n;
    }

    protected final boolean a() {
        boolean a = super.a();
        this.g.j();
        return a;
    }

    protected final boolean b() {
        return super.b() && this.g.j();
    }

    public Demographic getDemographic() {
        return super.getDemographic();
    }

    public AdConfig getGlobalAdConfig() {
        return super.getGlobalAdConfig();
    }

    public boolean init(Context context, String str) {
        return super.init(context, str);
    }

    public boolean isCachedAdAvailable() {
        return super.isCachedAdAvailable();
    }

    public void onPause() {
        super.onPause();
    }

    public void onResume() {
        super.onResume();
    }

    public void playAd() {
        super.playAd();
    }

    public void playAd(AdConfig adConfig) {
        super.playAd(adConfig);
    }

    public void setEventListener(EventListener eventListener) {
        super.setEventListener(eventListener);
    }
}