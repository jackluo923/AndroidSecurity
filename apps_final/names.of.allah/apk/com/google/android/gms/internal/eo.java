package com.google.android.gms.internal;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class eo
{
  private static final ThreadFactory se = new eo.2();
  private static final ThreadPoolExecutor sf = new ThreadPoolExecutor(0, 10, 65L, TimeUnit.SECONDS, new SynchronousQueue(true), se);
  
  public static void execute(Runnable paramRunnable)
  {
    try
    {
      sf.execute(new eo.1(paramRunnable));
      return;
    }
    catch (RejectedExecutionException paramRunnable)
    {
      ev.c("Too many background threads already running. Aborting task.  Current pool size: " + getPoolSize(), paramRunnable);
    }
  }
  
  public static int getPoolSize()
  {
    return sf.getPoolSize();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */