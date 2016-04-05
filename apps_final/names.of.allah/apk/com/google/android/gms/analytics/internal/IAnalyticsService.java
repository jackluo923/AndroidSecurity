package com.google.android.gms.analytics.internal;

import android.os.IInterface;
import java.util.List;
import java.util.Map;

public abstract interface IAnalyticsService
  extends IInterface
{
  public abstract void clearHits();
  
  public abstract void sendHit(Map paramMap, long paramLong, String paramString, List<Command> paramList);
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.IAnalyticsService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */