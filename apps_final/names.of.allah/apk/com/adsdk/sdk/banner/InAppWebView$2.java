package com.adsdk.sdk.banner;

import android.app.Activity;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

class InAppWebView$2
  extends WebChromeClient
{
  InAppWebView$2(InAppWebView paramInAppWebView) {}
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    Activity localActivity = (Activity)paramWebView.getContext();
    localActivity.setTitle("Loading...");
    localActivity.setProgress(paramInt * 100);
    if (paramInt == 100) {
      localActivity.setTitle(paramWebView.getUrl());
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.InAppWebView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */