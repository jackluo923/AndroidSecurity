package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Handler;

class cx
  extends cw
{
  private static cx ahR;
  private static final Object tQ = new Object();
  private Context ahH;
  private at ahI;
  private volatile ar ahJ;
  private int ahK = 1800000;
  private boolean ahL = true;
  private boolean ahM = false;
  private boolean ahN = true;
  private au ahO = new cx.1(this);
  private bn ahP;
  private boolean ahQ = false;
  private boolean connected = true;
  private Handler handler;
  
  private void cA()
  {
    ahP = new bn(this);
    ahP.s(ahH);
  }
  
  private void cB()
  {
    handler = new Handler(ahH.getMainLooper(), new cx.2(this));
    if (ahK > 0) {
      handler.sendMessageDelayed(handler.obtainMessage(1, tQ), ahK);
    }
  }
  
  public static cx mL()
  {
    if (ahR == null) {
      ahR = new cx();
    }
    return ahR;
  }
  
  /* Error */
  void a(Context paramContext, ar paramar)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 74	com/google/android/gms/tagmanager/cx:ahH	Landroid/content/Context;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: aload_1
    //   16: invokevirtual 121	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   19: putfield 74	com/google/android/gms/tagmanager/cx:ahH	Landroid/content/Context;
    //   22: aload_0
    //   23: getfield 123	com/google/android/gms/tagmanager/cx:ahJ	Lcom/google/android/gms/tagmanager/ar;
    //   26: ifnonnull -15 -> 11
    //   29: aload_0
    //   30: aload_2
    //   31: putfield 123	com/google/android/gms/tagmanager/cx:ahJ	Lcom/google/android/gms/tagmanager/ar;
    //   34: goto -23 -> 11
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	cx
    //   0	42	1	paramContext	Context
    //   0	42	2	paramar	ar
    //   6	2	3	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   2	7	37	finally
    //   14	34	37	finally
  }
  
  void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    for (;;)
    {
      StringBuilder localStringBuilder;
      String str1;
      try
      {
        if (ahQ == paramBoolean1)
        {
          boolean bool = connected;
          if (bool == paramBoolean2) {
            return;
          }
        }
        if (((paramBoolean1) || (!paramBoolean2)) && (ahK > 0)) {
          handler.removeMessages(1, tQ);
        }
        if ((!paramBoolean1) && (paramBoolean2) && (ahK > 0)) {
          handler.sendMessageDelayed(handler.obtainMessage(1, tQ), ahK);
        }
        localStringBuilder = new StringBuilder("PowerSaveMode ");
        if (paramBoolean1) {
          break label148;
        }
        if (paramBoolean2) {
          break label142;
        }
      }
      finally {}
      bh.C(str1);
      ahQ = paramBoolean1;
      connected = paramBoolean2;
      continue;
      label142:
      String str2 = "terminated.";
      continue;
      label148:
      str2 = "initiated.";
    }
  }
  
  void cD()
  {
    try
    {
      if ((!ahQ) && (connected) && (ahK > 0))
      {
        handler.removeMessages(1, tQ);
        handler.sendMessage(handler.obtainMessage(1, tQ));
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public void cl()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 46	com/google/android/gms/tagmanager/cx:ahM	Z
    //   6: ifne +16 -> 22
    //   9: ldc -96
    //   11: invokestatic 148	com/google/android/gms/tagmanager/bh:C	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 44	com/google/android/gms/tagmanager/cx:ahL	Z
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: getfield 123	com/google/android/gms/tagmanager/cx:ahJ	Lcom/google/android/gms/tagmanager/ar;
    //   26: new 162	com/google/android/gms/tagmanager/cx$3
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 163	com/google/android/gms/tagmanager/cx$3:<init>	(Lcom/google/android/gms/tagmanager/cx;)V
    //   34: invokeinterface 168 2 0
    //   39: goto -20 -> 19
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	cx
    //   42	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	42	finally
    //   22	39	42	finally
  }
  
  at mM()
  {
    try
    {
      if (ahI != null) {
        break label50;
      }
      if (ahH == null) {
        throw new IllegalStateException("Cant get a store unless we have a context");
      }
    }
    finally {}
    ahI = new ca(ahO, ahH);
    label50:
    if (handler == null) {
      cB();
    }
    ahM = true;
    if (ahL)
    {
      cl();
      ahL = false;
    }
    if ((ahP == null) && (ahN)) {
      cA();
    }
    at localat = ahI;
    return localat;
  }
  
  void t(boolean paramBoolean)
  {
    try
    {
      a(ahQ, paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */