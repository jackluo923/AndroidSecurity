package com.google.analytics.tracking.android;

import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class Tracker
{
  private final AppFieldsDefaultProvider mAppFieldsDefaultProvider;
  private final ClientIdDefaultProvider mClientIdDefaultProvider;
  private final TrackerHandler mHandler;
  private final String mName;
  private final Map<String, String> mParams = new HashMap();
  private RateLimiter mRateLimiter;
  private final ScreenResolutionDefaultProvider mScreenResolutionDefaultProvider;
  
  Tracker(String paramString1, String paramString2, TrackerHandler paramTrackerHandler)
  {
    this(paramString1, paramString2, paramTrackerHandler, ClientIdDefaultProvider.getProvider(), ScreenResolutionDefaultProvider.getProvider(), AppFieldsDefaultProvider.getProvider(), new SendHitRateLimiter());
  }
  
  @VisibleForTesting
  Tracker(String paramString1, String paramString2, TrackerHandler paramTrackerHandler, ClientIdDefaultProvider paramClientIdDefaultProvider, ScreenResolutionDefaultProvider paramScreenResolutionDefaultProvider, AppFieldsDefaultProvider paramAppFieldsDefaultProvider, RateLimiter paramRateLimiter)
  {
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("Tracker name cannot be empty.");
    }
    mName = paramString1;
    mHandler = paramTrackerHandler;
    mParams.put("&tid", paramString2);
    mParams.put("useSecure", "1");
    mClientIdDefaultProvider = paramClientIdDefaultProvider;
    mScreenResolutionDefaultProvider = paramScreenResolutionDefaultProvider;
    mAppFieldsDefaultProvider = paramAppFieldsDefaultProvider;
    mRateLimiter = paramRateLimiter;
  }
  
  public String get(String paramString)
  {
    GAUsage.getInstance().setUsage(GAUsage.Field.GET);
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return null;
      if (mParams.containsKey(paramString)) {
        return (String)mParams.get(paramString);
      }
      if (paramString.equals("&ul")) {
        return Utils.getLanguage(Locale.getDefault());
      }
      if ((mClientIdDefaultProvider != null) && (mClientIdDefaultProvider.providesField(paramString))) {
        return mClientIdDefaultProvider.getValue(paramString);
      }
      if ((mScreenResolutionDefaultProvider != null) && (mScreenResolutionDefaultProvider.providesField(paramString))) {
        return mScreenResolutionDefaultProvider.getValue(paramString);
      }
    } while ((mAppFieldsDefaultProvider == null) || (!mAppFieldsDefaultProvider.providesField(paramString)));
    return mAppFieldsDefaultProvider.getValue(paramString);
  }
  
  public String getName()
  {
    GAUsage.getInstance().setUsage(GAUsage.Field.GET_TRACKER_NAME);
    return mName;
  }
  
  @VisibleForTesting
  RateLimiter getRateLimiter()
  {
    return mRateLimiter;
  }
  
  public void send(Map<String, String> paramMap)
  {
    GAUsage.getInstance().setUsage(GAUsage.Field.SEND);
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(mParams);
    if (paramMap != null) {
      localHashMap.putAll(paramMap);
    }
    if (TextUtils.isEmpty((CharSequence)localHashMap.get("&tid"))) {
      Log.w(String.format("Missing tracking id (%s) parameter.", new Object[] { "&tid" }));
    }
    String str = (String)localHashMap.get("&t");
    paramMap = str;
    if (TextUtils.isEmpty(str))
    {
      Log.w(String.format("Missing hit type (%s) parameter.", new Object[] { "&t" }));
      paramMap = "";
    }
    if ((!paramMap.equals("transaction")) && (!paramMap.equals("item")) && (!mRateLimiter.tokenAvailable()))
    {
      Log.w("Too many hits sent too quickly, rate limiting invoked.");
      return;
    }
    mHandler.sendHit(localHashMap);
  }
  
  public void set(String paramString1, String paramString2)
  {
    GAUsage.getInstance().setUsage(GAUsage.Field.SET);
    if (paramString2 == null)
    {
      mParams.remove(paramString1);
      return;
    }
    mParams.put(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.Tracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */