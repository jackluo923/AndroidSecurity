package com.inmobi.monetization.internal.abstraction;

import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.internal.NativeAdRequest;
import com.inmobi.monetization.internal.NativeAdResponse;

public interface INativeAdController {
    void onAdRequestFailed(NativeAdRequest nativeAdRequest, IMErrorCode iMErrorCode);

    void onAdRequestSucceded(NativeAdRequest nativeAdRequest, NativeAdResponse nativeAdResponse);
}