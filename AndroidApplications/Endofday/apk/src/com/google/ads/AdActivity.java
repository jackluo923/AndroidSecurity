package com.google.ads;

import a;
import a.a;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import d;
import e;
import g;
import h;
import java.util.HashMap;
import t;
import u;

public class AdActivity
  extends Activity
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener, View.OnClickListener
{
  public static final String BASE_URL_PARAM = "baseurl";
  public static final String HTML_PARAM = "html";
  public static final String INTENT_ACTION_PARAM = "i";
  public static final String ORIENTATION_PARAM = "o";
  public static final String TYPE_PARAM = "m";
  public static final String URL_PARAM = "u";
  private static final Object a;
  private static AdActivity b;
  private static d c;
  private static AdActivity d;
  private g e;
  private long f;
  private RelativeLayout g;
  private boolean h;
  private VideoView i;
  
  static
  {
    AdActivity localAdActivity = null;
    Object localObject = new java/lang/Object;
    localObject.<init>();
    a = localObject;
    b = localAdActivity;
    c = localAdActivity;
    d = localAdActivity;
  }
  
  private void a(g paramg, boolean paramBoolean, int paramInt)
  {
    int j = 1024;
    int i2 = 1;
    int i1 = 0;
    int n = -1;
    requestWindowFeature(i2);
    Object localObject1 = getWindow();
    ((Window)localObject1).setFlags(j, j);
    localObject1 = paramg.getParent();
    if (localObject1 != null)
    {
      localObject1 = "Interstitial created with an AdWebView that has a parent.";
      a((String)localObject1);
    }
    for (;;)
    {
      return;
      localObject1 = paramg.b();
      if (localObject1 != null)
      {
        localObject1 = "Interstitial created with an AdWebView that is already in use by another AdActivity.";
        a((String)localObject1);
      }
      else
      {
        setRequestedOrientation(paramInt);
        paramg.a(this);
        localObject1 = new android/widget/ImageButton;
        Context localContext = getApplicationContext();
        ((ImageButton)localObject1).<init>(localContext);
        int k = 17301527;
        ((ImageButton)localObject1).setImageResource(k);
        Drawable localDrawable = null;
        ((ImageButton)localObject1).setBackgroundDrawable(localDrawable);
        float f1 = 1.0F;
        Object localObject3 = getResources();
        localObject3 = ((Resources)localObject3).getDisplayMetrics();
        f1 = TypedValue.applyDimension(i2, f1, (DisplayMetrics)localObject3);
        int m = (int)f1;
        ((ImageButton)localObject1).setPadding(m, m, i1, i1);
        ((ImageButton)localObject1).setOnClickListener(this);
        Object localObject2 = new android/view/ViewGroup$LayoutParams;
        ((ViewGroup.LayoutParams)localObject2).<init>(n, n);
        localObject3 = g;
        ((RelativeLayout)localObject3).addView(paramg, (ViewGroup.LayoutParams)localObject2);
        localObject2 = g;
        ((RelativeLayout)localObject2).addView((View)localObject1);
        localObject1 = g;
        setContentView((View)localObject1);
        if (paramBoolean) {
          a.a(paramg);
        }
      }
    }
  }
  
  private void a(String paramString)
  {
    t.b(paramString);
    finish();
  }
  
  public VideoView getVideoView()
  {
    VideoView localVideoView = i;
    return localVideoView;
  }
  
  public static void launchAdActivity(d paramd, e parame)
  {
    synchronized (a)
    {
      Object localObject2 = c;
      if (localObject2 == null) {
        c = paramd;
      }
      do
      {
        ??? = paramd.b();
        localObject2 = new android/content/Intent;
        Object localObject4 = ((Activity)???).getApplicationContext();
        Object localObject5 = AdActivity.class;
        ((Intent)localObject2).<init>((Context)localObject4, (Class)localObject5);
        localObject4 = "com.google.ads.AdOpener";
        localObject5 = parame.a();
        ((Intent)localObject2).putExtra((String)localObject4, (Bundle)localObject5);
        try
        {
          localObject4 = "Launching AdActivity.";
          t.a((String)localObject4);
          ((Activity)???).startActivity((Intent)localObject2);
          return;
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          for (;;)
          {
            String str = localActivityNotFoundException.getMessage();
            t.a(str, localActivityNotFoundException);
          }
        }
        localObject2 = c;
      } while (localObject2 == paramd);
      localObject2 = "Tried to launch a new AdActivity with a different AdManager.";
      t.b((String)localObject2);
    }
  }
  
  public void onClick(View paramView)
  {
    finish();
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    Object localObject = "Video finished playing.";
    t.d((String)localObject);
    localObject = e;
    String str = "javascript:videoController.showReplayAndSplash_()";
    ((g)localObject).loadUrl(str);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int m = 1;
    AdSize localAdSize = null;
    boolean bool7 = false;
    super.onCreate(paramBundle);
    Object localObject2 = d;
    if (localObject2 == null) {
      d = this;
    }
    g = localAdSize;
    h = bool7;
    i = localAdSize;
    localObject2 = getIntent();
    ??? = "com.google.ads.AdOpener";
    localObject2 = ((Intent)localObject2).getBundleExtra((String)???);
    if (localObject2 == null)
    {
      localObject2 = "Could not get the Bundle used to create AdActivity.";
      a((String)localObject2);
    }
    for (;;)
    {
      return;
      ??? = new e;
      ((e)???).<init>((Bundle)localObject2);
      localObject2 = ((e)???).b();
      Object localObject18 = ((e)???).c();
      ??? = d;
      if (this == ???) {}
      Object localObject17;
      boolean bool1;
      synchronized (a)
      {
        localObject17 = c;
        if (localObject17 != null)
        {
          localObject17 = c;
          ((d)localObject17).o();
          ??? = "intent";
          bool1 = ((String)localObject2).equals(???);
          if (!bool1) {
            break label466;
          }
          h = m;
          long l = SystemClock.elapsedRealtime();
          f = l;
          if (localObject18 == null)
          {
            String str1 = "Could not get the paramMap in launchIntent()";
            a(str1);
          }
        }
        else
        {
          localObject17 = "currentAdManager is null while trying to call onPresentScreen().";
          t.e((String)localObject17);
        }
      }
      Object localObject4 = "u";
      localObject4 = ((HashMap)localObject18).get(localObject4);
      localObject4 = (String)localObject4;
      if (localObject4 == null)
      {
        localObject4 = "Could not get the URL parameter in launchIntent().";
        a((String)localObject4);
      }
      else
      {
        ??? = "i";
        ??? = ((HashMap)localObject18).get(???);
        ??? = (String)???;
        localObject17 = "m";
        localObject17 = ((HashMap)localObject18).get(localObject17);
        localObject17 = (String)localObject17;
        localObject4 = Uri.parse((String)localObject4);
        if (??? == null)
        {
          ??? = new android/content/Intent;
          localObject17 = "android.intent.action.VIEW";
          ((Intent)???).<init>((String)localObject17, (Uri)localObject4);
          localObject4 = ???;
          label309:
          ??? = "android.intent.category.BROWSABLE";
          ((Intent)localObject4).addCategory((String)???);
          ??? = b;
          if (??? != null) {}
        }
        synchronized (a)
        {
          localObject17 = c;
          if (localObject17 != null)
          {
            b = this;
            localObject17 = c;
            ((d)localObject17).p();
            try
            {
              ??? = "Launching an intent from AdActivity.";
              t.a((String)???);
              startActivity((Intent)localObject4);
            }
            catch (ActivityNotFoundException localActivityNotFoundException)
            {
              ??? = localActivityNotFoundException.getMessage();
              t.a((String)???, localActivityNotFoundException);
              finish();
            }
            continue;
            localObject18 = new android/content/Intent;
            ((Intent)localObject18).<init>((String)???);
            if (localObject17 != null)
            {
              ((Intent)localObject18).setDataAndType(localActivityNotFoundException, (String)localObject17);
              localObject5 = localObject18;
              break label309;
            }
            ((Intent)localObject18).setData((Uri)localObject5);
            Object localObject5 = localObject18;
            break label309;
          }
          localObject17 = "currentAdManager is null while trying to call onLeaveApplication().";
          t.e((String)localObject17);
        }
        label466:
        ??? = new android/widget/RelativeLayout;
        localObject17 = getApplicationContext();
        ((RelativeLayout)???).<init>((Context)localObject17);
        g = ((RelativeLayout)???);
        ??? = "webapp";
        boolean bool2 = ((String)localObject6).equals(???);
        if (bool2)
        {
          ??? = new g;
          Object localObject12 = getApplicationContext();
          ((g)???).<init>((Context)localObject12, localAdSize);
          e = ((g)???);
          ??? = e;
          u.b((WebView)???);
          for (;;)
          {
            Object localObject19;
            Object localObject20;
            int j;
            synchronized (a)
            {
              localObject12 = c;
              if (localObject12 != null)
              {
                localObject12 = new h;
                localObject17 = c;
                localObject19 = a.a.b;
                boolean bool6 = false;
                ((h)localObject12).<init>((d)localObject17, (a.a)localObject19, bool6);
                ((h)localObject12).b();
                ??? = e;
                ((g)???).setWebViewClient((WebViewClient)localObject12);
                ??? = "u";
                ??? = ((HashMap)localObject18).get(???);
                ??? = (String)???;
                localObject12 = "baseurl";
                localObject12 = ((HashMap)localObject18).get(localObject12);
                localObject12 = (String)localObject12;
                localObject17 = "html";
                localObject17 = ((HashMap)localObject18).get(localObject17);
                localObject17 = (String)localObject17;
                localObject19 = "o";
                localObject18 = ((HashMap)localObject18).get(localObject19);
                Object localObject1 = localObject18;
                localObject1 = (String)localObject1;
                localObject20 = localObject1;
                if (??? == null) {
                  break label766;
                }
                localObject12 = e;
                ((g)localObject12).loadUrl((String)???);
                j = 4;
                if (localObject20 != null)
                {
                  localObject12 = "p";
                  boolean bool3 = ((String)localObject20).equals(localObject12);
                  if (!bool3) {
                    break label815;
                  }
                  j = m;
                }
                localObject13 = e;
                a((g)localObject13, bool7, j);
                break;
              }
              Object localObject13 = "currentAdManager is null while trying to show a webapp.";
              a((String)localObject13);
            }
            label766:
            if (localObject17 != null)
            {
              ??? = e;
              localObject18 = "text/html";
              localObject19 = "utf-8";
              ((g)???).loadDataWithBaseURL(str2, (String)localObject17, (String)localObject18, (String)localObject19, localAdSize);
            }
            else
            {
              ??? = "Could not get the URL or HTML parameter to show a web app.";
              a((String)???);
              break;
              label815:
              String str3 = "l";
              boolean bool4 = ((String)localObject20).equals(str3);
              if (bool4) {
                ??? = bool7;
              }
            }
          }
        }
        String str4 = "interstitial";
        boolean bool5 = ((String)???).equals(str4);
        int k;
        if (bool5) {
          synchronized (a)
          {
            Object localObject14 = c;
            if (localObject14 != null)
            {
              localObject14 = c;
              localObject14 = ((d)localObject14).f();
              e = ((g)localObject14);
              ??? = c;
              k = ((d)???).j();
              localObject14 = e;
              a((g)localObject14, m, k);
              continue;
            }
            localObject14 = "currentAdManager is null while trying to show an interstitial.";
            a((String)localObject14);
          }
        }
        Object localObject16 = new java/lang/StringBuilder;
        ((StringBuilder)localObject16).<init>();
        localObject17 = "Unknown AdOpener, <action: ";
        localObject16 = ((StringBuilder)localObject16).append((String)localObject17);
        Object localObject9 = ((StringBuilder)localObject16).append(k);
        localObject16 = ">";
        localObject9 = ((StringBuilder)localObject9).append((String)localObject16);
        localObject9 = ((StringBuilder)localObject9).toString();
        a((String)localObject9);
      }
    }
  }
  
  public void onDestroy()
  {
    AdActivity localAdActivity = null;
    Object localObject1 = g;
    if (localObject1 != null)
    {
      localObject1 = g;
      ((RelativeLayout)localObject1).removeAllViews();
    }
    localObject1 = e;
    if (localObject1 != null)
    {
      localObject1 = e;
      a.b((WebView)localObject1);
      localObject1 = e;
      ((g)localObject1).a(localAdActivity);
    }
    boolean bool = isFinishing();
    if (bool)
    {
      ??? = i;
      if (??? != null)
      {
        ??? = i;
        ((VideoView)???).stopPlayback();
        i = localAdActivity;
      }
      ??? = d;
      if (this != ???) {}
    }
    synchronized (a)
    {
      Object localObject3 = c;
      if (localObject3 != null)
      {
        localObject3 = c;
        ((d)localObject3).n();
        localObject3 = null;
        c = (d)localObject3;
        d = localAdActivity;
        ??? = b;
        if (this == ???) {
          b = localAdActivity;
        }
        ??? = "AdActivity is closing.";
        t.a((String)???);
        super.onDestroy();
        return;
      }
      localObject3 = "currentAdManager is null while trying to destroy AdActivity.";
      t.e((String)localObject3);
    }
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    Object localObject = "Video is ready to play.";
    t.d((String)localObject);
    localObject = e;
    String str = "javascript:videoController.hideSplashAndPlayVideo_()";
    ((g)localObject).loadUrl(str);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    boolean bool1 = h;
    if ((bool1) && (paramBoolean))
    {
      long l1 = SystemClock.elapsedRealtime();
      long l2 = f;
      l1 -= l2;
      l2 = 250L;
      boolean bool2 = l1 < l2;
      if (bool2)
      {
        String str = "Launcher AdActivity got focus and is closing.";
        t.d(str);
        finish();
      }
    }
  }
  
  public void showVideo(VideoView paramVideoView)
  {
    int m = 0;
    int j = -1;
    i = paramVideoView;
    Object localObject = e;
    if (localObject == null)
    {
      localObject = "Couldn't get adWebView to show the video.";
      a((String)localObject);
    }
    for (;;)
    {
      return;
      localObject = e;
      ((g)localObject).setBackgroundColor(m);
      paramVideoView.setOnCompletionListener(this);
      paramVideoView.setOnPreparedListener(this);
      localObject = new android/view/ViewGroup$LayoutParams;
      ((ViewGroup.LayoutParams)localObject).<init>(j, j);
      LinearLayout localLinearLayout = new android/widget/LinearLayout;
      Context localContext = getApplicationContext();
      localLinearLayout.<init>(localContext);
      int k = 17;
      localLinearLayout.setGravity(k);
      localLinearLayout.addView(paramVideoView, (ViewGroup.LayoutParams)localObject);
      RelativeLayout localRelativeLayout = g;
      localRelativeLayout.addView(localLinearLayout, m, (ViewGroup.LayoutParams)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.ads.AdActivity
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */