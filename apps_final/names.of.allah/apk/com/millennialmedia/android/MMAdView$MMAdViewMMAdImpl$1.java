package com.millennialmedia.android;

class MMAdView$MMAdViewMMAdImpl$1
  extends MMAdImpl.BasicMMWebViewClientListener
{
  MMAdView$MMAdViewMMAdImpl$1(MMAdView.MMAdViewMMAdImpl paramMMAdViewMMAdImpl, MMAdView paramMMAdView)
  {
    super(paramMMAdViewMMAdImpl);
  }
  
  public void onPageFinished(String paramString)
  {
    super.onPageFinished(paramString);
    if (this$1.isTransitionAnimated()) {
      this$1.animateTransition();
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMAdView.MMAdViewMMAdImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */