package com.google.android.gms.internal;

import android.os.RemoteException;

public abstract class dr
  extends en
{
  private final dt nc;
  private final dq.a pR;
  
  public dr(dt paramdt, dq.a parama)
  {
    nc = paramdt;
    pR = parama;
  }
  
  private static dv a(dx paramdx, dt paramdt)
  {
    try
    {
      paramdx = paramdx.b(paramdt);
      return paramdx;
    }
    catch (RemoteException paramdx)
    {
      ev.c("Could not fetch ad response from ad request service.", paramdx);
      return null;
    }
    catch (NullPointerException paramdx)
    {
      ev.c("Could not fetch ad response from ad request service due to an Exception.", paramdx);
      return null;
    }
    catch (SecurityException paramdx)
    {
      ev.c("Could not fetch ad response from ad request service due to an Exception.", paramdx);
    }
    return null;
  }
  
  /* Error */
  public final void bc()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 47	com/google/android/gms/internal/dr:bo	()Lcom/google/android/gms/internal/dx;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnonnull +27 -> 33
    //   9: new 49	com/google/android/gms/internal/dv
    //   12: dup
    //   13: iconst_0
    //   14: invokespecial 52	com/google/android/gms/internal/dv:<init>	(I)V
    //   17: astore_1
    //   18: aload_0
    //   19: invokevirtual 55	com/google/android/gms/internal/dr:bn	()V
    //   22: aload_0
    //   23: getfield 17	com/google/android/gms/internal/dr:pR	Lcom/google/android/gms/internal/dq$a;
    //   26: aload_1
    //   27: invokeinterface 60 2 0
    //   32: return
    //   33: aload_1
    //   34: aload_0
    //   35: getfield 15	com/google/android/gms/internal/dr:nc	Lcom/google/android/gms/internal/dt;
    //   38: invokestatic 62	com/google/android/gms/internal/dr:a	(Lcom/google/android/gms/internal/dx;Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/dv;
    //   41: astore_2
    //   42: aload_2
    //   43: astore_1
    //   44: aload_2
    //   45: ifnonnull -27 -> 18
    //   48: new 49	com/google/android/gms/internal/dv
    //   51: dup
    //   52: iconst_0
    //   53: invokespecial 52	com/google/android/gms/internal/dv:<init>	(I)V
    //   56: astore_1
    //   57: goto -39 -> 18
    //   60: astore_1
    //   61: aload_0
    //   62: invokevirtual 55	com/google/android/gms/internal/dr:bn	()V
    //   65: aload_1
    //   66: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	67	0	this	dr
    //   4	53	1	localObject1	Object
    //   60	6	1	localObject2	Object
    //   41	4	2	localdv	dv
    // Exception table:
    //   from	to	target	type
    //   0	5	60	finally
    //   9	18	60	finally
    //   33	42	60	finally
    //   48	57	60	finally
  }
  
  public abstract void bn();
  
  public abstract dx bo();
  
  public final void onStop()
  {
    bn();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */