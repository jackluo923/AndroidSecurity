package com.inmobi.commons.metric;

public abstract interface Logger$MetricsCallback
{
  public abstract void dataCollected(EventLog paramEventLog);
  
  public abstract void movedMetricDataToFileMemory(String paramString);
  
  public abstract void reportingFailure();
  
  public abstract void reportingStartedWithRequest(String paramString);
  
  public abstract void reportingSuccess();
}

/* Location:
 * Qualified Name:     com.inmobi.commons.metric.Logger.MetricsCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */