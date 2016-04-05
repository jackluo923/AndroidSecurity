package com.google.ads.mediation;

import android.app.Activity;

@Deprecated
public abstract interface e<ADDITIONAL_PARAMETERS extends j, SERVER_PARAMETERS extends g>
  extends b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS>
{
  public abstract void requestInterstitialAd(f paramf, Activity paramActivity, SERVER_PARAMETERS paramSERVER_PARAMETERS, a parama, ADDITIONAL_PARAMETERS paramADDITIONAL_PARAMETERS);
  
  public abstract void showInterstitial();
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */