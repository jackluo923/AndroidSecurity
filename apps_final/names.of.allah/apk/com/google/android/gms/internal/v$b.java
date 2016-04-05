package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

final class v$b
  implements h, Runnable
{
  private v.c kA;
  private final List<Object[]> kH = new Vector();
  private final CountDownLatch kI = new CountDownLatch(1);
  private final AtomicReference<h> kJ = new AtomicReference();
  
  public v$b(v.c paramc)
  {
    kA = paramc;
    if (eu.bR())
    {
      eo.execute(this);
      return;
    }
    run();
  }
  
  private void aj()
  {
    try
    {
      kI.await();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      ev.c("Interrupted during GADSignals creation.", localInterruptedException);
    }
  }
  
  private void ak()
  {
    if (kH.isEmpty()) {}
    for (;;)
    {
      return;
      Iterator localIterator = kH.iterator();
      while (localIterator.hasNext())
      {
        Object[] arrayOfObject = (Object[])localIterator.next();
        if (arrayOfObject.length == 1) {
          ((h)kJ.get()).a((MotionEvent)arrayOfObject[0]);
        } else if (arrayOfObject.length == 3) {
          ((h)kJ.get()).a(((Integer)arrayOfObject[0]).intValue(), ((Integer)arrayOfObject[1]).intValue(), ((Integer)arrayOfObject[2]).intValue());
        }
      }
    }
  }
  
  public final String a(Context paramContext)
  {
    aj();
    ak();
    return ((h)kJ.get()).a(paramContext);
  }
  
  public final String a(Context paramContext, String paramString)
  {
    aj();
    ak();
    return ((h)kJ.get()).a(paramContext, paramString);
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    h localh = (h)kJ.get();
    if (localh != null)
    {
      ak();
      localh.a(paramInt1, paramInt2, paramInt3);
      return;
    }
    kH.add(new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) });
  }
  
  public final void a(MotionEvent paramMotionEvent)
  {
    h localh = (h)kJ.get();
    if (localh != null)
    {
      ak();
      localh.a(paramMotionEvent);
      return;
    }
    kH.add(new Object[] { paramMotionEvent });
  }
  
  public final void run()
  {
    try
    {
      kJ.set(k.a(kA.kO.st, kA.kM));
      return;
    }
    finally
    {
      kI.countDown();
      kA = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.v.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */