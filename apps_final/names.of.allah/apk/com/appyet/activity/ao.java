package com.appyet.activity;

import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.webkit.CookieManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.f.v;
import com.appyet.manager.af;
import com.appyet.manager.ar;
import com.appyet.manager.bp;
import java.util.HashMap;
import java.util.Map;

final class ao
  extends WebViewClient
{
  ao(WebBrowserActivity paramWebBrowserActivity) {}
  
  private void a(WebView paramWebView)
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("Accept-Language", ar.c(WebBrowserActivity.b(a)));
      paramWebView.loadUrl(WebBrowserActivity.c(a), localHashMap);
      return;
    }
    catch (Exception paramWebView)
    {
      d.a(paramWebView);
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
      if (!paramString.startsWith("http://disqus.com/logout")) {
        break label87;
      }
      CookieManager.getInstance().removeAllCookie();
      a(paramWebView);
      WebBrowserActivity.d(a).clearHistory();
    }
    label87:
    while ((!paramString.startsWith("http://disqus.com/next/login-success/")) && (!paramString.startsWith("http://disqus.com/_ax/twitter/complete/")))
    {
      return;
      a.b = false;
      break;
    }
    a(paramWebView);
    WebBrowserActivity.d(a).clearHistory();
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
        a(paramWebView);
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
    if (paramString.endsWith("simple-loading.html")) {
      return true;
    }
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
    if (paramString != null) {
      try
      {
        if (paramString.startsWith("market://"))
        {
          Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
          a.startActivity(localIntent);
          return true;
        }
      }
      catch (Exception localException)
      {
        d.a(localException);
      }
    }
    do
    {
      do
      {
        try
        {
          localObject = new HashMap();
          ((Map)localObject).put("Accept-Language", ar.c(WebBrowserActivity.b(a)));
          paramWebView.loadUrl(paramString, (Map)localObject);
          return true;
        }
        catch (Exception paramWebView)
        {
          d.a(paramWebView);
          return true;
        }
      } while (!paramString.startsWith("http://"));
      localObject = v.a(paramString);
      if ((localObject != null) && ((((String)localObject).contains("video")) || (((String)localObject).contains("audio")) || (((String)localObject).contains("image"))))
      {
        localObject = new Intent(a, WebActionActivity.class);
        ((Intent)localObject).putExtra("URL", paramString);
        a.startActivity((Intent)localObject);
        return true;
      }
    } while ((localObject == null) || (!((String)localObject).contains("application")) || (Build.VERSION.SDK_INT < 9));
    ba).l.a();
    Object localObject = (DownloadManager)a.getSystemService("download");
    DownloadManager.Request localRequest = new DownloadManager.Request(Uri.parse(paramString));
    String str = ba).l.d(paramString);
    localRequest.setDestinationUri(ba).l.b(str));
    if (Build.VERSION.SDK_INT >= 11)
    {
      localRequest.setNotificationVisibility(1);
      if (!ba).d.s()) {
        break label514;
      }
      localRequest.setAllowedNetworkTypes(2);
    }
    for (;;)
    {
      localRequest.setAllowedOverRoaming(false);
      localRequest.setTitle(str);
      localRequest.setDescription(paramString);
      ((DownloadManager)localObject).enqueue(localRequest);
      return true;
      localRequest.setShowRunningNotification(true);
      break;
      label514:
      localRequest.setAllowedNetworkTypes(3);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */