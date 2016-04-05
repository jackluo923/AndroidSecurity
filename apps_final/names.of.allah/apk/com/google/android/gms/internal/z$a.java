package com.google.android.gms.internal;

import android.os.Handler;

public class z$a
{
  private final Handler mHandler;
  
  public z$a(Handler paramHandler)
  {
    mHandler = paramHandler;
  }
  
  public boolean postDelayed(Runnable paramRunnable, long paramLong)
  {
    return mHandler.postDelayed(paramRunnable, paramLong);
  }
  
  public void removeCallbacks(Runnable paramRunnable)
  {
    mHandler.removeCallbacks(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.z.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */