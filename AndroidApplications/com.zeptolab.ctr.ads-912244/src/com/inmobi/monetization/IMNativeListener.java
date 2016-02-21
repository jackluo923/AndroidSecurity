package com.inmobi.monetization;

public interface IMNativeListener {
    void onNativeRequestFailed(IMErrorCode iMErrorCode);

    void onNativeRequestSucceeded(IMNative iMNative);
}