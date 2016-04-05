package com.google.android.gms.common.api;

import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.internal.hh;
import com.google.android.gms.internal.hn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public abstract class a$a<R extends Result>
  implements PendingResult<R>, a.d<R>
{
  private final Object Dm = new Object();
  private a.c<R> Dn;
  private final ArrayList<PendingResult.a> Do = new ArrayList();
  private ResultCallback<R> Dp;
  private volatile R Dq;
  private volatile boolean Dr;
  private boolean Ds;
  private boolean Dt;
  private hh Du;
  private final CountDownLatch kI = new CountDownLatch(1);
  
  a$a() {}
  
  public a$a(Looper paramLooper)
  {
    Dn = new a.c(paramLooper);
  }
  
  public a$a(a.c<R> paramc)
  {
    Dn = paramc;
  }
  
  private void c(R paramR)
  {
    Dq = paramR;
    Du = null;
    kI.countDown();
    paramR = Dq.getStatus();
    if (Dp != null)
    {
      Dn.eC();
      if (!Ds) {
        Dn.a(Dp, ex());
      }
    }
    Iterator localIterator = Do.iterator();
    while (localIterator.hasNext()) {
      ((PendingResult.a)localIterator.next()).n(paramR);
    }
    Do.clear();
  }
  
  private void eA()
  {
    synchronized (Dm)
    {
      if (!isReady())
      {
        b(c(Status.En));
        Dt = true;
      }
      return;
    }
  }
  
  private R ex()
  {
    synchronized (Dm)
    {
      if (!Dr)
      {
        bool = true;
        hn.a(bool, "Result has already been consumed.");
        hn.a(isReady(), "Result is not ready.");
        Result localResult = Dq;
        ey();
        return localResult;
      }
      boolean bool = false;
    }
  }
  
  private void ez()
  {
    synchronized (Dm)
    {
      if (!isReady())
      {
        b(c(Status.El));
        Dt = true;
      }
      return;
    }
  }
  
  public final void a(PendingResult.a parama)
  {
    if (!Dr) {}
    for (boolean bool = true;; bool = false)
    {
      hn.a(bool, "Result has already been consumed.");
      synchronized (Dm)
      {
        if (isReady())
        {
          parama.n(Dq.getStatus());
          return;
        }
        Do.add(parama);
      }
    }
  }
  
  protected void a(a.c<R> paramc)
  {
    Dn = paramc;
  }
  
  protected final void a(hh paramhh)
  {
    synchronized (Dm)
    {
      Du = paramhh;
      return;
    }
  }
  
  public final R await()
  {
    boolean bool2 = true;
    boolean bool1;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool1 = true;
    }
    for (;;)
    {
      hn.a(bool1, "await must not be called on the UI thread");
      if (!Dr)
      {
        bool1 = bool2;
        hn.a(bool1, "Result has already been consumed");
      }
      try
      {
        kI.await();
        hn.a(isReady(), "Result is not ready.");
        return ex();
        bool1 = false;
        continue;
        bool1 = false;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          ez();
        }
      }
    }
  }
  
  public final R await(long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramLong <= 0L) || (Looper.myLooper() != Looper.getMainLooper())) {
      bool1 = true;
    }
    for (;;)
    {
      hn.a(bool1, "await must not be called on the UI thread when time is greater than zero.");
      if (!Dr)
      {
        bool1 = bool2;
        hn.a(bool1, "Result has already been consumed.");
      }
      try
      {
        if (!kI.await(paramLong, paramTimeUnit)) {
          eA();
        }
        hn.a(isReady(), "Result is not ready.");
        return ex();
        bool1 = false;
        continue;
        bool1 = false;
      }
      catch (InterruptedException paramTimeUnit)
      {
        for (;;)
        {
          ez();
        }
      }
    }
  }
  
  public final void b(R paramR)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (Dm)
      {
        if ((Dt) || (Ds))
        {
          a.a(paramR);
          return;
        }
        if (!isReady())
        {
          bool1 = true;
          hn.a(bool1, "Results have already been set");
          if (Dr) {
            break label80;
          }
          bool1 = bool2;
          hn.a(bool1, "Result has already been consumed");
          c(paramR);
          return;
        }
      }
      boolean bool1 = false;
      continue;
      label80:
      bool1 = false;
    }
  }
  
  protected abstract R c(Status paramStatus);
  
  public void cancel()
  {
    synchronized (Dm)
    {
      if ((Ds) || (Dr)) {
        return;
      }
      hh localhh = Du;
      if (localhh == null) {}
    }
    try
    {
      Du.cancel();
      a.a(Dq);
      Dp = null;
      Ds = true;
      c(c(Status.Eo));
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (RemoteException localRemoteException)
    {
      for (;;) {}
    }
  }
  
  protected void ey()
  {
    Dr = true;
    Dq = null;
    Dp = null;
  }
  
  public boolean isCanceled()
  {
    synchronized (Dm)
    {
      boolean bool = Ds;
      return bool;
    }
  }
  
  public final boolean isReady()
  {
    return kI.getCount() == 0L;
  }
  
  public final void setResultCallback(ResultCallback<R> paramResultCallback)
  {
    if (!Dr) {}
    for (boolean bool = true;; bool = false)
    {
      hn.a(bool, "Result has already been consumed.");
      for (;;)
      {
        synchronized (Dm)
        {
          if (isCanceled()) {
            return;
          }
          if (isReady())
          {
            Dn.a(paramResultCallback, ex());
            return;
          }
        }
        Dp = paramResultCallback;
      }
    }
  }
  
  public final void setResultCallback(ResultCallback<R> paramResultCallback, long paramLong, TimeUnit paramTimeUnit)
  {
    if (!Dr) {}
    for (boolean bool = true;; bool = false)
    {
      hn.a(bool, "Result has already been consumed.");
      for (;;)
      {
        synchronized (Dm)
        {
          if (isCanceled()) {
            return;
          }
          if (isReady())
          {
            Dn.a(paramResultCallback, ex());
            return;
          }
        }
        Dp = paramResultCallback;
        Dn.a(this, paramTimeUnit.toMillis(paramLong));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */