package com.adsdk.sdk.banner;

import android.os.Handler;
import com.adsdk.sdk.AdResponse;
import com.adsdk.sdk.Log;
import com.adsdk.sdk.RequestGeneralAd;

class AdView$3
  implements Runnable
{
  AdView$3(AdView paramAdView) {}
  
  public void run()
  {
    Log.d("ADSDK", "starting request thread");
    RequestGeneralAd localRequestGeneralAd;
    if (AdView.access$2(this$0) == null) {
      localRequestGeneralAd = new RequestGeneralAd();
    }
    try
    {
      for (;;)
      {
        AdView.access$4(this$0, (AdResponse)localRequestGeneralAd.sendRequest(AdView.access$3(this$0)));
        if (AdView.access$5(this$0) != null)
        {
          Log.d("ADSDK", "response received");
          Log.d("ADSDK", "getVisibility: " + this$0.getVisibility());
          AdView.access$6(this$0).post(AdView.access$7(this$0));
        }
        AdView.access$8(this$0, null);
        Log.d("ADSDK", "finishing request thread");
        return;
        localRequestGeneralAd = new RequestGeneralAd(AdView.access$2(this$0));
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        AdView.access$1(this$0, localThrowable);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.AdView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */