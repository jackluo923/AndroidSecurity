package com.adsdk.sdk.mraid;

import android.app.Activity;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

class MraidBrowser$2
  extends WebChromeClient
{
  MraidBrowser$2(MraidBrowser paramMraidBrowser) {}
  
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
 * Qualified Name:     com.adsdk.sdk.mraid.MraidBrowser.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */