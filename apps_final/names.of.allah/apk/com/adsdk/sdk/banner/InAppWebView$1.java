package com.adsdk.sdk.banner;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.adsdk.sdk.Log;

class InAppWebView$1
  extends WebViewClient
{
  InAppWebView$1(InAppWebView paramInAppWebView) {}
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    Toast.makeText((Activity)paramWebView.getContext(), "MRAID error: " + paramString1, 0).show();
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString == null) {
      return false;
    }
    String str = Uri.parse(paramString).getHost();
    if (((paramString.startsWith("http:")) || (paramString.startsWith("https:"))) && (!"play.google.com".equals(str)) && (!"market.android.com".equals(str)) && (!paramString.endsWith(".apk")))
    {
      paramWebView.loadUrl(paramString);
      return true;
    }
    try
    {
      this$0.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
      this$0.finish();
      return true;
    }
    catch (ActivityNotFoundException paramWebView)
    {
      for (;;)
      {
        Log.w("MoPub", "Unable to start activity for " + paramString + ". Ensure that your phone can handle this intent.");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.InAppWebView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */