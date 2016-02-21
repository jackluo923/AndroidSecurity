package com.inmobi.monetization.internal.abstraction;

import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.IMNative;

public interface INativeAdListener {
    void onNativeRequestFailed(IMErrorCode iMErrorCode);

    void onNativeRequestSucceeded(IMNative iMNative);
}