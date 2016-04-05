package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.dynamic.e;

public final class bq
  implements br.a
{
  private final bu kz;
  private final aj lf;
  private final Object lq = new Object();
  private final Context mContext;
  private final String nA;
  private final long nB;
  private final bm nC;
  private final am nD;
  private final ew nE;
  private bv nF;
  private int nG = -2;
  
  public bq(Context paramContext, String paramString, bu parambu, bn parambn, bm parambm, aj paramaj, am paramam, ew paramew)
  {
    mContext = paramContext;
    if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(paramString))
    {
      nA = b(parambm);
      kz = parambu;
      if (nq == -1L) {
        break label108;
      }
    }
    label108:
    for (long l = nq;; l = 10000L)
    {
      nB = l;
      nC = parambm;
      lf = paramaj;
      nD = paramam;
      nE = paramew;
      return;
      nA = paramString;
      break;
    }
  }
  
  private void a(long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    for (;;)
    {
      if (nG != -2) {
        return;
      }
      b(paramLong1, paramLong2, paramLong3, paramLong4);
    }
  }
  
  private void a(bp parambp)
  {
    try
    {
      if (nE.sv < 4100000)
      {
        if (nD.md)
        {
          nF.a(e.h(mContext), lf, nC.no, parambp);
          return;
        }
        nF.a(e.h(mContext), nD, lf, nC.no, parambp);
        return;
      }
    }
    catch (RemoteException parambp)
    {
      ev.c("Could not request ad from mediation adapter.", parambp);
      g(5);
      return;
    }
    if (nD.md)
    {
      nF.a(e.h(mContext), lf, nC.no, nC.ni, parambp);
      return;
    }
    nF.a(e.h(mContext), nD, lf, nC.no, nC.ni, parambp);
  }
  
  private bv aK()
  {
    ev.B("Instantiating mediation adapter: " + nA);
    try
    {
      bv localbv = kz.m(nA);
      return localbv;
    }
    catch (RemoteException localRemoteException)
    {
      ev.a("Could not instantiate mediation adapter: " + nA, localRemoteException);
    }
    return null;
  }
  
  private String b(bm parambm)
  {
    try
    {
      if ((!TextUtils.isEmpty(nm)) && (CustomEvent.class.isAssignableFrom(Class.forName(nm, false, bq.class.getClassLoader())))) {
        return "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter";
      }
    }
    catch (ClassNotFoundException parambm)
    {
      ev.D("Could not create custom event adapter.");
    }
    return "com.google.ads.mediation.customevent.CustomEventAdapter";
  }
  
  private void b(long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    long l = SystemClock.elapsedRealtime();
    paramLong1 = paramLong2 - (l - paramLong1);
    paramLong2 = paramLong4 - (l - paramLong3);
    if ((paramLong1 <= 0L) || (paramLong2 <= 0L))
    {
      ev.B("Timed out waiting for adapter.");
      nG = 3;
      return;
    }
    try
    {
      lq.wait(Math.min(paramLong1, paramLong2));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      nG = -1;
    }
  }
  
  public final br b(long paramLong1, long paramLong2)
  {
    synchronized (lq)
    {
      long l = SystemClock.elapsedRealtime();
      Object localObject2 = new bp();
      eu.ss.post(new bq.1(this, (bp)localObject2));
      a(l, nB, paramLong1, paramLong2);
      localObject2 = new br(nC, nF, nA, (bp)localObject2, nG);
      return (br)localObject2;
    }
  }
  
  public final void cancel()
  {
    synchronized (lq)
    {
      try
      {
        if (nF != null) {
          nF.destroy();
        }
        nG = -1;
        lq.notify();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          ev.c("Could not destroy mediation adapter.", localRemoteException);
        }
      }
    }
  }
  
  public final void g(int paramInt)
  {
    synchronized (lq)
    {
      nG = paramInt;
      lq.notify();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */