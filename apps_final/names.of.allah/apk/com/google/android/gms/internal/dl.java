package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchase;

public class dl
  implements InAppPurchase
{
  private final dc pg;
  
  public dl(dc paramdc)
  {
    pg = paramdc;
  }
  
  public String getProductId()
  {
    try
    {
      String str = pg.getProductId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not forward getProductId to InAppPurchase", localRemoteException);
    }
    return null;
  }
  
  public void recordPlayBillingResolution(int paramInt)
  {
    try
    {
      pg.recordPlayBillingResolution(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not forward recordPlayBillingResolution to InAppPurchase", localRemoteException);
    }
  }
  
  public void recordResolution(int paramInt)
  {
    try
    {
      pg.recordResolution(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not forward recordResolution to InAppPurchase", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */