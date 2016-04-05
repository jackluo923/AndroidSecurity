package com.millennialmedia.android;

class AdViewOverlayView$AdViewOverlayViewMMAdImpl$OverlayRedirectionListenerImpl
  extends MMAdImpl.MMAdImplRedirectionListenerImpl
{
  AdViewOverlayView$AdViewOverlayViewMMAdImpl$OverlayRedirectionListenerImpl(AdViewOverlayView.AdViewOverlayViewMMAdImpl paramAdViewOverlayViewMMAdImpl)
  {
    super(paramAdViewOverlayViewMMAdImpl);
  }
  
  public boolean isExpandingToUrl()
  {
    return (this$1.this$0.settings.hasExpandUrl()) && (!this$1.this$0.settings.hasLoadedExpandUrl());
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdViewOverlayView.AdViewOverlayViewMMAdImpl.OverlayRedirectionListenerImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */