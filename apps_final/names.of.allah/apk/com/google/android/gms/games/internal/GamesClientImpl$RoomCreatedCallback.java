package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;

final class GamesClientImpl$RoomCreatedCallback
  extends GamesClientImpl.AbstractRoomCallback
{
  public GamesClientImpl$RoomCreatedCallback(GamesClientImpl paramGamesClientImpl, RoomUpdateListener paramRoomUpdateListener, DataHolder paramDataHolder)
  {
    super(paramGamesClientImpl, paramRoomUpdateListener, paramDataHolder);
  }
  
  public final void a(RoomUpdateListener paramRoomUpdateListener, Room paramRoom, int paramInt)
  {
    paramRoomUpdateListener.onRoomCreated(paramInt, paramRoom);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.RoomCreatedCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */