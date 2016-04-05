package com.appyet.f;

import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class a<Params, Progress, Result>
{
  private static final ThreadFactory a = new b();
  private static final BlockingQueue<Runnable> b = new LinkedBlockingQueue(10);
  private static final g c = new g((byte)0);
  private static volatile Executor d = e;
  public static final Executor e = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, b, a);
  private final i<Params, Result> f = new c(this);
  private final FutureTask<Result> g = new d(this, f);
  private volatile h h = h.a;
  private final AtomicBoolean i = new AtomicBoolean();
  
  private Result b(Result paramResult)
  {
    c.obtainMessage(1, new f(this, new Object[] { paramResult })).sendToTarget();
    return paramResult;
  }
  
  public final a<Params, Progress, Result> a(Params... paramVarArgs)
  {
    Executor localExecutor = d;
    if (h != h.a) {}
    switch (e.a[h.ordinal()])
    {
    default: 
      h = h.b;
      a();
      f.b = paramVarArgs;
      localExecutor.execute(g);
      return this;
    case 1: 
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    }
    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
  }
  
  public void a() {}
  
  public void a(Result paramResult) {}
  
  protected abstract Result b();
  
  protected void c() {}
  
  public final h d()
  {
    return h;
  }
  
  public final boolean e()
  {
    return g.cancel(true);
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */