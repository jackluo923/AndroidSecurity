package com.appyet.manager;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class br
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);
  
  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable, "SyncThread #" + a.getAndIncrement());
    paramRunnable.setPriority(4);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */