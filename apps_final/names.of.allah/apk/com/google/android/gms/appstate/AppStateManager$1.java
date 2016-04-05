package com.google.android.gms.appstate;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.gz;
import java.util.List;

final class AppStateManager$1
  implements Api.b<gb, Api.ApiOptions.NoOptions>
{
  public final gb b(Context paramContext, Looper paramLooper, gz paramgz, Api.ApiOptions.NoOptions paramNoOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return new gb(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramgz.fe(), (String[])paramgz.fg().toArray(new String[0]));
  }
  
  public final int getPriority()
  {
    return Integer.MAX_VALUE;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appstate.AppStateManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */