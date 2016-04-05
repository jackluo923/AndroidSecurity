package com.inmobi.commons.analytics.db;

import com.inmobi.commons.internal.Log;

class AnalyticsEventsQueue$a
  extends Thread
{
  AnalyticsEventsQueue$a(AnalyticsEventsQueue paramAnalyticsEventsQueue) {}
  
  public void run()
  {
    try
    {
      while (!a.isEmpty()) {
        AnalyticsEventsQueue.a(a, (AnalyticsFunctions)a.remove(0));
      }
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Analytics]-4.4.1", "Exception processing function", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.db.AnalyticsEventsQueue.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */