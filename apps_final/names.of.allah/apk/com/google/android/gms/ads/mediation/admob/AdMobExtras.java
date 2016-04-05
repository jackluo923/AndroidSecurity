package com.google.android.gms.ads.mediation.admob;

import android.os.Bundle;
import com.google.ads.mediation.j;

@Deprecated
public final class AdMobExtras
  implements j
{
  private final Bundle mExtras;
  
  public AdMobExtras(Bundle paramBundle)
  {
    if (paramBundle != null) {}
    for (paramBundle = new Bundle(paramBundle);; paramBundle = null)
    {
      mExtras = paramBundle;
      return;
    }
  }
  
  public final Bundle getExtras()
  {
    return mExtras;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.admob.AdMobExtras
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */