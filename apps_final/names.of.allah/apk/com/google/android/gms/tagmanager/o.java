package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.internal.c.f;
import com.google.android.gms.internal.c.j;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.im;
import com.google.android.gms.internal.lf.a;

class o
  extends a.a<ContainerHolder>
{
  private final Looper DC;
  private final TagManager aeC;
  private final o.d aeF;
  private final cf aeG;
  private final int aeH;
  private o.f aeI;
  private volatile n aeJ;
  private volatile boolean aeK;
  private c.j aeL;
  private String aeM;
  private o.e aeN;
  private o.a aeO;
  private final ik aec;
  private final String aeq;
  private long aev;
  private final Context mContext;
  
  o(Context paramContext, TagManager paramTagManager, Looper paramLooper, String paramString, int paramInt, o.f paramf, o.e parame, ik paramik, cf paramcf) {}
  
  public o(Context paramContext, TagManager paramTagManager, Looper paramLooper, String paramString, int paramInt, r paramr)
  {
    this(paramContext, paramTagManager, paramLooper, paramString, paramInt, new cp(paramContext, paramString), new co(paramContext, paramString, paramr), im.fW(), new bf(30, 900000L, 5000L, "refreshing", im.fW()));
  }
  
  private void H(boolean paramBoolean)
  {
    aeI.a(new o.b(this, null));
    aeN.a(new o.c(this, null));
    cq.c localc = aeI.dn(aeH);
    if (localc != null) {
      aeJ = new n(aeC, DC, new Container(mContext, aeC.getDataLayer(), aeq, 0L, localc), aeF);
    }
    aeO = new o.2(this, paramBoolean);
    if (lp())
    {
      aeN.e(0L, "");
      return;
    }
    aeI.lr();
  }
  
  private void a(c.j paramj)
  {
    try
    {
      if (aeI != null)
      {
        lf.a locala = new lf.a();
        aiD = aev;
        fK = new c.f();
        aiE = paramj;
        aeI.b(locala);
      }
      return;
    }
    finally
    {
      paramj = finally;
      throw paramj;
    }
  }
  
  private void a(c.j paramj, long paramLong, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        paramBoolean = aeK;
        if (paramBoolean) {
          return;
        }
        if (isReady()) {
          n localn = aeJ;
        }
        aeL = paramj;
        aev = paramLong;
        w(Math.max(0L, Math.min(43200000L, aev + 43200000L - aec.currentTimeMillis())));
        paramj = new Container(mContext, aeC.getDataLayer(), aeq, paramLong, paramj);
        if (aeJ == null)
        {
          aeJ = new n(aeC, DC, paramj, aeF);
          if ((!isReady()) && (aeO.b(paramj))) {
            b(aeJ);
          }
        }
        else
        {
          aeJ.a(paramj);
        }
      }
      finally {}
    }
  }
  
  private boolean lp()
  {
    cd localcd = cd.lY();
    return ((localcd.lZ() == cd.a.agz) || (localcd.lZ() == cd.a.agA)) && (aeq.equals(localcd.getContainerId()));
  }
  
  /* Error */
  private void w(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 61	com/google/android/gms/tagmanager/o:aeN	Lcom/google/android/gms/tagmanager/o$e;
    //   6: ifnonnull +12 -> 18
    //   9: ldc_w 288
    //   12: invokestatic 293	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: aload_0
    //   19: getfield 61	com/google/android/gms/tagmanager/o:aeN	Lcom/google/android/gms/tagmanager/o$e;
    //   22: lload_1
    //   23: aload_0
    //   24: getfield 75	com/google/android/gms/tagmanager/o:aeL	Lcom/google/android/gms/internal/c$j;
    //   27: getfield 296	com/google/android/gms/internal/c$j:fL	Ljava/lang/String;
    //   30: invokeinterface 180 4 0
    //   35: goto -20 -> 15
    //   38: astore_3
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_3
    //   42: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	43	0	this	o
    //   0	43	1	paramLong	long
    //   38	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	15	38	finally
    //   18	35	38	finally
  }
  
  protected ContainerHolder ap(Status paramStatus)
  {
    if (aeJ != null) {
      return aeJ;
    }
    if (paramStatus == Status.En) {
      bh.A("timer expired: setting result to failure");
    }
    return new n(paramStatus);
  }
  
  void bJ(String paramString)
  {
    try
    {
      aeM = paramString;
      if (aeN != null) {
        aeN.bM(paramString);
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  String lj()
  {
    try
    {
      String str = aeM;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void lm()
  {
    Object localObject = aeI.dn(aeH);
    if (localObject != null)
    {
      localObject = new Container(mContext, aeC.getDataLayer(), aeq, 0L, (cq.c)localObject);
      b(new n(aeC, DC, (Container)localObject, new o.1(this)));
    }
    for (;;)
    {
      aeN = null;
      aeI = null;
      return;
      bh.A("Default was requested, but no default container was found");
      b(ap(new Status(10, "Default was requested, but no default container was found", null)));
    }
  }
  
  public void ln()
  {
    H(false);
  }
  
  public void lo()
  {
    H(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */