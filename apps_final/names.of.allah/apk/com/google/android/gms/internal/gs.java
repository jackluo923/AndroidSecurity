package com.google.android.gms.internal;

import android.os.SystemClock;
import org.json.JSONObject;

public final class gs
{
  private static final go BD = new go("RequestTracker");
  public static final Object CK = new Object();
  private long CG;
  private long CH;
  private long CI;
  private gr CJ;
  
  public gs(long paramLong)
  {
    CG = paramLong;
    CH = -1L;
    CI = 0L;
  }
  
  private void ep()
  {
    CH = -1L;
    CJ = null;
    CI = 0L;
  }
  
  public final void a(long paramLong, gr paramgr)
  {
    synchronized (CK)
    {
      gr localgr = CJ;
      long l = CH;
      CH = paramLong;
      CJ = paramgr;
      CI = SystemClock.elapsedRealtime();
      if (localgr != null) {
        localgr.n(l);
      }
      return;
    }
  }
  
  public final boolean b(long paramLong, int paramInt, JSONObject paramJSONObject)
  {
    boolean bool = true;
    gr localgr = null;
    for (;;)
    {
      synchronized (CK)
      {
        if ((CH != -1L) && (CH == paramLong))
        {
          BD.b("request %d completed", new Object[] { Long.valueOf(CH) });
          localgr = CJ;
          ep();
          if (localgr != null) {
            localgr.a(paramLong, paramInt, paramJSONObject);
          }
          return bool;
        }
      }
      bool = false;
    }
  }
  
  public final boolean c(long paramLong, int paramInt)
  {
    return b(paramLong, paramInt, null);
  }
  
  public final void clear()
  {
    synchronized (CK)
    {
      if (CH != -1L) {
        ep();
      }
      return;
    }
  }
  
  public final boolean d(long paramLong, int paramInt)
  {
    boolean bool = true;
    long l = 0L;
    for (;;)
    {
      synchronized (CK)
      {
        if ((CH != -1L) && (paramLong - CI >= CG))
        {
          BD.b("request %d timed out", new Object[] { Long.valueOf(CH) });
          paramLong = CH;
          gr localgr = CJ;
          ep();
          if (localgr != null) {
            localgr.a(paramLong, paramInt, null);
          }
          return bool;
        }
      }
      bool = false;
      Object localObject2 = null;
      paramLong = l;
    }
  }
  
  public final boolean eq()
  {
    synchronized (CK)
    {
      if (CH != -1L)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
  }
  
  public final boolean p(long paramLong)
  {
    synchronized (CK)
    {
      if ((CH != -1L) && (CH == paramLong))
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */