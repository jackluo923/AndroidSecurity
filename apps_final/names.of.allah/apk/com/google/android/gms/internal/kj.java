package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Account;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.e;

public final class kj
  implements Account
{
  private static e a(GoogleApiClient paramGoogleApiClient, Api.c<e> paramc)
  {
    boolean bool2 = true;
    if (paramGoogleApiClient != null)
    {
      bool1 = true;
      hn.b(bool1, "GoogleApiClient parameter is required.");
      hn.a(paramGoogleApiClient.isConnected(), "GoogleApiClient must be connected.");
      paramGoogleApiClient = (e)paramGoogleApiClient.a(paramc);
      if (paramGoogleApiClient == null) {
        break label55;
      }
    }
    label55:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      hn.a(bool1, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
      return paramGoogleApiClient;
      bool1 = false;
      break;
    }
  }
  
  public final void clearDefaultAccount(GoogleApiClient paramGoogleApiClient)
  {
    a(paramGoogleApiClient, Plus.yE).clearDefaultAccount();
  }
  
  public final String getAccountName(GoogleApiClient paramGoogleApiClient)
  {
    return a(paramGoogleApiClient, Plus.yE).getAccountName();
  }
  
  public final PendingResult<Status> revokeAccessAndDisconnect(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.b(new kj.1(this));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */