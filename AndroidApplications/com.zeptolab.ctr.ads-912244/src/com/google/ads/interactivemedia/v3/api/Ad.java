package com.google.ads.interactivemedia.v3.api;

public interface Ad {
    String getAdId();

    AdPodInfo getAdPodInfo();

    String getAdSystem();

    String[] getAdWrapperIds();

    String[] getAdWrapperSystems();

    double getDuration();

    int getHeight();

    String getTraffickingParameters();

    int getWidth();

    boolean isLinear();

    boolean isSkippable();
}