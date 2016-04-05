package com.millennialmedia.android;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

abstract class MMWebViewClient
  extends WebViewClient
{
  private ExecutorService cachedExecutor = Executors.newCachedThreadPool();
  boolean isLastMMCommandResize;
  MMWebViewClient.MMWebViewClientListener mmWebViewClientListener;
  HttpRedirection.RedirectionListenerImpl redirectListenerImpl;
  
  MMWebViewClient(MMWebViewClient.MMWebViewClientListener paramMMWebViewClientListener, HttpRedirection.RedirectionListenerImpl paramRedirectionListenerImpl)
  {
    mmWebViewClientListener = paramMMWebViewClientListener;
    redirectListenerImpl = paramRedirectionListenerImpl;
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    MMWebView localMMWebView = (MMWebView)paramWebView;
    if (!localMMWebView.isOriginalUrl(paramString))
    {
      mmWebViewClientListener.onPageFinished(paramString);
      MMSDK.Log.d("onPageFinished webview: " + localMMWebView.toString() + "url is " + paramString);
      localMMWebView.setAdProperties(redirectListenerImpl.getAdProperties());
      setMraidState(localMMWebView);
    }
    super.onPageFinished(paramWebView, paramString);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    MMSDK.Log.d("onPageStarted: %s", new Object[] { paramString });
    mmWebViewClientListener.onPageStarted(paramString);
    MMWebView localMMWebView = (MMWebView)paramWebView;
    mraidState = "loading";
    requiresPreAdSizeFix = false;
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    MMSDK.Log.e("Error: %s %s %s", new Object[] { Integer.valueOf(paramInt), paramString1, paramString2 });
  }
  
  abstract void setMraidState(MMWebView paramMMWebView);
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    MMWebView localMMWebView = (MMWebView)paramWebView;
    if (!localMMWebView.isOriginalUrl(paramString))
    {
      MMSDK.Log.v("@@@@@@@@@@SHOULDOVERRIDELOADING@@@@@@@@@@@@@ Url is " + paramString + " for " + paramWebView);
      if (paramString.substring(0, 6).equalsIgnoreCase("mmsdk:"))
      {
        MMSDK.Log.v("Running JS bridge command: " + paramString);
        paramWebView = new MMCommand((MMWebView)paramWebView, paramString);
        isLastMMCommandResize = paramWebView.isResizeCommand();
        cachedExecutor.execute(paramWebView);
        return true;
      }
      if (redirectListenerImpl.isExpandingToUrl()) {
        return false;
      }
      redirectListenerImpl.url = paramString;
      redirectListenerImpl.weakContext = new WeakReference(paramWebView.getContext());
      redirectListenerImpl.creatorAdImplInternalId = creatorAdImplId;
      HttpRedirection.startActivityFromUri(redirectListenerImpl);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */