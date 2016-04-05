package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.d;

abstract class GamesClientImpl$AbstractRoomStatusCallback
  extends hc<IGamesService>.d<RoomStatusUpdateListener>
{
  GamesClientImpl$AbstractRoomStatusCallback(GamesClientImpl paramGamesClientImpl, RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder)
  {
    super(paramGamesClientImpl, paramRoomStatusUpdateListener, paramDataHolder);
  }
  
  protected void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder)
  {
    a(paramRoomStatusUpdateListener, GamesClientImpl.a(NB, paramDataHolder));
  }
  
  protected abstract void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomStatusCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */