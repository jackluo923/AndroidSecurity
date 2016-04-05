package com.millennialmedia.android;

class BannerExpandedWebViewClient
  extends MMWebViewClient
{
  BannerExpandedWebViewClient(MMWebViewClient.MMWebViewClientListener paramMMWebViewClientListener, HttpRedirection.RedirectionListenerImpl paramRedirectionListenerImpl)
  {
    super(paramMMWebViewClientListener, paramRedirectionListenerImpl);
  }
  
  void setMraidState(MMWebView paramMMWebView)
  {
    paramMMWebView.setMraidPlacementTypeInline();
    paramMMWebView.setMraidExpanded();
    paramMMWebView.setMraidReady();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BannerExpandedWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */