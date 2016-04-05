package com.google.android.gms.analytics;

class z
  implements ad
{
  private final long wB;
  private final int wC;
  private double wD;
  private long wE;
  private final Object wF = new Object();
  private final String wG;
  
  public z(int paramInt, long paramLong, String paramString)
  {
    wC = paramInt;
    wD = wC;
    wB = paramLong;
    wG = paramString;
  }
  
  public z(String paramString)
  {
    this(60, 2000L, paramString);
  }
  
  public boolean dj()
  {
    synchronized (wF)
    {
      long l = System.currentTimeMillis();
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
      aa.D("Excessive " + wG + " detected; call ignored.");
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */