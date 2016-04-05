package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchaseResult;

public class dk
  implements InAppPurchaseResult
{
  private final dg pu;
  
  public dk(dg paramdg)
  {
    pu = paramdg;
  }
  
  public void finishPurchase()
  {
    try
    {
      pu.finishPurchase();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not forward finishPurchase to InAppPurchaseResult", localRemoteException);
    }
  }
  
  public String getProductId()
  {
    try
    {
      String str = pu.getProductId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not forward getProductId to InAppPurchaseResult", localRemoteException);
    }
    return null;
  }
  
  public Intent getPurchaseData()
  {
    try
    {
      Intent localIntent = pu.getPurchaseData();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not forward getPurchaseData to InAppPurchaseResult", localRemoteException);
    }
    return null;
  }
  
  public int getResultCode()
  {
    try
    {
      int i = pu.getResultCode();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not forward getPurchaseData to InAppPurchaseResult", localRemoteException);
    }
    return 0;
  }
  
  public boolean isVerified()
  {
    try
    {
      boolean bool = pu.isVerified();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not forward isVerified to InAppPurchaseResult", localRemoteException);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */