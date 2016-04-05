package com.adsdk.sdk.banner;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.adsdk.sdk.AdResponse;
import com.adsdk.sdk.Log;

class BannerAdView$2
  extends WebViewClient
{
  BannerAdView$2(BannerAdView paramBannerAdView) {}
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (BannerAdView.access$1(this$0))
    {
      if (BannerAdView.access$2(this$0).getSkipOverlay() == 1)
      {
        BannerAdView.access$3(this$0, paramString);
        Log.i("TouchListener", "false");
        return true;
      }
      Log.i("TouchListener", "default");
      BannerAdView.access$4(this$0);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.BannerAdView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */