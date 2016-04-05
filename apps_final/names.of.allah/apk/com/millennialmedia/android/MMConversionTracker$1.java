package com.millennialmedia.android;

import java.util.TreeMap;

final class MMConversionTracker$1
  implements Runnable
{
  MMConversionTracker$1(String paramString, boolean paramBoolean, long paramLong, TreeMap paramTreeMap) {}
  
  public final void run()
  {
    HttpGetRequest localHttpGetRequest = new HttpGetRequest();
    try
    {
      localHttpGetRequest.trackConversion(val$goalId, val$isFirstLaunch, val$installTimeUTC, val$extraParams);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMConversionTracker.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */