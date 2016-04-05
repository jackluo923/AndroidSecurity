package com.appyet.f;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class b
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);
  
  public final Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "AsyncTask #" + a.getAndIncrement());
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */