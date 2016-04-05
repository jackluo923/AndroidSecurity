package com.google.android.gms.games;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.gz;

final class Games$1
  implements Api.b<GamesClientImpl, Games.GamesOptions>
{
  public final GamesClientImpl a(Context paramContext, Looper paramLooper, gz paramgz, Games.GamesOptions paramGamesOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    Games.GamesOptions localGamesOptions = paramGamesOptions;
    if (paramGamesOptions == null) {
      localGamesOptions = new Games.GamesOptions(null);
    }
    return new GamesClientImpl(paramContext, paramLooper, paramgz.fi(), paramgz.fe(), paramConnectionCallbacks, paramOnConnectionFailedListener, paramgz.fh(), paramgz.ff(), paramgz.fj(), MJ, MK, ML, MM, MN, MO);
  }
  
  public final int getPriority()
  {
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.Games.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */