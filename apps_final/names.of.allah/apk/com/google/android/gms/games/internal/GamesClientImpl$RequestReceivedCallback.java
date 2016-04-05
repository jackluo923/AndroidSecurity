package com.google.android.gms.games.internal;

import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.b;

final class GamesClientImpl$RequestReceivedCallback
  extends hc<IGamesService>.b<OnRequestReceivedListener>
{
  private final GameRequest Ox;
  
  GamesClientImpl$RequestReceivedCallback(GamesClientImpl paramGamesClientImpl, OnRequestReceivedListener paramOnRequestReceivedListener, GameRequest paramGameRequest)
  {
    super(paramGamesClientImpl, paramOnRequestReceivedListener);
    Ox = paramGameRequest;
  }
  
  protected final void b(OnRequestReceivedListener paramOnRequestReceivedListener)
  {
    paramOnRequestReceivedListener.onRequestReceived(Ox);
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.RequestReceivedCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */