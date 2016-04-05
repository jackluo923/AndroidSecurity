package com.google.android.gms.internal;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.identity.intents.UserAddressRequest;

public class ix
  extends hc<iz>
{
  private ix.a UD;
  private final int mTheme;
  private Activity oe;
  private final String yN;
  
  public ix(Activity paramActivity, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString, int paramInt)
  {
    super(paramActivity, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, new String[0]);
    yN = paramString;
    oe = paramActivity;
    mTheme = paramInt;
  }
  
  public void a(UserAddressRequest paramUserAddressRequest, int paramInt)
  {
    iP();
    UD = new ix.a(paramInt, oe);
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME", getContext().getPackageName());
      if (!TextUtils.isEmpty(yN)) {
        localBundle.putParcelable("com.google.android.gms.identity.intents.EXTRA_ACCOUNT", new Account(yN, "com.google"));
      }
      localBundle.putInt("com.google.android.gms.identity.intents.EXTRA_THEME", mTheme);
      iO().a(UD, paramUserAddressRequest, localBundle);
      return;
    }
    catch (RemoteException paramUserAddressRequest)
    {
      Log.e("AddressClientImpl", "Exception requesting user address", paramUserAddressRequest);
      paramUserAddressRequest = new Bundle();
      paramUserAddressRequest.putInt("com.google.android.gms.identity.intents.EXTRA_ERROR_CODE", 555);
      UD.g(1, paramUserAddressRequest);
    }
  }
  
  protected void a(hj paramhj, hc.e parame)
  {
    paramhj.d(parame, 5077000, getContext().getPackageName());
  }
  
  protected iz an(IBinder paramIBinder)
  {
    return iz.a.ap(paramIBinder);
  }
  
  protected String bp()
  {
    return "com.google.android.gms.identity.service.BIND";
  }
  
  protected String bq()
  {
    return "com.google.android.gms.identity.intents.internal.IAddressService";
  }
  
  public void disconnect()
  {
    super.disconnect();
    if (UD != null)
    {
      ix.a.a(UD, null);
      UD = null;
    }
  }
  
  protected iz iO()
  {
    return (iz)super.fo();
  }
  
  protected void iP()
  {
    super.ci();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */