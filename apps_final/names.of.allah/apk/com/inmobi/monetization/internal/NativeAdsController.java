package com.inmobi.monetization.internal;

import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.bootstrapper.NativeConfigParams;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.internal.abstraction.INativeAdController;
import com.inmobi.monetization.internal.abstraction.INativeAdListener;
import com.inmobi.monetization.internal.objects.NativeAdsCache;

public class NativeAdsController
  implements INativeAdController
{
  private static NativeAdsController d = null;
  private ServiceProvider a = ServiceProvider.getInstance();
  private INativeAdListener b;
  private boolean c = false;
  
  private void a(String paramString, NativeAdRequest paramNativeAdRequest)
  {
    if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext()))
    {
      Log.internal("[InMobi]-[Monetization]", "Fetching Native Ads");
      a.getNativeAd(paramNativeAdRequest, this);
      return;
    }
    onAdRequestFailed(paramNativeAdRequest, IMErrorCode.NETWORK_ERROR);
  }
  
  public static NativeAdsController getInstance()
  {
    if (d == null) {
      d = new NativeAdsController();
    }
    return d;
  }
  
  public void getAd(String paramString, NativeAdRequest paramNativeAdRequest, INativeAdListener paramINativeAdListener)
  {
    c = false;
    b = paramINativeAdListener;
    paramINativeAdListener = NativeAdsCache.getInstance().getCachedAd(paramString);
    int i = NativeAdsCache.getInstance().getNumCachedAds(paramString);
    int j = Initializer.getConfigParams().getNativeSdkConfigParams().getmMinLimit();
    if (paramINativeAdListener == null) {
      a(paramString, paramNativeAdRequest);
    }
    do
    {
      do
      {
        return;
        if (i >= j) {
          break;
        }
        c = true;
        a(paramString, paramNativeAdRequest);
      } while (b == null);
      b.onNativeRequestSucceeded(paramINativeAdListener);
      return;
      c = true;
    } while (b == null);
    b.onNativeRequestSucceeded(paramINativeAdListener);
  }
  
  public void onAdRequestFailed(NativeAdRequest paramNativeAdRequest, IMErrorCode paramIMErrorCode)
  {
    Log.debug("[InMobi]-[Monetization]", "Native ad failed: ");
    if ((!c) && (b != null))
    {
      c = true;
      b.onNativeRequestFailed(paramIMErrorCode);
    }
  }
  
  public void onAdRequestSucceded(NativeAdRequest paramNativeAdRequest, NativeAdResponse paramNativeAdResponse)
  {
    Log.debug("[InMobi]-[Monetization]", "Native ad received: ");
    NativeAdsCache.getInstance().saveNativeAds(paramNativeAdRequest.getAppId(), paramNativeAdResponse.a());
    if ((!c) && (b != null))
    {
      c = true;
      paramNativeAdRequest = NativeAdsCache.getInstance().getCachedAd(paramNativeAdRequest.getAppId());
      if (paramNativeAdRequest != null) {
        b.onNativeRequestSucceeded(paramNativeAdRequest);
      }
    }
    else
    {
      return;
    }
    b.onNativeRequestFailed(IMErrorCode.INTERNAL_ERROR);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.NativeAdsController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */