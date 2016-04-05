package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.im;

class a
{
  private static a aee;
  private static Object tn = new Object();
  private volatile long adZ = 900000L;
  private volatile long aea = 30000L;
  private volatile long aeb;
  private final ik aec;
  private a.a aed = new a.1(this);
  private volatile boolean mClosed = false;
  private final Context mContext;
  private final Thread sc;
  private volatile AdvertisingIdClient.Info tp;
  
  private a(Context paramContext)
  {
    this(paramContext, null, im.fW());
  }
  
  a(Context paramContext, a.a parama, ik paramik)
  {
    aec = paramik;
    if (paramContext != null) {}
    for (mContext = paramContext.getApplicationContext();; mContext = paramContext)
    {
      if (parama != null) {
        aed = parama;
      }
      sc = new Thread(new a.2(this));
      return;
    }
  }
  
  static a J(Context paramContext)
  {
    if (aee == null) {}
    synchronized (tn)
    {
      if (aee == null)
      {
        paramContext = new a(paramContext);
        aee = paramContext;
        paramContext.start();
      }
      return aee;
    }
  }
  
  private void kZ()
  {
    Process.setThreadPriority(10);
    while (!mClosed) {
      try
      {
        tp = aed.lb();
        Thread.sleep(adZ);
      }
      catch (InterruptedException localInterruptedException)
      {
        bh.B("sleep interrupted in AdvertiserDataPoller thread; continuing");
      }
    }
  }
  
  private void la()
  {
    if (aec.currentTimeMillis() - aeb < aea) {
      return;
    }
    interrupt();
    aeb = aec.currentTimeMillis();
  }
  
  void interrupt()
  {
    sc.interrupt();
  }
  
  public boolean isLimitAdTrackingEnabled()
  {
    la();
    if (tp == null) {
      return true;
    }
    return tp.isLimitAdTrackingEnabled();
  }
  
  public String kY()
  {
    la();
    if (tp == null) {
      return null;
    }
    return tp.getId();
  }
  
  void start()
  {
    sc.start();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */