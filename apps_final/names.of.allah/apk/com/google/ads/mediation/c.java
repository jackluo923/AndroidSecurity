package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;

@Deprecated
public abstract interface c<ADDITIONAL_PARAMETERS extends j, SERVER_PARAMETERS extends g>
  extends b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS>
{
  public abstract View getBannerView();
  
  public abstract void requestBannerAd(d paramd, Activity paramActivity, SERVER_PARAMETERS paramSERVER_PARAMETERS, com.google.ads.d paramd1, a parama, ADDITIONAL_PARAMETERS paramADDITIONAL_PARAMETERS);
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */