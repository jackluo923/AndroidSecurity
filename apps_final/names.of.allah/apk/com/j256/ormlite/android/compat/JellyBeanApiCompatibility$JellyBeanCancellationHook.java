package com.j256.ormlite.android.compat;

import android.os.CancellationSignal;

public class JellyBeanApiCompatibility$JellyBeanCancellationHook
  implements ApiCompatibility.CancellationHook
{
  private final CancellationSignal cancellationSignal = new CancellationSignal();
  
  public void cancel()
  {
    cancellationSignal.cancel();
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.compat.JellyBeanApiCompatibility.JellyBeanCancellationHook
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */