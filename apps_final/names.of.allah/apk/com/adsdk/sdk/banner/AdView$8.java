package com.adsdk.sdk.banner;

import com.adsdk.sdk.AdListener;
import com.adsdk.sdk.mraid.MraidView;
import com.adsdk.sdk.mraid.MraidView.MraidListener;
import com.adsdk.sdk.mraid.MraidView.ViewState;

class AdView$8
  implements MraidView.MraidListener
{
  AdView$8(AdView paramAdView, AdListener paramAdListener) {}
  
  public void onClose(MraidView paramMraidView, MraidView.ViewState paramViewState)
  {
    if (val$listener != null) {
      val$listener.adClosed(null, true);
    }
  }
  
  public void onExpand(MraidView paramMraidView)
  {
    if (val$listener != null)
    {
      val$listener.adClicked();
      val$listener.adShown(null, true);
    }
  }
  
  public void onFailure(MraidView paramMraidView)
  {
    if (val$listener != null) {
      val$listener.noAdFound();
    }
  }
  
  public void onReady(MraidView paramMraidView)
  {
    if (val$listener != null) {
      val$listener.adLoadSucceeded(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.AdView.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */