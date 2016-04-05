package com.inmobi.commons.analytics.db;

import android.util.Log;

public abstract class AnalyticsFunctions
{
  private AnalyticsFunctions.FunctionName a = null;
  
  public AnalyticsFunctions.FunctionName getFunctionName()
  {
    return a;
  }
  
  protected void insertInDatabase(AnalyticsEvent paramAnalyticsEvent)
  {
    try
    {
      AnalyticsDatabaseManager.getInstance().insertEvents(paramAnalyticsEvent);
      return;
    }
    catch (Exception paramAnalyticsEvent)
    {
      Log.w("[InMobi]-[Analytics]-4.4.1", paramAnalyticsEvent);
    }
  }
  
  protected void printWarning(String paramString)
  {
    Log.d("[InMobi]-[Analytics]-4.4.1", "IllegalStateException", new IllegalStateException(paramString));
  }
  
  public abstract AnalyticsEvent processFunction();
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.db.AnalyticsFunctions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */