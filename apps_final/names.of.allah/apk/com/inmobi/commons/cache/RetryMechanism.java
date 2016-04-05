package com.inmobi.commons.cache;

import java.util.Timer;

public class RetryMechanism
{
  private Timer a;
  private int b = 0;
  private int c = 0;
  private int d = 1000;
  
  public RetryMechanism(int paramInt1, int paramInt2, Timer paramTimer)
  {
    c = paramInt1;
    d = paramInt2;
    a = paramTimer;
  }
  
  private void a(RetryMechanism.RetryRunnable paramRetryRunnable, int paramInt)
  {
    a.schedule(new RetryMechanism.a(this, paramRetryRunnable), paramInt);
  }
  
  public void rescheduleTimer(RetryMechanism.RetryRunnable paramRetryRunnable)
  {
    b = 0;
    a(paramRetryRunnable, 0);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.cache.RetryMechanism
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */