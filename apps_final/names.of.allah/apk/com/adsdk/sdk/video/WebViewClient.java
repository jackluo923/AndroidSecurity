package com.adsdk.sdk.video;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import com.adsdk.sdk.Log;
import java.lang.reflect.Method;

public class WebViewClient
  extends android.webkit.WebViewClient
{
  private Activity mActivity;
  private boolean mAllowNavigation = false;
  private String mAllowedUrl;
  private long mFinishedLoadingTime;
  private WebViewClient.OnPageLoadedListener mOnPageLoadedListener;
  
  public WebViewClient(Activity paramActivity, boolean paramBoolean)
  {
    mActivity = paramActivity;
    mAllowNavigation = paramBoolean;
    mFinishedLoadingTime = 0L;
  }
  
  public String getAllowedUrl()
  {
    return mAllowedUrl;
  }
  
  public long getFinishedLoadingTime()
  {
    return mFinishedLoadingTime;
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    Log.d("onPageFinished:" + paramString + " mAllowedUrl:" + mAllowedUrl);
    if ((mAllowedUrl == null) || (paramString.equals(mAllowedUrl)))
    {
      if (mFinishedLoadingTime == 0L) {
        mFinishedLoadingTime = System.currentTimeMillis();
      }
      if (mOnPageLoadedListener != null) {
        mOnPageLoadedListener.onPageLoaded();
      }
    }
  }
  
  public void setAllowedUrl(String paramString)
  {
    mFinishedLoadingTime = 0L;
    mAllowedUrl = paramString;
    if (mAllowedUrl != null)
    {
      paramString = Uri.parse(mAllowedUrl).getPath();
      if ((paramString == null) || (paramString.length() == 0)) {
        mAllowedUrl += "/";
      }
    }
  }
  
  public void setOnPageLoadedListener(WebViewClient.OnPageLoadedListener paramOnPageLoadedListener)
  {
    mOnPageLoadedListener = paramOnPageLoadedListener;
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Log.d("Loading url:" + paramString);
    if ((paramString.startsWith("market:")) || (paramString.startsWith("http://market.android.com")) || (paramString.startsWith("sms:")) || (paramString.startsWith("tel:")) || (paramString.startsWith("mailto:")) || (paramString.startsWith("voicemail:")) || (paramString.startsWith("geo:")) || (paramString.startsWith("google.streetview:")))
    {
      paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
      try
      {
        mActivity.startActivity(paramWebView);
        return true;
      }
      catch (ActivityNotFoundException paramWebView)
      {
        Log.w("Could open URL: " + paramString);
        return true;
      }
    }
    if (paramString.startsWith("mfox:external:"))
    {
      paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString.substring(14)));
      mActivity.startActivity(paramWebView);
      return true;
    }
    if (paramString.startsWith("mfox:replayvideo")) {
      try
      {
        mActivity.getClass().getMethod("replayVideo", new Class[0]).invoke(mActivity, new Object[0]);
        return true;
      }
      catch (NoSuchMethodException paramWebView)
      {
        Log.d("Your activity class has no replayVideo method");
        return true;
      }
      catch (Exception paramWebView)
      {
        Log.d("Couldn't run replayVideo method in your Activity");
        return true;
      }
    }
    if (paramString.startsWith("mfox:playvideo")) {
      try
      {
        mActivity.getClass().getMethod("playVideo", new Class[0]).invoke(mActivity, new Object[0]);
        return true;
      }
      catch (NoSuchMethodException paramWebView)
      {
        Log.d("Your activity class has no playVideo method");
        return true;
      }
      catch (Exception paramWebView)
      {
        Log.d("Couldn't run replayVideo method in your Activity");
        return true;
      }
    }
    if (paramString.startsWith("mfox:skip"))
    {
      mActivity.finish();
      return true;
    }
    if ((mAllowNavigation) || (paramString.equals(mAllowedUrl)))
    {
      paramWebView.loadUrl(paramString);
      return true;
    }
    paramWebView = new Intent(mActivity, RichMediaActivity.class);
    paramWebView.setData(Uri.parse(paramString));
    mActivity.startActivity(paramWebView);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.WebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */