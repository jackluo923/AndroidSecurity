package com.google.android.gms.tagmanager;

class cv
  implements cf
{
  private long ahG;
  private final long wB;
  private final int wC;
  private double wD;
  private final Object wF = new Object();
  
  public cv()
  {
    this(60, 2000L);
  }
  
  public cv(int paramInt, long paramLong)
  {
    wC = paramInt;
    wD = wC;
    wB = paramLong;
  }
  
  public boolean dj()
  {
    synchronized (wF)
    {
      long l = System.currentTimeMillis();
      if (wD < wC)
      {
        double d = (l - ahG) / wB;
        if (d > 0.0D) {
          wD = Math.min(wC, d + wD);
        }
      }
      ahG = l;
      if (wD >= 1.0D)
      {
        wD -= 1.0D;
        return true;
      }
      bh.D("No more tokens available.");
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */