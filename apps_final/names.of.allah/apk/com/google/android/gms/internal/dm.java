package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

public final class dm
  extends dh.a
{
  private final PlayStorePurchaseListener mA;
  
  public dm(PlayStorePurchaseListener paramPlayStorePurchaseListener)
  {
    mA = paramPlayStorePurchaseListener;
  }
  
  public final void a(dg paramdg)
  {
    mA.onInAppPurchaseFinished(new dk(paramdg));
  }
  
  public final boolean isValidPurchase(String paramString)
  {
    return mA.isValidPurchase(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */