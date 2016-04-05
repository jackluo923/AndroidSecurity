package com.adsdk.sdk.mraid;

 enum BaseInterstitialActivity$JavaScriptWebViewCallbacks
{
  WEB_VIEW_DID_APPEAR("javascript:webviewDidAppear();"),  WEB_VIEW_DID_CLOSE("javascript:webviewDidClose();");
  
  private String mUrl;
  
  private BaseInterstitialActivity$JavaScriptWebViewCallbacks(String paramString1)
  {
    mUrl = paramString1;
  }
  
  protected final String getUrl()
  {
    return mUrl;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.BaseInterstitialActivity.JavaScriptWebViewCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */