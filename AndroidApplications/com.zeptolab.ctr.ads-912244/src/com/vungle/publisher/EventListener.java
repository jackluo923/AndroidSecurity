package com.vungle.publisher;

public interface EventListener {
    void onAdEnd(boolean z);

    void onAdStart();

    void onAdUnavailable(String str);

    void onCachedAdAvailable();

    void onVideoView(boolean z, int i, int i2);
}