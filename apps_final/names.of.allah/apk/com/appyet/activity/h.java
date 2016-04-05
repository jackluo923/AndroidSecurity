package com.appyet.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.CookieManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.appyet.d.d;
import com.appyet.manager.ar;
import java.util.HashMap;
import java.util.Map;

final class h
  extends WebViewClient
{
  h(DisqusCommentActivity paramDisqusCommentActivity) {}
  
  public final void doUpdateVisitedHistory(WebView paramWebView, String paramString, boolean paramBoolean)
  {
    if (paramString.startsWith("https://www.surveymonkey.com")) {
      return;
    }
    super.doUpdateVisitedHistory(paramWebView, paramString, paramBoolean);
  }
  
  public final void onLoadResource(WebView paramWebView, String paramString)
  {
    if (paramString.contains("&per_page")) {
      paramWebView.pageUp(true);
    }
  }
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    if (!a.b) {
      a.a = true;
    }
    if ((a.a) && (!a.b))
    {
      a.supportInvalidateOptionsMenu();
      if (!paramString.startsWith("http://comment")) {
        break label76;
      }
      DisqusCommentActivity.d(a).clearHistory();
    }
    label76:
    do
    {
      return;
      a.b = false;
      break;
      if (paramString.startsWith("http://disqus.com/logout"))
      {
        CookieManager.getInstance().removeAllCookie();
        DisqusCommentActivity.b(a);
        DisqusCommentActivity.d(a).clearHistory();
        return;
      }
    } while ((!paramString.startsWith("http://disqus.com/next/login-success/")) && (!paramString.startsWith("http://disqus.com/_ax/twitter/complete/")));
    DisqusCommentActivity.b(a);
    DisqusCommentActivity.d(a).clearHistory();
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    a.a = false;
    a.supportInvalidateOptionsMenu();
    if (paramString.equals("http://base/")) {}
    do
    {
      return;
      if (paramString.startsWith("http://comment"))
      {
        DisqusCommentActivity.b(a);
        return;
      }
    } while ((!paramString.startsWith("http://disqus.com/_ax/google/complete/")) && (!paramString.startsWith("http://disqus.com/_ax/facebook/complete/")));
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    Toast.makeText(a, paramString1, 0).show();
  }
  
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (!a.a) {
      a.b = true;
    }
    a.a = false;
    try
    {
      if (paramString.startsWith("http://base/#comment")) {
        return true;
      }
      if (paramString.startsWith("comment:"))
      {
        DisqusCommentActivity.b(a);
        return true;
      }
    }
    catch (Exception paramWebView)
    {
      d.a(paramWebView);
      return true;
    }
    if (!paramString.endsWith("simple-loading.html"))
    {
      if (paramString.endsWith("/latest.rss"))
      {
        paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        a.startActivity(paramWebView);
        return true;
      }
      if ((paramString.contains("//redirect.disqus.com")) || (paramString.startsWith("https://www.facebook.com/sharer.php")) || (paramString.startsWith("https://twitter.com/intent/tweet?url=")) || (paramString.equals("http://disqus.com/")) || (paramString.equals("http://disqus.com/account/")) || (paramString.startsWith("http://docs.disqus.com/kb")))
      {
        paramWebView = paramString;
        if (paramString.startsWith("//")) {
          paramWebView = "http:" + paramString;
        }
        paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramWebView));
        a.startActivity(paramWebView);
        return true;
      }
      HashMap localHashMap = new HashMap();
      localHashMap.put("Accept-Language", ar.c(DisqusCommentActivity.c(a)));
      paramWebView.loadUrl(paramString, localHashMap);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */