package com.google.android.gms.ads.purchase;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.de;
import com.google.android.gms.internal.dj;
import com.google.android.gms.internal.ev;

public final class InAppPurchaseActivity
  extends Activity
{
  public static final String CLASS_NAME = "com.google.android.gms.ads.purchase.InAppPurchaseActivity";
  public static final String SIMPLE_CLASS_NAME = "InAppPurchaseActivity";
  private de sY;
  
  protected final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    try
    {
      if (sY != null) {
        sY.onActivityResult(paramInt1, paramInt2, paramIntent);
      }
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ev.c("Could not forward onActivityResult to in-app purchase manager:", localRemoteException);
      }
    }
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    sY = dj.d(this);
    if (sY == null)
    {
      ev.D("Could not create in-app purchase manager.");
      finish();
      return;
    }
    try
    {
      sY.onCreate();
      return;
    }
    catch (RemoteException paramBundle)
    {
      ev.c("Could not forward onCreate to in-app purchase manager:", paramBundle);
      finish();
    }
  }
  
  protected final void onDestroy()
  {
    try
    {
      if (sY != null) {
        sY.onDestroy();
      }
      super.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ev.c("Could not forward onDestroy to in-app purchase manager:", localRemoteException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.purchase.InAppPurchaseActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */