package com.inmobi.commons.metric;

import com.inmobi.commons.internal.Log;

public class Queuer
{
  private StringBuffer a = new StringBuffer();
  private long b = 0L;
  
  long a()
  {
    return b;
  }
  
  public String get()
  {
    Log.internal("[InMobi]-4.4.1", "Reading from queue");
    synchronized (a)
    {
      String str = a.toString();
      return str;
    }
  }
  
  public void log(EventLog paramEventLog)
  {
    synchronized (a)
    {
      a.append(paramEventLog.toString()).append(',');
      b += 1L;
      return;
    }
  }
  
  public void reset()
  {
    Log.internal("[InMobi]-4.4.1", "Resetting queue");
    synchronized (a)
    {
      a = new StringBuffer();
      b = 0L;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.metric.Queuer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */