package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;

final class GamesClientImpl$RequestReceivedBinderCallback
  extends AbstractGamesCallbacks
{
  private final OnRequestReceivedListener Ow;
  
  GamesClientImpl$RequestReceivedBinderCallback(GamesClientImpl paramGamesClientImpl, OnRequestReceivedListener paramOnRequestReceivedListener)
  {
    Ow = paramOnRequestReceivedListener;
  }
  
  public final void o(DataHolder paramDataHolder)
  {
    GameRequestBuffer localGameRequestBuffer = new GameRequestBuffer(paramDataHolder);
    paramDataHolder = null;
    try
    {
      if (localGameRequestBuffer.getCount() > 0) {
        paramDataHolder = (GameRequest)((GameRequest)localGameRequestBuffer.get(0)).freeze();
      }
      localGameRequestBuffer.close();
      if (paramDataHolder != null) {
        NB.a(new GamesClientImpl.RequestReceivedCallback(NB, Ow, paramDataHolder));
      }
      return;
    }
    finally
    {
      localGameRequestBuffer.close();
    }
  }
  
  public final void onRequestRemoved(String paramString)
  {
    NB.a(new GamesClientImpl.RequestRemovedCallback(NB, Ow, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.RequestReceivedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */