package com.google.android.gms.cast;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.gi;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hn;

final class Cast$1
  implements Api.b<gi, Cast.CastOptions>
{
  public final gi a(Context paramContext, Looper paramLooper, gz paramgz, Cast.CastOptions paramCastOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    hn.b(paramCastOptions, "Setting the API options is required.");
    return new gi(paramContext, paramLooper, zX, Cast.CastOptions.a(paramCastOptions), zY, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  public final int getPriority()
  {
    return Integer.MAX_VALUE;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.Cast.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */