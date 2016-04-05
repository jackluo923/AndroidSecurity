package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;

final class GamesClientImpl$RoomConnectedCallback
  extends GamesClientImpl.AbstractRoomCallback
{
  GamesClientImpl$RoomConnectedCallback(GamesClientImpl paramGamesClientImpl, RoomUpdateListener paramRoomUpdateListener, DataHolder paramDataHolder)
  {
    super(paramGamesClientImpl, paramRoomUpdateListener, paramDataHolder);
  }
  
  public final void a(RoomUpdateListener paramRoomUpdateListener, Room paramRoom, int paramInt)
  {
    paramRoomUpdateListener.onRoomConnected(paramInt, paramRoom);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.RoomConnectedCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */