package com.inmobi.androidsdk;

public enum Mode {
    AD_NETWORK,
    APP_GALLERY;

    static {
        AD_NETWORK = new Mode("AD_NETWORK", 0);
        APP_GALLERY = new Mode("APP_GALLERY", 1);
        a = new Mode[]{AD_NETWORK, APP_GALLERY};
    }
}