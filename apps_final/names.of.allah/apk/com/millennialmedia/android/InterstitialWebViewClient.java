package com.millennialmedia.android;

class InterstitialWebViewClient
  extends MMWebViewClient
{
  InterstitialWebViewClient(MMWebViewClient.MMWebViewClientListener paramMMWebViewClientListener, HttpRedirection.RedirectionListenerImpl paramRedirectionListenerImpl)
  {
    super(paramMMWebViewClientListener, paramRedirectionListenerImpl);
  }
  
  void setMraidState(MMWebView paramMMWebView)
  {
    paramMMWebView.setMraidPlacementTypeInterstitial();
    paramMMWebView.setMraidDefault();
    paramMMWebView.setMraidReady();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.InterstitialWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */