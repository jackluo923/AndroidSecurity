package com.amazon.device.ads;

interface AdView {
    int getHeight();

    UrlExecutor getSpecialUrlExecutor();

    boolean isAdViewRenderable();

    boolean launchExternalBrowserForLink(String str);

    void onPageFinished();

    boolean shouldDisableWebViewHardwareAcceleration();
}