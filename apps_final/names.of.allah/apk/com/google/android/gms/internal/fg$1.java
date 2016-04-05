package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

final class fg$1
  implements Api.b<fy, Api.ApiOptions.NoOptions>
{
  public final fy a(Context paramContext, Looper paramLooper, gz paramgz, Api.ApiOptions.NoOptions paramNoOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return new fy(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  public final int getPriority()
  {
    return Integer.MAX_VALUE;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */