package com.google.analytics.tracking.android;

import com.google.android.gms.analytics.internal.Command;
import java.util.List;
import java.util.Map;

abstract interface AnalyticsClient
{
  public abstract void clearHits();
  
  public abstract void connect();
  
  public abstract void disconnect();
  
  public abstract void sendHit(Map<String, String> paramMap, long paramLong, String paramString, List<Command> paramList);
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.AnalyticsClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */