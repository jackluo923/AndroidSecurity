package com.adsdk.sdk.mraid;

import android.util.Log;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

class WebViews$1
  extends WebChromeClient
{
  public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    Log.d("MoPub - WebViewsUtil", paramString2);
    return true;
  }
  
  public boolean onJsBeforeUnload(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    Log.d("MoPub - WebViewsUtil", paramString2);
    return true;
  }
  
  public boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    Log.d("MoPub - WebViewsUtil", paramString2);
    return true;
  }
  
  public boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    Log.d("MoPub - WebViewsUtil", paramString2);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.WebViews.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */