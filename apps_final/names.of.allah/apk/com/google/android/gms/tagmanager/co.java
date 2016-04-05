package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.c.j;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

class co
  implements o.e
{
  private String aeM;
  private final String aeq;
  private bg<c.j> agK;
  private r agL;
  private final ScheduledExecutorService agN;
  private final co.a agO;
  private ScheduledFuture<?> agP;
  private boolean mClosed;
  private final Context mContext;
  
  public co(Context paramContext, String paramString, r paramr)
  {
    this(paramContext, paramString, paramr, null, null);
  }
  
  co(Context paramContext, String paramString, r paramr, co.b paramb, co.a parama)
  {
    agL = paramr;
    mContext = paramContext;
    aeq = paramString;
    paramContext = paramb;
    if (paramb == null) {
      paramContext = new co.1(this);
    }
    agN = paramContext.mf();
    if (parama == null)
    {
      agO = new co.2(this);
      return;
    }
    agO = parama;
  }
  
  private cn cc(String paramString)
  {
    cn localcn = agO.a(agL);
    localcn.a(agK);
    localcn.bM(aeM);
    localcn.cb(paramString);
    return localcn;
  }
  
  private void me()
  {
    try
    {
      if (mClosed) {
        throw new IllegalStateException("called method after closed");
      }
    }
    finally {}
  }
  
  public void a(bg<c.j> parambg)
  {
    try
    {
      me();
      agK = parambg;
      return;
    }
    finally
    {
      parambg = finally;
      throw parambg;
    }
  }
  
  public void bM(String paramString)
  {
    try
    {
      me();
      aeM = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void e(long paramLong, String paramString)
  {
    try
    {
      bh.C("loadAfterDelay: containerId=" + aeq + " delay=" + paramLong);
      me();
      if (agK == null) {
        throw new IllegalStateException("callback must be set before loadAfterDelay() is called.");
      }
    }
    finally {}
    if (agP != null) {
      agP.cancel(false);
    }
    agP = agN.schedule(cc(paramString), paramLong, TimeUnit.MILLISECONDS);
  }
  
  public void release()
  {
    try
    {
      me();
      if (agP != null) {
        agP.cancel(false);
      }
      agN.shutdown();
      mClosed = true;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */