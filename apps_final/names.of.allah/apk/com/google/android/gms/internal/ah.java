package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;

public final class ah
  extends aq.a
{
  private final AdListener lO;
  
  public ah(AdListener paramAdListener)
  {
    lO = paramAdListener;
  }
  
  public final void onAdClosed()
  {
    lO.onAdClosed();
  }
  
  public final void onAdFailedToLoad(int paramInt)
  {
    lO.onAdFailedToLoad(paramInt);
  }
  
  public final void onAdLeftApplication()
  {
    lO.onAdLeftApplication();
  }
  
  public final void onAdLoaded()
  {
    lO.onAdLoaded();
  }
  
  public final void onAdOpened()
  {
    lO.onAdOpened();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */