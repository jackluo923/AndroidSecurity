package com.google.android.gms.internal;

import android.accounts.Account;
import android.app.Activity;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;

public class ls
  extends hc<ln>
{
  private final int ajY;
  private final int mTheme;
  private final Activity oe;
  private final String yN;
  
  public ls(Activity paramActivity, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, int paramInt1, String paramString, int paramInt2)
  {
    super(paramActivity, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, new String[0]);
    oe = paramActivity;
    ajY = paramInt1;
    yN = paramString;
    mTheme = paramInt2;
  }
  
  public static Bundle a(int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("com.google.android.gms.wallet.EXTRA_ENVIRONMENT", paramInt1);
    localBundle.putString("androidPackageName", paramString1);
    if (!TextUtils.isEmpty(paramString2)) {
      localBundle.putParcelable("com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT", new Account(paramString2, "com.google"));
    }
    localBundle.putInt("com.google.android.gms.wallet.EXTRA_THEME", paramInt2);
    return localBundle;
  }
  
  private Bundle nd()
  {
    return a(ajY, oe.getPackageName(), yN, mTheme);
  }
  
  protected void a(hj paramhj, hc.e parame)
  {
    paramhj.a(parame, 5077000);
  }
  
  public void a(FullWalletRequest paramFullWalletRequest, int paramInt)
  {
    ls.b localb = new ls.b(this, paramInt);
    Bundle localBundle = nd();
    try
    {
      ((ln)fo()).a(paramFullWalletRequest, localBundle, localb);
      return;
    }
    catch (RemoteException paramFullWalletRequest)
    {
      Log.e("WalletClientImpl", "RemoteException getting full wallet", paramFullWalletRequest);
      localb.a(8, null, Bundle.EMPTY);
    }
  }
  
  public void a(MaskedWalletRequest paramMaskedWalletRequest, int paramInt)
  {
    Bundle localBundle = nd();
    ls.b localb = new ls.b(this, paramInt);
    try
    {
      ((ln)fo()).a(paramMaskedWalletRequest, localBundle, localb);
      return;
    }
    catch (RemoteException paramMaskedWalletRequest)
    {
      Log.e("WalletClientImpl", "RemoteException getting masked wallet", paramMaskedWalletRequest);
      localb.a(8, null, Bundle.EMPTY);
    }
  }
  
  public void a(NotifyTransactionStatusRequest paramNotifyTransactionStatusRequest)
  {
    Bundle localBundle = nd();
    try
    {
      ((ln)fo()).a(paramNotifyTransactionStatusRequest, localBundle);
      return;
    }
    catch (RemoteException paramNotifyTransactionStatusRequest) {}
  }
  
  protected String bp()
  {
    return "com.google.android.gms.wallet.service.BIND";
  }
  
  protected String bq()
  {
    return "com.google.android.gms.wallet.internal.IOwService";
  }
  
  protected ln bu(IBinder paramIBinder)
  {
    return ln.a.bq(paramIBinder);
  }
  
  public void d(String paramString1, String paramString2, int paramInt)
  {
    Bundle localBundle = nd();
    ls.b localb = new ls.b(this, paramInt);
    try
    {
      ((ln)fo()).a(paramString1, paramString2, localBundle, localb);
      return;
    }
    catch (RemoteException paramString1)
    {
      Log.e("WalletClientImpl", "RemoteException changing masked wallet", paramString1);
      localb.a(8, null, Bundle.EMPTY);
    }
  }
  
  public void dQ(int paramInt)
  {
    Bundle localBundle = nd();
    ls.b localb = new ls.b(this, paramInt);
    try
    {
      ((ln)fo()).a(localBundle, localb);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("WalletClientImpl", "RemoteException during checkForPreAuthorization", localRemoteException);
      localb.a(8, false, Bundle.EMPTY);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */