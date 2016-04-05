package com.adsdk.sdk.nativeads;

import com.adsdk.sdk.Log;

class NativeAdManager$1
  implements Runnable
{
  NativeAdManager$1(NativeAdManager paramNativeAdManager) {}
  
  public void run()
  {
    Log.d("ADSDK", "starting request thread");
    RequestNativeAd localRequestNativeAd = new RequestNativeAd();
    try
    {
      NativeAdManager.access$1(this$0, localRequestNativeAd.sendRequest(NativeAdManager.access$0(this$0)));
      if (NativeAdManager.access$2(this$0) != null) {
        NativeAdManager.access$3(this$0, NativeAdManager.access$2(this$0));
      }
      for (;;)
      {
        Log.d("ADSDK", "finishing request thread");
        return;
        NativeAdManager.access$4(this$0);
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        NativeAdManager.access$4(this$0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.nativeads.NativeAdManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */