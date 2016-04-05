package com.appyet.activity;

import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.f.v;
import com.appyet.manager.af;
import com.appyet.manager.bp;
import java.util.HashMap;
import java.util.Map;

final class ar
  extends WebViewClient
{
  ar(WhatsNewActivity paramWhatsNewActivity) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    Toast.makeText(a, paramString1, 0).show();
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString != null) {}
    Object localObject2;
    label161:
    DownloadManager.Request localRequest;
    String str;
    try
    {
      Object localObject1;
      if (paramString.startsWith("market://"))
      {
        localObject1 = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        a.startActivity((Intent)localObject1);
        return true;
      }
      if (paramString.startsWith("http://"))
      {
        localObject1 = v.a(paramString);
        if ((localObject1 == null) || ((!((String)localObject1).contains("video")) && (!((String)localObject1).contains("audio")) && (!((String)localObject1).contains("image")))) {
          break label161;
        }
        localObject1 = new Intent(a, WebActionActivity.class);
        ((Intent)localObject1).putExtra("URL", paramString);
        a.startActivity((Intent)localObject1);
        return true;
      }
    }
    catch (Exception localException)
    {
      d.a(localException);
      do
      {
        try
        {
          localObject2 = new HashMap();
          ((Map)localObject2).put("Accept-Language", com.appyet.manager.ar.c(WhatsNewActivity.a(a)));
          paramWebView.loadUrl(paramString, (Map)localObject2);
          return true;
        }
        catch (Exception paramWebView)
        {
          d.a(paramWebView);
          return true;
        }
      } while ((localObject2 == null) || (!((String)localObject2).contains("application")) || (Build.VERSION.SDK_INT < 9));
      aa).l.a();
      localObject2 = (DownloadManager)a.getSystemService("download");
      localRequest = new DownloadManager.Request(Uri.parse(paramString));
      str = aa).l.d(paramString);
      localRequest.setDestinationUri(aa).l.b(str));
      if (Build.VERSION.SDK_INT < 11) {
        break label328;
      }
    }
    localRequest.setNotificationVisibility(1);
    if (aa).d.s()) {
      localRequest.setAllowedNetworkTypes(2);
    }
    for (;;)
    {
      localRequest.setAllowedOverRoaming(false);
      localRequest.setTitle(str);
      localRequest.setDescription(paramString);
      ((DownloadManager)localObject2).enqueue(localRequest);
      return true;
      label328:
      localRequest.setShowRunningNotification(true);
      break;
      localRequest.setAllowedNetworkTypes(3);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */