package com.google.android.gms.internal;

import android.os.Handler;

final class ck$a
{
  private final Runnable le;
  private volatile boolean oL = false;
  
  public ck$a(ck paramck)
  {
    le = new ck.a.1(this, paramck);
  }
  
  public final void aX()
  {
    eu.ss.postDelayed(le, 250L);
  }
  
  public final void cancel()
  {
    oL = true;
    eu.ss.removeCallbacks(le);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ck.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */