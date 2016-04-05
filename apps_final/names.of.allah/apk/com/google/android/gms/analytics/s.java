package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.internal.fe;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;

class s
  implements ag, c.b, c.c
{
  private final Context mContext;
  private d tR;
  private final f tS;
  private boolean tU;
  private volatile long ue;
  private volatile s.a uf;
  private volatile b ug;
  private d uh;
  private final GoogleAnalytics ui;
  private final Queue<s.d> uj = new ConcurrentLinkedQueue();
  private volatile int uk;
  private volatile Timer ul;
  private volatile Timer um;
  private volatile Timer un;
  private boolean uo;
  private boolean up;
  private boolean uq;
  private i ur;
  private long us = 300000L;
  
  s(Context paramContext, f paramf)
  {
    this(paramContext, paramf, null, GoogleAnalytics.getInstance(paramContext));
  }
  
  s(Context paramContext, f paramf, d paramd, GoogleAnalytics paramGoogleAnalytics)
  {
    uh = paramd;
    mContext = paramContext;
    tS = paramf;
    ui = paramGoogleAnalytics;
    ur = new s.1(this);
    uk = 0;
    uf = s.a.uB;
  }
  
  private Timer a(Timer paramTimer)
  {
    if (paramTimer != null) {
      paramTimer.cancel();
    }
    return null;
  }
  
  private void bn()
  {
    try
    {
      if ((ug != null) && (uf == s.a.uw))
      {
        uf = s.a.uA;
        ug.disconnect();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void cF()
  {
    ul = a(ul);
    um = a(um);
    un = a(un);
  }
  
  private void cH()
  {
    for (;;)
    {
      try
      {
        if (!Thread.currentThread().equals(tS.getThread()))
        {
          tS.co().add(new s.2(this));
          return;
        }
        if (uo) {
          cg();
        }
        switch (s.3.uu[uf.ordinal()])
        {
        case 1: 
          if (!uj.isEmpty())
          {
            s.d locald1 = (s.d)uj.poll();
            aa.C("Sending hit to store  " + locald1);
            tR.a(locald1.cM(), locald1.cN(), locald1.getPath(), locald1.cO());
            continue;
          }
          if (!tU) {
            continue;
          }
        }
      }
      finally {}
      cI();
      continue;
      if (!uj.isEmpty())
      {
        s.d locald2 = (s.d)uj.peek();
        aa.C("Sending hit to service   " + locald2);
        if (!ui.isDryRunEnabled()) {
          ug.a(locald2.cM(), locald2.cN(), locald2.getPath(), locald2.cO());
        }
        for (;;)
        {
          uj.poll();
          break;
          aa.C("Dry run enabled. Hit not actually sent to service.");
        }
      }
      ue = ur.currentTimeMillis();
      continue;
      aa.C("Need to reconnect");
      if (!uj.isEmpty()) {
        cK();
      }
    }
  }
  
  private void cI()
  {
    tR.cl();
    tU = false;
  }
  
  private void cJ()
  {
    for (;;)
    {
      try
      {
        s.a locala1 = uf;
        s.a locala2 = s.a.ux;
        if (locala1 == locala2) {
          return;
        }
        cF();
        aa.C("falling back to local store");
        if (uh != null)
        {
          tR = uh;
          uf = s.a.ux;
          cH();
          continue;
        }
        localr = r.cz();
      }
      finally {}
      r localr;
      localr.a(mContext, tS);
      tR = localr.cC();
    }
  }
  
  private void cK()
  {
    for (;;)
    {
      try
      {
        if ((!uq) && (ug != null))
        {
          s.a locala1 = uf;
          s.a locala2 = s.a.ux;
          if (locala1 != locala2) {
            try
            {
              uk += 1;
              a(um);
              uf = s.a.uv;
              um = new Timer("Failed Connect");
              um.schedule(new s.c(this, null), 3000L);
              aa.C("connecting to Analytics service");
              ug.connect();
              return;
            }
            catch (SecurityException localSecurityException)
            {
              aa.D("security exception on connectToService");
              cJ();
              continue;
            }
          }
        }
        aa.D("client not initialized.");
      }
      finally {}
      cJ();
    }
  }
  
  private void cL()
  {
    ul = a(ul);
    ul = new Timer("Service Reconnect");
    ul.schedule(new s.e(this, null), 5000L);
  }
  
  /* Error */
  public void a(int paramInt, android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getstatic 335	com/google/android/gms/analytics/s$a:uz	Lcom/google/android/gms/analytics/s$a;
    //   6: putfield 90	com/google/android/gms/analytics/s:uf	Lcom/google/android/gms/analytics/s$a;
    //   9: aload_0
    //   10: getfield 83	com/google/android/gms/analytics/s:uk	I
    //   13: iconst_2
    //   14: if_icmpge +36 -> 50
    //   17: new 185	java/lang/StringBuilder
    //   20: dup
    //   21: ldc_w 337
    //   24: invokespecial 190	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   27: iload_1
    //   28: invokevirtual 340	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   31: ldc_w 342
    //   34: invokevirtual 345	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 198	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: invokestatic 308	com/google/android/gms/analytics/aa:D	(Ljava/lang/String;)V
    //   43: aload_0
    //   44: invokespecial 347	com/google/android/gms/analytics/s:cL	()V
    //   47: aload_0
    //   48: monitorexit
    //   49: return
    //   50: new 185	java/lang/StringBuilder
    //   53: dup
    //   54: ldc_w 337
    //   57: invokespecial 190	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: iload_1
    //   61: invokevirtual 340	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   64: ldc_w 349
    //   67: invokevirtual 345	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 198	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokestatic 308	com/google/android/gms/analytics/aa:D	(Ljava/lang/String;)V
    //   76: aload_0
    //   77: invokespecial 120	com/google/android/gms/analytics/s:cJ	()V
    //   80: goto -33 -> 47
    //   83: astore_2
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_2
    //   87: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	this	s
    //   0	88	1	paramInt	int
    //   0	88	2	paramIntent	android.content.Intent
    // Exception table:
    //   from	to	target	type
    //   2	47	83	finally
    //   50	80	83	finally
  }
  
  public void b(Map<String, String> paramMap, long paramLong, String paramString, List<fe> paramList)
  {
    aa.C("putHit called");
    uj.add(new s.d(paramMap, paramLong, paramString, paramList));
    cH();
  }
  
  public void cG()
  {
    if (ug != null) {
      return;
    }
    ug = new c(mContext, this, this);
    cK();
  }
  
  public void cg()
  {
    aa.C("clearHits called");
    uj.clear();
    switch (s.3.uu[uf.ordinal()])
    {
    default: 
      uo = true;
      return;
    case 1: 
      tR.l(0L);
      uo = false;
      return;
    }
    ug.cg();
    uo = false;
  }
  
  public void cl()
  {
    switch (s.3.uu[uf.ordinal()])
    {
    default: 
      tU = true;
    case 2: 
      return;
    }
    cI();
  }
  
  public void cn()
  {
    for (;;)
    {
      try
      {
        boolean bool = uq;
        if (bool) {
          return;
        }
        aa.C("setForceLocalDispatch called.");
        uq = true;
        switch (s.3.uu[uf.ordinal()])
        {
        case 1: 
        case 2: 
          bn();
          break;
        case 3: 
          up = true;
        }
      }
      finally {}
    }
  }
  
  /* Error */
  public void onConnected()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: aload_0
    //   5: getfield 127	com/google/android/gms/analytics/s:um	Ljava/util/Timer;
    //   8: invokespecial 125	com/google/android/gms/analytics/s:a	(Ljava/util/Timer;)Ljava/util/Timer;
    //   11: putfield 127	com/google/android/gms/analytics/s:um	Ljava/util/Timer;
    //   14: aload_0
    //   15: iconst_0
    //   16: putfield 83	com/google/android/gms/analytics/s:uk	I
    //   19: ldc_w 380
    //   22: invokestatic 203	com/google/android/gms/analytics/aa:C	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: getstatic 108	com/google/android/gms/analytics/s$a:uw	Lcom/google/android/gms/analytics/s$a;
    //   29: putfield 90	com/google/android/gms/analytics/s:uf	Lcom/google/android/gms/analytics/s$a;
    //   32: aload_0
    //   33: getfield 377	com/google/android/gms/analytics/s:up	Z
    //   36: ifeq +15 -> 51
    //   39: aload_0
    //   40: invokespecial 329	com/google/android/gms/analytics/s:bn	()V
    //   43: aload_0
    //   44: iconst_0
    //   45: putfield 377	com/google/android/gms/analytics/s:up	Z
    //   48: aload_0
    //   49: monitorexit
    //   50: return
    //   51: aload_0
    //   52: invokespecial 100	com/google/android/gms/analytics/s:cH	()V
    //   55: aload_0
    //   56: aload_0
    //   57: aload_0
    //   58: getfield 129	com/google/android/gms/analytics/s:un	Ljava/util/Timer;
    //   61: invokespecial 125	com/google/android/gms/analytics/s:a	(Ljava/util/Timer;)Ljava/util/Timer;
    //   64: putfield 129	com/google/android/gms/analytics/s:un	Ljava/util/Timer;
    //   67: aload_0
    //   68: new 94	java/util/Timer
    //   71: dup
    //   72: ldc_w 382
    //   75: invokespecial 287	java/util/Timer:<init>	(Ljava/lang/String;)V
    //   78: putfield 129	com/google/android/gms/analytics/s:un	Ljava/util/Timer;
    //   81: aload_0
    //   82: getfield 129	com/google/android/gms/analytics/s:un	Ljava/util/Timer;
    //   85: new 384	com/google/android/gms/analytics/s$b
    //   88: dup
    //   89: aload_0
    //   90: aconst_null
    //   91: invokespecial 385	com/google/android/gms/analytics/s$b:<init>	(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/s$1;)V
    //   94: aload_0
    //   95: getfield 66	com/google/android/gms/analytics/s:us	J
    //   98: invokevirtual 298	java/util/Timer:schedule	(Ljava/util/TimerTask;J)V
    //   101: goto -53 -> 48
    //   104: astore_1
    //   105: aload_0
    //   106: monitorexit
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	s
    //   104	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	48	104	finally
    //   51	101	104	finally
  }
  
  public void onDisconnected()
  {
    for (;;)
    {
      try
      {
        if (uf == s.a.uA)
        {
          aa.C("Disconnected from service");
          cF();
          uf = s.a.uB;
          return;
        }
        aa.C("Unexpected disconnect.");
        uf = s.a.uz;
        if (uk < 2) {
          cL();
        } else {
          cJ();
        }
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */