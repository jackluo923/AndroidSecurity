package com.google.android.gms.internal;

import android.app.Activity;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;
import com.google.android.gms.dynamic.g.a;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

public class lt
  extends g<lo>
{
  private static lt akK;
  
  protected lt()
  {
    super("com.google.android.gms.wallet.dynamite.WalletDynamiteCreatorImpl");
  }
  
  public static ll a(Activity paramActivity, c paramc, WalletFragmentOptions paramWalletFragmentOptions, lm paramlm)
  {
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramActivity);
    if (i != 0) {
      throw new GooglePlayServicesNotAvailableException(i);
    }
    try
    {
      paramActivity = ((lo)ne().D(paramActivity)).a(e.h(paramActivity), paramc, paramWalletFragmentOptions, paramlm);
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      throw new RuntimeException(paramActivity);
    }
    catch (g.a paramActivity)
    {
      throw new RuntimeException(paramActivity);
    }
  }
  
  private static lt ne()
  {
    if (akK == null) {
      akK = new lt();
    }
    return akK;
  }
  
  protected lo bv(IBinder paramIBinder)
  {
    return lo.a.br(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */