package com.millennialmedia.android;

import android.view.ViewGroup.LayoutParams;

class MMWebView$6
  implements Runnable
{
  MMWebView$6(MMWebView paramMMWebView, MMAdView paramMMAdView, DTOResizeParameters paramDTOResizeParameters) {}
  
  private void handleMraidResize(DTOResizeParameters paramDTOResizeParameters)
  {
    MMAdView localMMAdView = val$adView;
    localMMAdView.getClass();
    paramDTOResizeParameters = new MMAdView.BannerBounds(localMMAdView, paramDTOResizeParameters);
    setUnresizeParameters();
    paramDTOResizeParameters.modifyLayoutParams(this$0.getLayoutParams());
  }
  
  private void setUnresizeParameters()
  {
    if (MMWebView.access$200(this$0))
    {
      ViewGroup.LayoutParams localLayoutParams = this$0.getLayoutParams();
      this$0.oldWidth = width;
      this$0.oldHeight = height;
      if (this$0.oldWidth <= 0) {
        this$0.oldWidth = this$0.getWidth();
      }
      if (this$0.oldHeight <= 0) {
        this$0.oldHeight = this$0.getHeight();
      }
    }
  }
  
  public void run()
  {
    synchronized (this$0)
    {
      val$adView.handleMraidResize(val$resizeParams);
      handleMraidResize(val$resizeParams);
      this$0.loadUrl("javascript:MMJS.sdk.setState('resized');");
      this$0.mraidState = "resized";
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMWebView.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */