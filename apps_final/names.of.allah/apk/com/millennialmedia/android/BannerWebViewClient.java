package com.millennialmedia.android;

class BannerWebViewClient
  extends MMWebViewClient
{
  BannerWebViewClient(MMWebViewClient.MMWebViewClientListener paramMMWebViewClientListener, HttpRedirection.RedirectionListenerImpl paramRedirectionListenerImpl)
  {
    super(paramMMWebViewClientListener, paramRedirectionListenerImpl);
  }
  
  void setMraidState(MMWebView paramMMWebView)
  {
    paramMMWebView.setMraidPlacementTypeInline();
    paramMMWebView.setMraidDefault();
    paramMMWebView.setMraidReady();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BannerWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */