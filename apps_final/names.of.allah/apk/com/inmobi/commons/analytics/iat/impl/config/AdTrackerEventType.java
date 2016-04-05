package com.inmobi.commons.analytics.iat.impl.config;

import com.inmobi.commons.metric.EventType;

public enum AdTrackerEventType
  implements EventType
{
  private int a;
  
  static
  {
    GOAL_FAILURE = new AdTrackerEventType("GOAL_FAILURE", 1, 1);
  }
  
  private AdTrackerEventType(int paramInt)
  {
    a = paramInt;
  }
  
  public final int getValue()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */