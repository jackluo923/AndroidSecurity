package com.google.android.gms.wearable;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.gz;
import com.google.android.gms.wearable.internal.au;

final class Wearable$1
  implements Api.b<au, Wearable.WearableOptions>
{
  public final au a(Context paramContext, Looper paramLooper, gz paramgz, Wearable.WearableOptions paramWearableOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    if (paramWearableOptions == null) {
      new Wearable.WearableOptions(new Wearable.WearableOptions.Builder(), null);
    }
    return new au(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  public final int getPriority()
  {
    return Integer.MAX_VALUE;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.Wearable.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */