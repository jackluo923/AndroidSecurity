package com.google.android.gms.internal;

import android.os.IInterface;

public abstract interface aq
  extends IInterface
{
  public abstract void onAdClosed();
  
  public abstract void onAdFailedToLoad(int paramInt);
  
  public abstract void onAdLeftApplication();
  
  public abstract void onAdLoaded();
  
  public abstract void onAdOpened();
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */