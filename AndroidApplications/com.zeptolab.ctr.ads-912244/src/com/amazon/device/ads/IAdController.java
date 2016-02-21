package com.amazon.device.ads;

import java.util.HashMap;

interface IAdController {
    void adClosedExpansion();

    void adExpanded();

    void adLoaded(AdProperties adProperties);

    void destroy();

    AdLayout getAdLayout();

    AdSize getAdSize();

    String getMaxSize();

    UrlExecutor getSpecialUrlExecutor();

    int getTimeout();

    int getWindowHeight();

    int getWindowWidth();

    boolean isAdExpanded();

    boolean isAdLoading();

    void prepareAd(long j);

    void prepareToGoAway();

    boolean sendCommand(String str, HashMap hashMap);

    void setListener(AdListener adListener);

    void setTimeout(int i);

    void setWindowDimensions(int i, int i2);

    boolean shouldDisableWebViewHardwareAcceleration();
}