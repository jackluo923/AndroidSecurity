package com.google.android.gms.games.internal;

import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.b;

final class GamesClientImpl$RequestRemovedCallback
  extends hc<IGamesService>.b<OnRequestReceivedListener>
{
  private final String Oy;
  
  GamesClientImpl$RequestRemovedCallback(GamesClientImpl paramGamesClientImpl, OnRequestReceivedListener paramOnRequestReceivedListener, String paramString)
  {
    super(paramGamesClientImpl, paramOnRequestReceivedListener);
    Oy = paramString;
  }
  
  protected final void b(OnRequestReceivedListener paramOnRequestReceivedListener)
  {
    paramOnRequestReceivedListener.onRequestRemoved(Oy);
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.RequestRemovedCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */