package com.google.android.gms.internal;

import android.content.Intent;
import android.os.IInterface;

public abstract interface dg
  extends IInterface
{
  public abstract void finishPurchase();
  
  public abstract String getProductId();
  
  public abstract Intent getPurchaseData();
  
  public abstract int getResultCode();
  
  public abstract boolean isVerified();
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */