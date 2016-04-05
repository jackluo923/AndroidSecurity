package com.adsdk.sdk.nativeads;

import com.adsdk.sdk.Log;

class NativeAdManager$2
  implements Thread.UncaughtExceptionHandler
{
  NativeAdManager$2(NativeAdManager paramNativeAdManager) {}
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Log.e("ADSDK", "Exception in request thread", paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.nativeads.NativeAdManager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */