package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.ik;

class bf
  implements cf
{
  private final ik aec;
  private final long agc;
  private final long wB;
  private final int wC;
  private double wD;
  private long wE;
  private final Object wF = new Object();
  private final String wG;
  
  public bf(int paramInt, long paramLong1, long paramLong2, String paramString, ik paramik)
  {
    wC = paramInt;
    wD = wC;
    wB = paramLong1;
    agc = paramLong2;
    wG = paramString;
    aec = paramik;
  }
  
  public boolean dj()
  {
    synchronized (wF)
    {
      long l = aec.currentTimeMillis();
      if (l - wE < agc)
      {
        bh.D("Excessive " + wG + " detected; call ignored.");
        return false;
      }
      if (wD < wC)
      {
        double d = (l - wE) / wB;
        if (d > 0.0D) {
          wD = Math.min(wC, d + wD);
        }
      }
      wE = l;
      if (wD >= 1.0D)
      {
        wD -= 1.0D;
        return true;
      }
    }
    bh.D("Excessive " + wG + " detected; call ignored.");
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */