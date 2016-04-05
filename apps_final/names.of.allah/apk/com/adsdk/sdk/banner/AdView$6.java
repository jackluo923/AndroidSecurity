package com.adsdk.sdk.banner;

import com.adsdk.sdk.AdListener;
import com.adsdk.sdk.Log;

class AdView$6
  implements Runnable
{
  AdView$6(AdView paramAdView, Throwable paramThrowable) {}
  
  public void run()
  {
    Log.e("ADSDK", "Exception when building ad:", val$e);
    if (AdView.access$9(this$0) != null)
    {
      Log.d("ADSDK", "notify bannerListener: " + AdView.access$9(this$0).getClass().getName());
      AdView.access$9(this$0).noAdFound();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.AdView.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */