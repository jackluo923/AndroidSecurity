package com.a.a.b;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class b
  implements ThreadFactory
{
  private static final AtomicInteger a = new AtomicInteger(1);
  private final ThreadGroup b;
  private final AtomicInteger c = new AtomicInteger(1);
  private final String d;
  private final int e;
  
  b(int paramInt)
  {
    e = paramInt;
    Object localObject = System.getSecurityManager();
    if (localObject != null) {}
    for (localObject = ((SecurityManager)localObject).getThreadGroup();; localObject = Thread.currentThread().getThreadGroup())
    {
      b = ((ThreadGroup)localObject);
      d = ("pool-" + a.getAndIncrement() + "-thread-");
      return;
    }
  }
  
  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(b, paramRunnable, d + c.getAndIncrement(), 0L);
    if (paramRunnable.isDaemon()) {
      paramRunnable.setDaemon(false);
    }
    paramRunnable.setPriority(e);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */