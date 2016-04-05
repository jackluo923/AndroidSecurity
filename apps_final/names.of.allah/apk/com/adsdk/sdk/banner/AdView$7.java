package com.adsdk.sdk.banner;

import android.view.View;
import com.adsdk.sdk.AdListener;
import com.adsdk.sdk.customevents.CustomEventBanner.CustomEventBannerListener;

class AdView$7
  implements CustomEventBanner.CustomEventBannerListener
{
  AdView$7(AdView paramAdView, AdListener paramAdListener) {}
  
  public void onBannerClosed()
  {
    if (val$listener != null) {
      val$listener.adClosed(null, true);
    }
  }
  
  public void onBannerExpanded()
  {
    if (val$listener != null)
    {
      val$listener.adClicked();
      val$listener.adShown(null, true);
    }
  }
  
  public void onBannerFailed()
  {
    AdView.access$10(this$0);
    if (AdView.access$11(this$0) != null) {
      return;
    }
    if (AdView.access$12(this$0) != null)
    {
      this$0.addView(AdView.access$12(this$0));
      return;
    }
    if (AdView.access$13(this$0) != null)
    {
      AdView.access$14(this$0);
      return;
    }
    AdView.access$15(this$0);
  }
  
  public void onBannerLoaded(View paramView)
  {
    this$0.addView(paramView);
    if (val$listener != null) {
      val$listener.adLoadSucceeded(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.AdView.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */