package com.inmobi.monetization.internal.abstraction;

import com.inmobi.monetization.internal.GetLtvpRulesRequest;
import com.inmobi.monetization.internal.NativeAdRequest;

public interface IServiceProvider {
    void getLtvpRule(GetLtvpRulesRequest getLtvpRulesRequest, IGetLtvpRuleRequestListener iGetLtvpRuleRequestListener);

    void getNativeAd(NativeAdRequest nativeAdRequest, INativeAdController iNativeAdController);
}