package com.inmobi.androidsdk.impl.net;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.commons.internal.Log;
import java.util.concurrent.atomic.AtomicBoolean;

public class WebviewLoader$MyWebViewClient
  extends WebViewClient
{
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    try
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "On page Finished " + paramString);
      if (WebviewLoader.b.compareAndSet(true, false)) {
        RequestResponseManager.c.set(true);
      }
      synchronized (RequestResponseManager.a)
      {
        RequestResponseManager.a.notify();
        super.onPageFinished(paramWebView, paramString);
        return;
      }
      return;
    }
    catch (Exception paramWebView)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception onPageFinished", paramWebView);
    }
  }
  
  public void onReceivedError(WebView arg1, int paramInt, String paramString1, String paramString2)
  {
    try
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Processing click in webview error " + paramInt + " Failing url: " + paramString2 + "Error description " + paramString1);
      WebviewLoader.b.set(false);
      RequestResponseManager.c.set(false);
      super.onReceivedError(???, paramInt, paramString1, paramString2);
      synchronized (RequestResponseManager.a)
      {
        RequestResponseManager.a.notify();
        return;
      }
      return;
    }
    catch (Exception ???)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception onReceived error callback webview", ???);
    }
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    Log.internal("[InMobi]-[Network]-4.4.1", "SSL Error.Webview will proceed " + paramSslError);
    paramSslErrorHandler.proceed();
    super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Log.internal("[InMobi]-[Network]-4.4.1", "Should override " + paramString);
    paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.net.WebviewLoader.MyWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */