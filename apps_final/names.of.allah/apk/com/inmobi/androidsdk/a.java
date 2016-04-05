package com.inmobi.androidsdk;

import android.graphics.Bitmap;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.CustomView.SwitchIconType;

class a
  extends WebViewClient
{
  a(IMBrowserActivity paramIMBrowserActivity) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if (IMBrowserActivity.b(a) != null)
    {
      if (!paramWebView.canGoForward()) {
        break label53;
      }
      IMBrowserActivity.b(a).setSwitchInt(CustomView.SwitchIconType.FORWARD_ACTIVE);
      IMBrowserActivity.b(a).invalidate();
    }
    for (;;)
    {
      CookieSyncManager.getInstance().sync();
      return;
      label53:
      IMBrowserActivity.b(a).setSwitchInt(CustomView.SwitchIconType.FORWARD_INACTIVE);
      IMBrowserActivity.b(a).invalidate();
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    if (IMBrowserActivity.b(a) != null)
    {
      IMBrowserActivity.b(a).setSwitchInt(CustomView.SwitchIconType.FORWARD_INACTIVE);
      IMBrowserActivity.b(a).invalidate();
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */