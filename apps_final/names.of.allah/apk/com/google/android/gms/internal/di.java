package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.InAppPurchaseListener;

public final class di
  extends dd.a
{
  private final InAppPurchaseListener mz;
  
  public di(InAppPurchaseListener paramInAppPurchaseListener)
  {
    mz = paramInAppPurchaseListener;
  }
  
  public final void a(dc paramdc)
  {
    mz.onInAppPurchaseRequested(new dl(paramdc));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */