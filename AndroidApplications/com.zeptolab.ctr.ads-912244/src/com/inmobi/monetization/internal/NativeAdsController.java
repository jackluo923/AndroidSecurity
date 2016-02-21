package com.inmobi.monetization.internal;

import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.IMNative;
import com.inmobi.monetization.internal.abstraction.INativeAdController;
import com.inmobi.monetization.internal.abstraction.INativeAdListener;
import com.inmobi.monetization.internal.objects.NativeAdsCache;

public class NativeAdsController implements INativeAdController {
    private static NativeAdsController d;
    private ServiceProvider a;
    private INativeAdListener b;
    private boolean c;

    static {
        d = null;
    }

    private NativeAdsController() {
        this.c = false;
        this.a = ServiceProvider.getInstance();
    }

    private void a(String str, NativeAdRequest nativeAdRequest) {
        if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
            Log.internal(Constants.LOG_TAG, "Fetching Native Ads");
            this.a.getNativeAd(nativeAdRequest, this);
        } else {
            onAdRequestFailed(nativeAdRequest, IMErrorCode.NETWORK_ERROR);
        }
    }

    public static NativeAdsController getInstance() {
        if (d == null) {
            d = new NativeAdsController();
        }
        return d;
    }

    public void getAd(String str, NativeAdRequest nativeAdRequest, INativeAdListener iNativeAdListener) {
        this.c = false;
        this.b = iNativeAdListener;
        IMNative cachedAd = NativeAdsCache.getInstance().getCachedAd(str);
        int numCachedAds = NativeAdsCache.getInstance().getNumCachedAds(str);
        int i = Initializer.getConfigParams().getNativeSdkConfigParams().getmMinLimit();
        if (cachedAd == null) {
            a(str, nativeAdRequest);
        } else if (numCachedAds < i) {
            this.c = true;
            a(str, nativeAdRequest);
            if (this.b != null) {
                this.b.onNativeRequestSucceeded(cachedAd);
            }
        } else {
            this.c = true;
            if (this.b != null) {
                this.b.onNativeRequestSucceeded(cachedAd);
            }
        }
    }

    public void onAdRequestFailed(NativeAdRequest nativeAdRequest, IMErrorCode iMErrorCode) {
        Log.debug(Constants.LOG_TAG, "Native ad failed: ");
        if (!this.c && this.b != null) {
            this.c = true;
            this.b.onNativeRequestFailed(iMErrorCode);
        }
    }

    public void onAdRequestSucceded(NativeAdRequest nativeAdRequest, NativeAdResponse nativeAdResponse) {
        Log.debug(Constants.LOG_TAG, "Native ad received: ");
        NativeAdsCache.getInstance().saveNativeAds(nativeAdRequest.getAppId(), nativeAdResponse.a());
        if (!this.c && this.b != null) {
            this.c = true;
            IMNative cachedAd = NativeAdsCache.getInstance().getCachedAd(nativeAdRequest.getAppId());
            if (cachedAd != null) {
                this.b.onNativeRequestSucceeded(cachedAd);
            } else {
                this.b.onNativeRequestFailed(IMErrorCode.INTERNAL_ERROR);
            }
        }
    }
}