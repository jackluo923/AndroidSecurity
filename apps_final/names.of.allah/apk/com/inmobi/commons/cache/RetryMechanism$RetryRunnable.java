package com.inmobi.commons.cache;

public abstract interface RetryMechanism$RetryRunnable
{
  public abstract void completed();
  
  public abstract void run();
}

/* Location:
 * Qualified Name:     com.inmobi.commons.cache.RetryMechanism.RetryRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */