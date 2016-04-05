package com.millennialmedia.android;

import android.view.ViewGroup.LayoutParams;

class MMWebView$7
  implements Runnable
{
  MMWebView$7(MMWebView paramMMWebView, MMAdView paramMMAdView) {}
  
  void handleUnresize()
  {
    if ((MMSDK.hasSetTranslationMethod()) && (!MMWebView.access$200(this$0)))
    {
      ViewGroup.LayoutParams localLayoutParams = this$0.getLayoutParams();
      width = this$0.oldWidth;
      height = this$0.oldHeight;
      this$0.oldWidth = -50;
      this$0.oldHeight = -50;
      this$0.requestLayout();
    }
  }
  
  public void run()
  {
    synchronized (this$0)
    {
      val$adView.handleUnresize();
      handleUnresize();
      this$0.loadUrl("javascript:MMJS.sdk.setState('default');");
      this$0.mraidState = "default";
      this$0.invalidate();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMWebView.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */