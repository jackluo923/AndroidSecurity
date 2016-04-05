package com.appyet.c;

import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.appyet.activity.MediaPlayerActivity;
import com.appyet.activity.VideoPlayerActivity;
import com.appyet.activity.WebActionActivity;
import com.appyet.activity.WebBrowserActivity;
import com.appyet.activity.YouTubePlayerActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.data.Web;
import com.appyet.f.v;
import com.appyet.manager.af;
import com.appyet.manager.ar;
import com.appyet.manager.as;
import com.appyet.manager.bp;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

final class bi
  extends WebViewClient
{
  bi(be parambe) {}
  
  private void a(WebView paramWebView)
  {
    try
    {
      if (be.d(a).getType().equals("Link"))
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put("Accept-Language", ar.c(be.b(a)));
        paramWebView.loadUrl(be.d(a).getData(), localHashMap);
        return;
      }
      paramWebView.loadDataWithBaseURL(be.e(a), be.d(a).getData(), "text/html", "UTF-8", "");
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
      if (a.getSherlockActivity() != null) {
        a.getSherlockActivity().supportInvalidateOptionsMenu();
      }
      if (!paramString.startsWith("http://disqus.com/logout")) {
        break label100;
      }
      CookieManager.getInstance().removeAllCookie();
      a(paramWebView);
      be.f(a).clearHistory();
    }
    label100:
    while ((!paramString.startsWith("http://disqus.com/next/login-success/")) && (!paramString.startsWith("http://disqus.com/_ax/twitter/complete/")))
    {
      return;
      a.b = false;
      break;
    }
    a(paramWebView);
    be.f(a).clearHistory();
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    a.a = false;
    if (a.getSherlockActivity() != null) {
      a.getSherlockActivity().supportInvalidateOptionsMenu();
    }
    if (paramString.equals("http://APPYET_BASE")) {}
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
    Toast.makeText(be.b(a), paramString1, 0).show();
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
    if (paramString == null) {
      return false;
    }
    if ((be.c(a) != null) && (be.c(a).equals(paramString))) {
      return true;
    }
    be.a(a, paramString);
    if (paramString != null) {}
    try
    {
      if (paramString.startsWith("market://"))
      {
        paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        a.startActivity(paramWebView);
        return true;
      }
      try
      {
        if (paramString.startsWith("appyet.youtube:"))
        {
          Intent localIntent1 = new Intent(a.getSherlockActivity(), YouTubePlayerActivity.class);
          localIntent1.setData(Uri.parse(paramString));
          a.getSherlockActivity().startActivity(localIntent1);
          return true;
        }
      }
      catch (Exception localException1)
      {
        d.a(localException1);
        try
        {
          if (paramString.startsWith("appyet.video:"))
          {
            String str = paramString.replace("appyet.video:", "");
            try
            {
              localObject3 = new Intent(be.b(a), VideoPlayerActivity.class);
              ((Intent)localObject3).putExtra("URL", str);
              be.b(a).startActivity((Intent)localObject3);
              return true;
            }
            catch (Exception localException2)
            {
              for (;;)
              {
                d.a(localException2);
              }
            }
          }
          Object localObject1;
          Intent localIntent2;
          label731:
          if (!paramWebView.contains("application")) {
            break label1022;
          }
        }
        catch (Exception localException3)
        {
          d.a(localException3);
          try
          {
            if (paramString.startsWith("appyet.audio:"))
            {
              localObject1 = paramString.replace("appyet.audio:", "");
              try
              {
                ba).c.a((String)localObject1, (String)localObject1);
                ba).c.a(false);
                localObject1 = new Intent(a.getSherlockActivity(), MediaPlayerActivity.class);
                a.startActivity((Intent)localObject1);
                return true;
              }
              catch (Exception localException4)
              {
                for (;;)
                {
                  d.a(localException4);
                }
              }
            }
            paramWebView = v.a(paramString);
          }
          catch (Exception localException5)
          {
            d.a(localException5);
            try
            {
              if (paramString.startsWith("http://APPYET_BASE"))
              {
                localIntent2 = new Intent(a.getSherlockActivity(), WebBrowserActivity.class);
                localIntent2.putExtra("URL", paramString.replace("http://APPYET_BASE", "http://"));
                a.getSherlockActivity().startActivity(localIntent2);
                return true;
              }
            }
            catch (Exception localException6)
            {
              d.a(localException6);
              try
              {
                if ((paramString.startsWith("wtai://wp/")) && (paramString.startsWith("wtai://wp/mc;")))
                {
                  paramWebView = new Intent("android.intent.action.VIEW", Uri.parse("tel:" + paramString.substring(13)));
                  be.b(a).startActivity(paramWebView);
                  return true;
                }
              }
              catch (Exception paramWebView)
              {
                d.a(paramWebView);
                return false;
              }
              try
              {
                if (paramString.startsWith("tel:"))
                {
                  paramWebView = new Intent("android.intent.action.DIAL", Uri.parse(paramString));
                  a.startActivity(paramWebView);
                  return true;
                }
              }
              catch (Exception paramWebView)
              {
                d.a(paramWebView);
                return false;
              }
              if (paramString.startsWith("about:")) {
                return false;
              }
              bool = a.b;
              if (bool) {
                try
                {
                  localObject2 = new HashMap();
                  ((Map)localObject2).put("Accept-Language", ar.c(be.b(a)));
                  paramWebView.loadUrl(paramString, (Map)localObject2);
                  return true;
                }
                catch (Exception paramWebView)
                {
                  d.a(paramWebView);
                }
              }
              if (paramString.startsWith("http://")) {
                break label731;
              }
            }
            if (!paramString.startsWith("https://")) {
              break label1061;
            }
          }
          if ((paramWebView != null) && ((paramWebView.contains("video")) || (paramWebView.contains("audio")) || (paramWebView.contains("image"))))
          {
            paramWebView = new Intent(a.getSherlockActivity(), WebActionActivity.class);
            paramWebView.putExtra("URL", paramString);
            a.getSherlockActivity().startActivity(paramWebView);
            break label1246;
          }
          if (paramWebView == null) {
            break label1022;
          }
        }
      }
      if (Build.VERSION.SDK_INT < 9) {
        break label1022;
      }
      ba).l.a();
      paramWebView = (DownloadManager)a.getSherlockActivity().getSystemService("download");
      localObject2 = new DownloadManager.Request(Uri.parse(paramString));
      localObject3 = ba).l.d(paramString);
      ((DownloadManager.Request)localObject2).setDestinationUri(ba).l.b((String)localObject3));
      if (Build.VERSION.SDK_INT >= 11) {
        ((DownloadManager.Request)localObject2).setNotificationVisibility(1);
      }
      ((DownloadManager.Request)localObject2).setShowRunningNotification(true);
      if (!ba).d.s()) {
        break label1013;
      }
      ((DownloadManager.Request)localObject2).setAllowedNetworkTypes(2);
    }
    catch (Exception paramWebView)
    {
      Object localObject3;
      boolean bool;
      Object localObject2;
      d.a(paramWebView);
      for (;;)
      {
        try
        {
          paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
          a.getSherlockActivity().startActivity(paramWebView);
          return true;
        }
        catch (Exception paramWebView)
        {
          d.a(paramWebView);
          return false;
        }
        ((DownloadManager.Request)localObject2).setAllowedNetworkTypes(3);
        break;
        paramWebView = new Intent(a.getSherlockActivity(), WebBrowserActivity.class);
        paramWebView.putExtra("URL", paramString);
        a.getSherlockActivity().startActivity(paramWebView);
        return true;
        try
        {
          paramWebView = Intent.parseUri(paramString, 1);
          if (paramWebView == null) {
            continue;
          }
        }
        catch (URISyntaxException paramWebView)
        {
          try
          {
            if (be.b(a).getPackageManager().resolveActivity(paramWebView, 0) != null) {
              continue;
            }
            localObject2 = paramWebView.getPackage();
            if (localObject2 == null) {
              continue;
            }
            paramWebView = new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:" + (String)localObject2));
            paramWebView.addCategory("android.intent.category.BROWSABLE");
            be.b(a).startActivity(paramWebView);
            return true;
          }
          catch (Exception paramWebView)
          {
            d.a(paramWebView);
            return false;
          }
          paramWebView = paramWebView;
          Log.w("Browser", "Bad URI " + paramString + ": " + paramWebView.getMessage());
          return false;
        }
        paramWebView.addCategory("android.intent.category.BROWSABLE");
        paramWebView.setComponent(null);
        try
        {
          bool = a.getSherlockActivity().startActivityIfNeeded(paramWebView, -1);
          if (bool) {
            return true;
          }
        }
        catch (ActivityNotFoundException paramWebView)
        {
          d.a(paramWebView);
        }
      }
    }
    ((DownloadManager.Request)localObject2).setAllowedOverRoaming(false);
    ((DownloadManager.Request)localObject2).setTitle((CharSequence)localObject3);
    ((DownloadManager.Request)localObject2).setDescription(paramString);
    paramWebView.enqueue((DownloadManager.Request)localObject2);
    label1013:
    label1022:
    label1061:
    label1246:
    return true;
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */