package com.google.android.gms.wallet;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.ls;

final class Wallet$1
  implements Api.b<ls, Wallet.WalletOptions>
{
  public final ls a(Context paramContext, Looper paramLooper, gz paramgz, Wallet.WalletOptions paramWalletOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    hn.b(paramContext instanceof Activity, "An Activity must be used for Wallet APIs");
    paramContext = (Activity)paramContext;
    if (paramWalletOptions != null) {}
    for (;;)
    {
      return new ls(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, environment, paramgz.getAccountName(), theme);
      paramWalletOptions = new Wallet.WalletOptions(null);
    }
  }
  
  public final int getPriority()
  {
    return Integer.MAX_VALUE;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.Wallet.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */