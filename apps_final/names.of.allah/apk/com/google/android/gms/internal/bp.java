package com.google.android.gms.internal;

public final class bp
  extends bw.a
{
  private final Object lq = new Object();
  private br.a ny;
  private bo nz;
  
  public final void a(bo parambo)
  {
    synchronized (lq)
    {
      nz = parambo;
      return;
    }
  }
  
  public final void a(br.a parama)
  {
    synchronized (lq)
    {
      ny = parama;
      return;
    }
  }
  
  public final void onAdClicked()
  {
    synchronized (lq)
    {
      if (nz != null) {
        nz.W();
      }
      return;
    }
  }
  
  public final void onAdClosed()
  {
    synchronized (lq)
    {
      if (nz != null) {
        nz.X();
      }
      return;
    }
  }
  
  public final void onAdFailedToLoad(int paramInt)
  {
    synchronized (lq)
    {
      if (ny != null)
      {
        if (paramInt == 3)
        {
          paramInt = 1;
          ny.g(paramInt);
          ny = null;
        }
      }
      else {
        return;
      }
      paramInt = 2;
    }
  }
  
  public final void onAdLeftApplication()
  {
    synchronized (lq)
    {
      if (nz != null) {
        nz.Y();
      }
      return;
    }
  }
  
  public final void onAdLoaded()
  {
    synchronized (lq)
    {
      if (ny != null)
      {
        ny.g(0);
        ny = null;
        return;
      }
      if (nz != null) {
        nz.aa();
      }
      return;
    }
  }
  
  public final void onAdOpened()
  {
    synchronized (lq)
    {
      if (nz != null) {
        nz.Z();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */