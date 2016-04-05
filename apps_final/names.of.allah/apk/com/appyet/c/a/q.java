package com.appyet.c.a;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.appyet.activity.MainActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;

final class q
  extends WebViewClient
{
  private ApplicationContext b;
  private MainActivity c;
  
  public q(l paraml, MainActivity paramMainActivity)
  {
    c = paramMainActivity;
    b = ((ApplicationContext)c.getApplicationContext());
  }
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    l.f(a).setVisibility(8);
    super.onPageFinished(paramWebView, paramString);
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    Toast.makeText(b, paramString1, 1).show();
  }
  
  public final WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    if (paramString == null) {}
    try
    {
      return super.shouldInterceptRequest(paramWebView, paramString);
    }
    catch (Exception localException) {}
    WebResourceResponse localWebResourceResponse = super.shouldInterceptRequest(paramWebView, paramString);
    return localWebResourceResponse;
    return super.shouldInterceptRequest(paramWebView, paramString);
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    try
    {
      paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
      c.startActivity(paramWebView);
      return true;
    }
    catch (Exception paramWebView)
    {
      d.a(paramWebView);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */