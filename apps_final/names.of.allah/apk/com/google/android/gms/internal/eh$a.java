package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;

final class eh$a
{
  private long rK = -1L;
  private long rL = -1L;
  
  public final void bA()
  {
    rL = SystemClock.elapsedRealtime();
  }
  
  public final void bB()
  {
    rK = SystemClock.elapsedRealtime();
  }
  
  public final long bz()
  {
    return rL;
  }
  
  public final Bundle toBundle()
  {
    Bundle localBundle = new Bundle();
    localBundle.putLong("topen", rK);
    localBundle.putLong("tclose", rL);
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */