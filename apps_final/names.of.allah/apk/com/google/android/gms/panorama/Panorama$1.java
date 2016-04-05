package com.google.android.gms.panorama;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.kh;

final class Panorama$1
  implements Api.b<kh, Api.ApiOptions.NoOptions>
{
  public final kh d(Context paramContext, Looper paramLooper, gz paramgz, Api.ApiOptions.NoOptions paramNoOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return new kh(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  public final int getPriority()
  {
    return Integer.MAX_VALUE;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.panorama.Panorama.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */