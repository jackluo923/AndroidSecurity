package com.adsdk.sdk.banner;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.adsdk.sdk.AdListener;
import com.adsdk.sdk.AdResponse;
import com.adsdk.sdk.Log;
import com.adsdk.sdk.data.ClickType;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.MessageFormat;

@SuppressLint({"ViewConstructor", "SetJavaScriptEnabled"})
public class BannerAdView
  extends RelativeLayout
{
  public static final int LIVE = 0;
  public static final int TEST = 1;
  private static Field mWebView_LAYER_TYPE_SOFTWARE;
  private static Method mWebView_SetLayerType;
  private AdListener adListener;
  private boolean animation;
  private Animation fadeInAnimation = null;
  private int height;
  private boolean isInternalBrowser = false;
  private Context mContext = null;
  protected boolean mIsInForeground;
  private AdResponse response;
  private final Handler updateHandler = new Handler();
  private boolean wasUserAction = false;
  private WebSettings webSettings;
  private WebView webView;
  private int width;
  
  static {}
  
  public BannerAdView(Context paramContext, AdResponse paramAdResponse, int paramInt1, int paramInt2, boolean paramBoolean, AdListener paramAdListener)
  {
    super(paramContext);
    mContext = paramContext;
    response = paramAdResponse;
    width = paramInt1;
    height = paramInt2;
    animation = paramBoolean;
    adListener = paramAdListener;
    initialize(paramContext);
  }
  
  private void buildBannerView()
  {
    webView = createWebView(mContext);
    Log.d("ADSDK", "Create view flipper");
    float f = mContext.getResources().getDisplayMetrics().density;
    if ((width != 0) && (height != 0)) {
      setLayoutParams(new RelativeLayout.LayoutParams((int)(width * f + 0.5F), (int)(f * height + 0.5F)));
    }
    for (;;)
    {
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
      addView(webView, localLayoutParams);
      Log.d("ADSDK", "animation: " + animation);
      if (animation)
      {
        fadeInAnimation = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, 1.0F, 2, 0.0F);
        fadeInAnimation.setDuration(1000L);
        webView.setAnimation(fadeInAnimation);
      }
      return;
      setLayoutParams(new RelativeLayout.LayoutParams((int)(300.0F * f + 0.5F), (int)(f * 50.0F + 0.5F)));
    }
  }
  
  private WebView createWebView(Context paramContext)
  {
    paramContext = new BannerAdView.1(this, getContext());
    webSettings = paramContext.getSettings();
    webSettings.setJavaScriptEnabled(true);
    webSettings.setSupportMultipleWindows(true);
    paramContext.setBackgroundColor(0);
    setLayer(paramContext);
    paramContext.setWebViewClient(new BannerAdView.2(this));
    paramContext.setVerticalScrollBarEnabled(false);
    paramContext.setHorizontalScrollBarEnabled(false);
    return paramContext;
  }
  
  private void doOpenUrl(String paramString)
  {
    notifyAdClicked();
    if ((response.getClickUrl() != null) && (response.getSkipOverlay() == 1)) {
      makeTrackingRequest(response.getClickUrl());
    }
    if ((response.getClickType() != null) && (response.getClickType().equals(ClickType.INAPP)) && ((paramString.startsWith("http://")) || (paramString.startsWith("https://"))))
    {
      if (paramString.endsWith(".mp4"))
      {
        localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setDataAndType(Uri.parse(paramString), "video/mp4");
        startActivity(localIntent);
        return;
      }
      Intent localIntent = new Intent(getContext(), InAppWebView.class);
      localIntent.putExtra("REDIRECT_URI", paramString);
      startActivity(localIntent);
      return;
    }
    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }
  
  private static void initCompatibility()
  {
    for (;;)
    {
      int j;
      int i;
      try
      {
        arrayOfMethod = WebView.class.getMethods();
        j = arrayOfMethod.length;
        i = 0;
      }
      catch (SecurityException localSecurityException)
      {
        Method[] arrayOfMethod;
        Method localMethod;
        Log.v("SecurityException");
        return;
        i += 1;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        Log.v("NoSuchFieldException");
        return;
      }
      Log.v("set layer " + mWebView_SetLayerType);
      mWebView_LAYER_TYPE_SOFTWARE = WebView.class.getField("LAYER_TYPE_SOFTWARE");
      Log.v("set1 layer " + mWebView_LAYER_TYPE_SOFTWARE);
      return;
      localMethod = arrayOfMethod[i];
      if (localMethod.getName().equals("setLayerType")) {
        mWebView_SetLayerType = localMethod;
      } else if (i < j) {}
    }
  }
  
  private void initialize(Context paramContext)
  {
    initCompatibility();
    buildBannerView();
    showContent();
  }
  
  private void makeTrackingRequest(String paramString)
  {
    new BannerAdView.3(this, paramString).execute(new Void[0]);
  }
  
  private void notifyAdClicked()
  {
    updateHandler.post(new BannerAdView.4(this));
  }
  
  private void notifyLoadAdSucceeded()
  {
    updateHandler.post(new BannerAdView.5(this));
  }
  
  private void openLink()
  {
    if ((response != null) && (response.getClickUrl() != null)) {
      doOpenUrl(response.getClickUrl());
    }
  }
  
  private static void setLayer(WebView paramWebView)
  {
    if ((mWebView_SetLayerType != null) && (mWebView_LAYER_TYPE_SOFTWARE != null)) {
      try
      {
        Log.v("Set Layer is supported");
        mWebView_SetLayerType.invoke(paramWebView, new Object[] { Integer.valueOf(mWebView_LAYER_TYPE_SOFTWARE.getInt(WebView.class)), null });
        return;
      }
      catch (InvocationTargetException paramWebView)
      {
        Log.v("Set InvocationTargetException");
        return;
      }
      catch (IllegalArgumentException paramWebView)
      {
        Log.v("Set IllegalArgumentException");
        return;
      }
      catch (IllegalAccessException paramWebView)
      {
        Log.v("Set IllegalAccessException");
        return;
      }
    }
    Log.v("Set Layer is not supported");
  }
  
  private void showContent()
  {
    try
    {
      String str;
      if (response.getType() == 0)
      {
        str = MessageFormat.format("<body style='\"'margin: 0px; padding: 0px; text-align:center;'\"'><img src='\"'{0}'\"' width='\"'{1}'dp\"' height='\"'{2}'dp\"'/></body>", new Object[] { response.getImageUrl(), Integer.valueOf(response.getBannerWidth()), Integer.valueOf(response.getBannerHeight()) });
        Log.d("ADSDK", "set image: " + str);
        str = Uri.encode("<style>* { -webkit-tap-highlight-color: rgba(0,0,0,0);} img {width:100%;height:100%}</style>" + str);
        webView.loadData(str, "text/html", "UTF-8");
        notifyLoadAdSucceeded();
      }
      while (animation)
      {
        webView.startAnimation(fadeInAnimation);
        return;
        if (response.getType() == 1)
        {
          str = Uri.encode("<style>* { -webkit-tap-highlight-color: rgba(0,0,0,0);} img {width:100%;height:100%}</style>" + response.getText());
          Log.d("ADSDK", "set text: " + str);
          webView.loadData(str, "text/html", "UTF-8");
          notifyLoadAdSucceeded();
        }
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      Log.e("ADSDK", "Exception in show content", localThrowable);
    }
  }
  
  private void startActivity(Intent paramIntent)
  {
    if (!(getContext() instanceof Activity)) {
      paramIntent.addFlags(268435456);
    }
    getContext().startActivity(paramIntent);
  }
  
  public boolean isInternalBrowser()
  {
    return isInternalBrowser;
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    adListener = paramAdListener;
  }
  
  public void setInternalBrowser(boolean paramBoolean)
  {
    isInternalBrowser = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.BannerAdView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */