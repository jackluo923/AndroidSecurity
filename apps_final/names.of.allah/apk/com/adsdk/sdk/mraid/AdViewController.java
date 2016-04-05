package com.adsdk.sdk.mraid;

import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

public class AdViewController
{
  static final int DEFAULT_REFRESH_TIME_MILLISECONDS = 60000;
  static final int MINIMUM_REFRESH_TIME_MILLISECONDS = 10000;
  private static WeakHashMap<View, Boolean> sViewShouldHonorServerDimensions = new WeakHashMap();
  private boolean mAutoRefreshEnabled = true;
  private Context mContext;
  private Handler mHandler;
  private boolean mIsDestroyed;
  private boolean mIsFacebookSupported = true;
  private boolean mIsLoading;
  private boolean mIsTesting;
  private String mKeywords;
  private Map<String, Object> mLocalExtras = new HashMap();
  private Location mLocation;
  private Runnable mRefreshRunnable;
  private String mUrl;
  
  private void cancelRefreshTimer()
  {
    mHandler.removeCallbacks(mRefreshRunnable);
  }
  
  private boolean isNetworkAvailable()
  {
    if (mContext.checkCallingPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
      return true;
    }
    NetworkInfo localNetworkInfo = ((ConnectivityManager)mContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnected());
  }
  
  protected static void setShouldHonorServerDimensions(View paramView)
  {
    sViewShouldHonorServerDimensions.put(paramView, Boolean.valueOf(true));
  }
  
  void cleanup()
  {
    if (mIsDestroyed) {
      return;
    }
    setAutorefreshEnabled(false);
    cancelRefreshTimer();
    mIsDestroyed = true;
  }
  
  @Deprecated
  public void customEventActionWillBegin()
  {
    registerClick();
  }
  
  @Deprecated
  public void customEventDidLoadAd()
  {
    setNotLoading();
    trackImpression();
    scheduleRefreshTimerIfEnabled();
  }
  
  void fetchAd(String paramString) {}
  
  void forceRefresh()
  {
    setNotLoading();
    loadAd();
  }
  
  public boolean getAutorefreshEnabled()
  {
    return mAutoRefreshEnabled;
  }
  
  public String getKeywords()
  {
    return mKeywords;
  }
  
  Map<String, Object> getLocalExtras()
  {
    if (mLocalExtras != null) {
      return new HashMap(mLocalExtras);
    }
    return new HashMap();
  }
  
  public Location getLocation()
  {
    return mLocation;
  }
  
  public boolean getTesting()
  {
    return mIsTesting;
  }
  
  boolean isDestroyed()
  {
    return mIsDestroyed;
  }
  
  public boolean isFacebookSupported()
  {
    return mIsFacebookSupported;
  }
  
  public void loadAd()
  {
    if (!isNetworkAvailable())
    {
      Log.d("MoPub", "Can't load an ad because there is no network connectivity.");
      scheduleRefreshTimerIfEnabled();
    }
  }
  
  void loadNonJavascript(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return;
      Log.d("MoPub", "Loading url: " + paramString);
    } while (mIsLoading);
    mUrl = paramString;
    mIsLoading = true;
    fetchAd(mUrl);
  }
  
  void registerClick() {}
  
  public void reload()
  {
    Log.d("MoPub", "Reload ad: " + mUrl);
    loadNonJavascript(mUrl);
  }
  
  void scheduleRefreshTimerIfEnabled() {}
  
  public void setAutorefreshEnabled(boolean paramBoolean)
  {
    mAutoRefreshEnabled = paramBoolean;
    if (mAutoRefreshEnabled)
    {
      scheduleRefreshTimerIfEnabled();
      return;
    }
    cancelRefreshTimer();
  }
  
  public void setFacebookSupported(boolean paramBoolean)
  {
    mIsFacebookSupported = paramBoolean;
  }
  
  void setFailUrl(String paramString) {}
  
  public void setKeywords(String paramString)
  {
    mKeywords = paramString;
  }
  
  void setLocalExtras(Map<String, Object> paramMap)
  {
    if (paramMap != null) {}
    for (paramMap = new HashMap(paramMap);; paramMap = new HashMap())
    {
      mLocalExtras = paramMap;
      return;
    }
  }
  
  public void setLocation(Location paramLocation)
  {
    mLocation = paramLocation;
  }
  
  void setNotLoading()
  {
    mIsLoading = false;
  }
  
  public void setTesting(boolean paramBoolean)
  {
    mIsTesting = paramBoolean;
  }
  
  public void setTimeout(int paramInt) {}
  
  void trackImpression() {}
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.AdViewController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */