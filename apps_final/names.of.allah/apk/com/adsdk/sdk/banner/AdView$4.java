package com.adsdk.sdk.banner;

import com.adsdk.sdk.Log;

class AdView$4
  implements Thread.UncaughtExceptionHandler
{
  AdView$4(AdView paramAdView) {}
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Log.e("ADSDK", "Exception in request thread", paramThrowable);
    AdView.access$8(this$0, null);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.AdView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */