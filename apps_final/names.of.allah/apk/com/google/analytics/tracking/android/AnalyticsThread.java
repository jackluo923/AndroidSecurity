package com.google.analytics.tracking.android;

import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

abstract interface AnalyticsThread
{
  public abstract void clearHits();
  
  public abstract void dispatch();
  
  public abstract LinkedBlockingQueue<Runnable> getQueue();
  
  public abstract Thread getThread();
  
  public abstract void sendHit(Map<String, String> paramMap);
  
  public abstract void setForceLocalDispatch();
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.AnalyticsThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */