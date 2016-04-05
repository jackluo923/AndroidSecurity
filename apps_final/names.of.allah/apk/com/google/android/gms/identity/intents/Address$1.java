package com.google.android.gms.identity.intents;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.ix;

final class Address$1
  implements Api.b<ix, Address.AddressOptions>
{
  public final ix a(Context paramContext, Looper paramLooper, gz paramgz, Address.AddressOptions paramAddressOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    hn.b(paramContext instanceof Activity, "An Activity must be used for Address APIs");
    Address.AddressOptions localAddressOptions = paramAddressOptions;
    if (paramAddressOptions == null) {
      localAddressOptions = new Address.AddressOptions();
    }
    return new ix((Activity)paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramgz.getAccountName(), theme);
  }
  
  public final int getPriority()
  {
    return Integer.MAX_VALUE;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.identity.intents.Address.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */