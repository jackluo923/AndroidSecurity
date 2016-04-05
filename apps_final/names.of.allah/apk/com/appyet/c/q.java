package com.appyet.c;

import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.Log;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.appyet.activity.DisqusCommentActivity;
import com.appyet.activity.MainActivity;
import com.appyet.activity.MediaPlayerActivity;
import com.appyet.activity.PodcastActionActivity;
import com.appyet.activity.VideoPlayerActivity;
import com.appyet.activity.WebActionActivity;
import com.appyet.activity.WebBrowserActivity;
import com.appyet.activity.YouTubePlayerActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.context.f;
import com.appyet.d.d;
import com.appyet.d.e;
import com.appyet.data.FeedItem;
import com.appyet.f.v;
import com.appyet.f.z;
import com.appyet.manager.af;
import com.appyet.manager.al;
import com.appyet.manager.as;
import com.appyet.manager.bp;
import com.appyet.metadata.MetadataModuleFeed;
import java.net.URISyntaxException;
import java.util.List;

final class q
  extends WebViewClient
{
  private ApplicationContext b;
  private MainActivity c;
  
  public q(k paramk, MainActivity paramMainActivity)
  {
    c = paramMainActivity;
    b = ((ApplicationContext)c.getApplicationContext());
  }
  
  private WebResourceResponse a()
  {
    return new WebResourceResponse("image/png", "", b.getResources().openRawResource(2130837758));
  }
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    k.i(a).setVisibility(8);
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
    if (paramString == null) {
      localObject = paramString;
    }
    try
    {
      return super.shouldInterceptRequest(paramWebView, paramString);
    }
    catch (Exception paramString)
    {
      String str;
      return super.shouldInterceptRequest(paramWebView, (String)localObject);
    }
    str = paramString;
    Object localObject = paramString;
    if (paramString.startsWith("http://APPYET_BASE"))
    {
      localObject = paramString;
      str = paramString.replace("http://APPYET_BASE", "http://");
    }
    paramString = str;
    localObject = str;
    if (!str.startsWith("http://"))
    {
      paramString = str;
      localObject = str;
      if (!str.startsWith("https://"))
      {
        localObject = str;
        if (!str.startsWith("//")) {
          break label311;
        }
        localObject = str;
        paramString = "http:" + str;
      }
    }
    localObject = paramString;
    str = e.a(z.a(paramString));
    if (paramString != null)
    {
      localObject = paramString;
      if (!paramString.contains("feeds.feedburner.com"))
      {
        localObject = paramString;
        if (!paramString.contains("doubleclick.net"))
        {
          localObject = paramString;
          if (!paramString.contains("feedsportal.com"))
          {
            localObject = paramString;
            if (!paramString.contains("api.tweetmeme.com/imagebutton.gif"))
            {
              localObject = paramString;
              if (!paramString.contains("share-buttons/fb.jpg"))
              {
                localObject = paramString;
                if (!paramString.contains("share-buttons/diggme.png"))
                {
                  localObject = paramString;
                  if (!paramString.contains("share-buttons/stumbleupon.png"))
                  {
                    localObject = paramString;
                    if (!paramString.contains("wordpress.com/1.0"))
                    {
                      localObject = paramString;
                      if (!paramString.contains("wordpress.com/b.gif"))
                      {
                        localObject = paramString;
                        if (!paramString.contains("blogger.googleusercontent.com"))
                        {
                          localObject = paramString;
                          if (!paramString.contains("feeds.feedburner.com"))
                          {
                            localObject = paramString;
                            if (!paramString.contains("www.assoc-amazon.com"))
                            {
                              localObject = paramString;
                              if (!paramString.contains("doubleclick.net"))
                              {
                                localObject = paramString;
                                if (!paramString.contains("statcounter.com"))
                                {
                                  localObject = paramString;
                                  if (!paramString.contains("pheedo.com")) {
                                    break label472;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        localObject = paramString;
        return a();
        label311:
        localObject = str;
        paramString = "http://" + str;
        break;
      }
      localObject = paramString;
      if (b.j.g(str))
      {
        localObject = paramString;
        BitmapFactory.Options localOptions = b.j.e(str);
        localObject = paramString;
        if (outWidth >= da).MinImageWidth)
        {
          localObject = paramString;
          if (outHeight >= da).MinImageHeight) {}
        }
        else
        {
          localObject = paramString;
          return a();
        }
        localObject = paramString;
        paramString = new WebResourceResponse("image/jpeg", "", b.j.f(str));
        return paramString;
      }
      localObject = paramString;
      paramString = super.shouldInterceptRequest(paramWebView, paramString);
      return paramString;
      int i = 1;
      continue;
      label472:
      i = 0;
    }
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString != null) {}
    for (;;)
    {
      try
      {
        if (paramString.startsWith("market://"))
        {
          paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
          a.startActivity(paramWebView);
          return true;
        }
      }
      catch (Exception paramWebView)
      {
        Object localObject;
        String str;
        d.a(paramWebView);
        try
        {
          paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
          c.startActivity(paramWebView);
          return true;
        }
        catch (Exception paramWebView)
        {
          boolean bool;
          d.a(paramWebView);
          return false;
        }
        ((DownloadManager.Request)localObject).setAllowedNetworkTypes(3);
        continue;
        if ((paramString == null) || ((!paramString.startsWith("http://www.youtube.com/watch")) && (!paramString.startsWith("https://www.youtube.com/watch")))) {
          continue;
        }
        paramWebView = a;
        if (!k.a(c, paramString)) {
          continue;
        }
        c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
        break label1265;
        paramWebView = new Intent(c, WebBrowserActivity.class);
        paramWebView.putExtra("URL", paramString);
        c.startActivity(paramWebView);
        break label1265;
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
        bool = paramString.startsWith("about:");
        if (!bool) {
          continue;
        }
        return false;
        try
        {
          paramWebView = Intent.parseUri(paramString, 1);
          if (b.getPackageManager().resolveActivity(paramWebView, 0) == null)
          {
            localObject = paramWebView.getPackage();
            if (localObject != null)
            {
              paramWebView = new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:" + (String)localObject));
              paramWebView.addCategory("android.intent.category.BROWSABLE");
              b.startActivity(paramWebView);
              return true;
            }
          }
        }
        catch (URISyntaxException paramWebView)
        {
          Log.w("Browser", "Bad URI " + paramString + ": " + paramWebView.getMessage());
          return false;
        }
        paramWebView.addCategory("android.intent.category.BROWSABLE");
        paramWebView.setComponent(null);
        try
        {
          bool = c.startActivityIfNeeded(paramWebView, -1);
          if (!bool) {
            continue;
          }
          return true;
        }
        catch (ActivityNotFoundException paramWebView)
        {
          d.a(paramWebView);
        }
        continue;
      }
      try
      {
        if (paramString.startsWith("appyet.youtube:"))
        {
          paramWebView = new Intent(c, YouTubePlayerActivity.class);
          paramWebView.setData(Uri.parse(paramString));
          paramWebView.putExtra("TITLE", ((FeedItem)b.n.b.get(k.j(a))).getTitle());
          c.startActivity(paramWebView);
          return true;
        }
      }
      catch (Exception paramWebView)
      {
        d.a(paramWebView);
        try
        {
          if (paramString.startsWith("appyet.video:"))
          {
            paramWebView = paramString.replace("appyet.video:", "");
            try
            {
              localObject = new Intent(b, VideoPlayerActivity.class);
              ((Intent)localObject).putExtra("URL", paramWebView);
              b.startActivity((Intent)localObject);
              return true;
            }
            catch (Exception paramWebView)
            {
              d.a(paramWebView);
              continue;
            }
          }
          ((DownloadManager.Request)localObject).setAllowedNetworkTypes(2);
        }
        catch (Exception paramWebView)
        {
          d.a(paramWebView);
          try
          {
            if (paramString.startsWith("appyet.audio:"))
            {
              paramWebView = paramString.replace("appyet.audio:", "");
              try
              {
                b.c.a(paramWebView, paramWebView);
                b.c.a(false);
                paramWebView = new Intent(a.getSherlockActivity(), MediaPlayerActivity.class);
                a.startActivity(paramWebView);
                return true;
              }
              catch (Exception paramWebView)
              {
                d.a(paramWebView);
                continue;
              }
            }
            b.l.a();
          }
          catch (Exception paramWebView)
          {
            d.a(paramWebView);
            try
            {
              if (paramString.startsWith("appyet.podcast:"))
              {
                paramWebView = new Intent(a.getActivity(), PodcastActionActivity.class);
                paramWebView.putExtra("POSITION", k.j(a));
                a.startActivity(paramWebView);
                return true;
              }
            }
            catch (Exception paramWebView)
            {
              d.a(paramWebView);
              try
              {
                if (paramString.startsWith(k.h(a) + "/" + k.f(a)))
                {
                  new n(a, paramString).a(new Void[0]);
                  return true;
                }
              }
              catch (Exception paramWebView)
              {
                d.a(paramWebView);
                try
                {
                  if (paramString.toLowerCase().startsWith(k.h(a).toLowerCase() + "/" + k.g(a).toLowerCase()))
                  {
                    paramWebView = new Intent(b, DisqusCommentActivity.class);
                    paramWebView.putExtra("ArticleUrl", k.b(a).getLink());
                    paramWebView.putExtra("ArticleTitle", k.b(a).getTitle());
                    paramWebView.putExtra("DisQusShortName", da).DisQusShortName);
                    b.startActivity(paramWebView);
                    return true;
                  }
                }
                catch (Exception paramWebView)
                {
                  d.a(paramWebView);
                  try
                  {
                    if (paramString.startsWith("http://APPYET_BASE"))
                    {
                      paramWebView = new Intent(c, WebBrowserActivity.class);
                      paramWebView.putExtra("URL", paramString.replace("http://APPYET_BASE", "http://"));
                      c.startActivity(paramWebView);
                      return true;
                    }
                  }
                  catch (Exception paramWebView)
                  {
                    d.a(paramWebView);
                    if ((paramString.startsWith("wtai://wp/")) && (paramString.startsWith("wtai://wp/mc;")))
                    {
                      paramWebView = new Intent("android.intent.action.VIEW", Uri.parse("tel:" + paramString.substring(13)));
                      b.startActivity(paramWebView);
                      return true;
                    }
                    if (paramString.startsWith("http://")) {
                      continue;
                    }
                  }
                  if (!paramString.startsWith("file://")) {
                    continue;
                  }
                }
                paramWebView = v.a(paramString);
                if ((paramWebView != null) && ((paramWebView.contains("video")) || (paramWebView.contains("audio")) || (paramWebView.contains("image"))))
                {
                  paramWebView = new Intent(c, WebActionActivity.class);
                  paramWebView.putExtra("URL", paramString);
                  c.startActivity(paramWebView);
                  break label1265;
                }
                if (paramWebView == null) {
                  continue;
                }
              }
              if (!paramWebView.contains("application")) {
                continue;
              }
            }
            if (Build.VERSION.SDK_INT < 9) {
              continue;
            }
          }
          paramWebView = (DownloadManager)a.getSherlockActivity().getSystemService("download");
          localObject = new DownloadManager.Request(Uri.parse(paramString));
          str = b.l.d(paramString);
          ((DownloadManager.Request)localObject).setDestinationUri(b.l.b(str));
          if (Build.VERSION.SDK_INT >= 11) {
            ((DownloadManager.Request)localObject).setNotificationVisibility(1);
          }
          ((DownloadManager.Request)localObject).setShowRunningNotification(true);
          if (!b.d.s()) {
            continue;
          }
        }
        ((DownloadManager.Request)localObject).setAllowedOverRoaming(false);
        ((DownloadManager.Request)localObject).setTitle(str);
        ((DownloadManager.Request)localObject).setDescription(paramString);
        paramWebView.enqueue((DownloadManager.Request)localObject);
      }
    }
    label1265:
    return true;
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */