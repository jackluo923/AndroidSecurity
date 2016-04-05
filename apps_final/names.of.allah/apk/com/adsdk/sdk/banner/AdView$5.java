package com.adsdk.sdk.banner;

import com.adsdk.sdk.AdListener;
import com.adsdk.sdk.Log;

class AdView$5
  implements Runnable
{
  AdView$5(AdView paramAdView) {}
  
  public void run()
  {
    Log.d("ADSDK", "No Ad");
    if (AdView.access$9(this$0) != null) {
      AdView.access$9(this$0).noAdFound();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.AdView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */