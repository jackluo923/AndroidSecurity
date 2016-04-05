package com.inmobi.commons.analytics.db;

import java.util.Vector;
import java.util.concurrent.atomic.AtomicBoolean;

public class AnalyticsEventsQueue
  extends Vector<AnalyticsFunctions>
{
  private static AnalyticsEventsQueue a;
  private static final long serialVersionUID = -1291938489149189478L;
  private AtomicBoolean b = new AtomicBoolean(false);
  
  private void a(AnalyticsFunctions paramAnalyticsFunctions)
  {
    paramAnalyticsFunctions.processFunction();
  }
  
  public static AnalyticsEventsQueue getInstance()
  {
    try
    {
      if (a == null) {
        a = new AnalyticsEventsQueue();
      }
      AnalyticsEventsQueue localAnalyticsEventsQueue = a;
      return localAnalyticsEventsQueue;
    }
    finally {}
  }
  
  public boolean isEmpty()
  {
    try
    {
      boolean bool = super.isEmpty();
      if (bool) {
        b.set(false);
      }
      return bool;
    }
    finally {}
  }
  
  public void processFunctions()
  {
    try
    {
      if (!b.get())
      {
        b.set(true);
        new AnalyticsEventsQueue.a(this).start();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.db.AnalyticsEventsQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */