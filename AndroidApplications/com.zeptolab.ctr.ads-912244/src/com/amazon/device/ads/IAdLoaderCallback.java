package com.amazon.device.ads;

interface IAdLoaderCallback {
    void adFailed(AdError adError);

    void adShown();

    int getTimeout();

    void handleResponse();
}