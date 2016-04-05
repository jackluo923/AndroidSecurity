package com.adsdk.sdk.mraid;

import android.webkit.WebView;
import java.lang.reflect.Method;

public class WebViews
{
  private static final String LOGTAG = "MoPub - WebViewsUtil";
  
  public static void onPause(WebView paramWebView)
  {
    try
    {
      WebView.class.getDeclaredMethod("onPause", new Class[0]).invoke(paramWebView, new Object[0]);
      return;
    }
    catch (Exception paramWebView) {}
  }
  
  public static void onResume(WebView paramWebView)
  {
    try
    {
      WebView.class.getDeclaredMethod("onResume", new Class[0]).invoke(paramWebView, new Object[0]);
      return;
    }
    catch (Exception paramWebView) {}
  }
  
  public static void setDisableJSChromeClient(WebView paramWebView)
  {
    paramWebView.setWebChromeClient(new WebViews.1());
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.WebViews
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */