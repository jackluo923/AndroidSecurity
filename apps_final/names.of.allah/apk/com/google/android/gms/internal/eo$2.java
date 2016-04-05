package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class eo$2
  implements ThreadFactory
{
  private final AtomicInteger sh = new AtomicInteger(1);
  
  public final Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "AdWorker #" + sh.getAndIncrement());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eo.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */