package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;

final class GamesClientImpl$ConnectedToRoomCallback
  extends GamesClientImpl.AbstractRoomStatusCallback
{
  GamesClientImpl$ConnectedToRoomCallback(GamesClientImpl paramGamesClientImpl, RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder)
  {
    super(paramGamesClientImpl, paramRoomStatusUpdateListener, paramDataHolder);
  }
  
  public final void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom)
  {
    paramRoomStatusUpdateListener.onConnectedToRoom(paramRoom);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.ConnectedToRoomCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */