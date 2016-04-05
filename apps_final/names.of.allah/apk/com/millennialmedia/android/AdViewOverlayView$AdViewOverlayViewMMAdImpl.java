package com.millennialmedia.android;

import android.content.Context;

class AdViewOverlayView$AdViewOverlayViewMMAdImpl
  extends MMLayout.MMLayoutMMAdImpl
{
  public AdViewOverlayView$AdViewOverlayViewMMAdImpl(AdViewOverlayView paramAdViewOverlayView, Context paramContext)
  {
    super(paramAdViewOverlayView, paramContext);
    mmWebViewClientListener = new AdViewOverlayView.AdViewOverlayViewMMAdImpl.1(this, paramAdViewOverlayView);
  }
  
  MMWebViewClient getMMWebViewClient()
  {
    MMSDK.Log.d("Returning a client for user: OverlayWebViewClient, adimpl=" + this$0.adImpl);
    if ((this$0.adImpl.linkForExpansionId != 0L) || (this$0.settings.hasExpandUrl()))
    {
      localObject = new BannerExpandedWebViewClient(mmWebViewClientListener, new AdViewOverlayView.AdViewOverlayViewMMAdImpl.OverlayRedirectionListenerImpl(this));
      mmWebViewClient = ((MMWebViewClient)localObject);
      return (MMWebViewClient)localObject;
    }
    Object localObject = new InterstitialWebViewClient(mmWebViewClientListener, new AdViewOverlayView.AdViewOverlayViewMMAdImpl.OverlayRedirectionListenerImpl(this));
    mmWebViewClient = ((MMWebViewClient)localObject);
    return (MMWebViewClient)localObject;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdViewOverlayView.AdViewOverlayViewMMAdImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */