package com.inmobi.commons.metric;

public class Logger
{
  private MetricConfigParams a = new MetricConfigParams();
  private Integer b = Integer.valueOf(2147483646);
  private Storage c = null;
  private Queuer d = new Queuer();
  private Logger.MetricsCallback e = null;
  
  public Logger(int paramInt, String paramString)
  {
    c = new Storage(paramInt, paramString, d, a);
  }
  
  public Logger(int paramInt, String paramString, Storage.PreProcessor paramPreProcessor)
  {
    c = new Storage(paramInt, paramString, d, a, paramPreProcessor);
  }
  
  protected void finalize()
  {
    c.saveToLatest();
    super.finalize();
  }
  
  public void logEvent(EventLog paramEventLog)
  {
    c.readNumberOfEventsAndTimeStampFromPersistent();
    if (e != null) {
      e.dataCollected(paramEventLog);
    }
    d.log(paramEventLog);
    if (d.a() >= a.getDumpThreshhold()) {
      c.saveLocalCache();
    }
    if ((c.getEvents() >= a.getMaxInQueue()) || (c.getTimestamp() + a.getNextRetryInterval() <= System.currentTimeMillis() / 1000L)) {
      new Thread(new Logger.a(this)).start();
    }
  }
  
  public void setCallback(Logger.MetricsCallback paramMetricsCallback)
  {
    e = paramMetricsCallback;
    c.setCallback(paramMetricsCallback);
  }
  
  public void setMetricConfigParams(MetricConfigParams paramMetricConfigParams)
  {
    if (paramMetricConfigParams != null)
    {
      a = paramMetricConfigParams;
      c.a = paramMetricConfigParams;
    }
  }
  
  public boolean startNewSample()
  {
    synchronized (b)
    {
      Integer localInteger2 = b;
      b = Integer.valueOf(b.intValue() + 1);
      if (b.intValue() >= a.getSamplingFactor())
      {
        b = Integer.valueOf(0);
        return true;
      }
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.metric.Logger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */