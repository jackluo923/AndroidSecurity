package com.inmobi.re.container;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.configs.Initializer;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

class b
  extends WebViewClient
{
  b(IMWebView paramIMWebView) {}
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> onLoadResource:" + paramString);
    try
    {
      if (IMWebView.a(a) != null) {
        IMWebView.a(a).onLoadResource(paramWebView, paramString);
      }
      if ((paramString != null) && (paramString.contains("/mraid.js")) && (!a.getUrl().equals("about:blank")) && (!a.getUrl().startsWith("file:")))
      {
        Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> onLoadResource:Hippy, Mraid ad alert!...injecting mraid and mraidview object at " + paramWebView.getUrl());
        paramWebView = a.getUrl();
        if (!IMWebView.d(a).contains(paramWebView)) {
          IMWebView.d(a).add(paramWebView);
        }
        if (!a.mraidLoaded) {
          a.injectJavaScript(Initializer.getMRAIDString());
        }
        a.mraidLoaded = true;
      }
      return;
    }
    catch (Exception paramWebView)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "Cannot load resource", paramWebView);
    }
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> onPageFinished, url: " + paramString);
    if (IMWebView.a(a) != null) {
      IMWebView.a(a).onPageFinished(paramWebView, paramString);
    }
    try
    {
      if ((IMWebView.d(a).contains(paramString)) && (!a.mraidLoaded)) {
        a.injectJavaScript(Initializer.getMRAIDString());
      }
      Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> Current State:" + IMWebView.b(a));
      if (IMWebView.b(a) == IMWebView.ViewState.LOADING)
      {
        a.injectJavaScript("window.mraid.broadcastEvent('ready');");
        Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> Firing ready event at " + paramWebView);
        if (a.mOriginalWebviewForExpandUrl != null) {
          a.setState(IMWebView.ViewState.EXPANDED);
        }
        for (;;)
        {
          if (((!a.mIsInterstitialAd) || (a.mWebViewIsBrowserActivity)) && (a.getVisibility() == 4)) {
            a.setVisibility(0);
          }
          if ((IMWebView.e(a) != null) && (!IMWebView.c(a).get())) {
            IMWebView.e(a).sendToTarget();
          }
          if (IMWebView.f(a) == null) {
            break;
          }
          IMWebView.f(a).sendToTarget();
          return;
          a.setState(IMWebView.ViewState.DEFAULT);
        }
      }
      return;
    }
    catch (Exception paramWebView)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Exception in onPageFinished ", paramWebView);
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    a.setState(IMWebView.ViewState.LOADING);
    Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> onPageStarted url: " + paramString + " p " + a.getParent());
    if (a.getParent() == null) {
      IMWebView.a(a, true);
    }
    if (IMWebView.a(a) != null) {
      IMWebView.a(a).onPageStarted(paramWebView, paramString, paramBitmap);
    }
    a.mraidLoaded = false;
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> error: " + paramString1);
    if (IMWebView.a(a) != null) {
      IMWebView.a(a).onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    }
    try
    {
      if ((IMWebView.b(a) == IMWebView.ViewState.LOADING) && (a.mListener != null) && (!IMWebView.c(a).get())) {
        a.mListener.onError();
      }
      IMWebView.a(a, null);
      return;
    }
    catch (Exception paramWebView)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Exception in webview loading ", paramWebView);
    }
  }
  
  @TargetApi(14)
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    IMWebView.a(a, paramSslErrorHandler, paramSslError);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> shouldOverrideUrlLoading, url:" + paramString + "webview id" + paramWebView);
    try
    {
      if (a.mWebViewIsBrowserActivity)
      {
        if ((paramString.startsWith("http:")) || (paramString.startsWith("https:")))
        {
          a.doHidePlayers();
          return false;
        }
        IMWebView.a(a, paramString);
        return true;
      }
    }
    catch (Exception paramWebView)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "Should override exception", paramWebView);
      return false;
    }
    IMWebView.a(a, paramString);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */