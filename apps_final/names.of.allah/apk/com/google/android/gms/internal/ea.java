package com.google.android.gms.internal;

public final class ea
{
  private ey lL;
  private final Object lq = new Object();
  private int pH = -2;
  public final bd qA = new ea.1(this);
  public final bd qB = new ea.2(this);
  private String qy;
  private ec qz;
  
  public ea(String paramString)
  {
    qy = paramString;
  }
  
  public final void b(ey paramey)
  {
    synchronized (lq)
    {
      lL = paramey;
      return;
    }
  }
  
  public final ec bs()
  {
    synchronized (lq)
    {
      while (qz == null)
      {
        int i = pH;
        if (i == -2) {
          try
          {
            lq.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
            ev.D("Ad request service was interrupted.");
            return null;
          }
        }
      }
      ec localec = qz;
      return localec;
    }
  }
  
  public final int getErrorCode()
  {
    synchronized (lq)
    {
      int i = pH;
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */