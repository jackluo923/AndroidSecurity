package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.d;

abstract class GamesClientImpl$AbstractRoomCallback
  extends hc<IGamesService>.d<RoomUpdateListener>
{
  GamesClientImpl$AbstractRoomCallback(GamesClientImpl paramGamesClientImpl, RoomUpdateListener paramRoomUpdateListener, DataHolder paramDataHolder)
  {
    super(paramGamesClientImpl, paramRoomUpdateListener, paramDataHolder);
  }
  
  protected void a(RoomUpdateListener paramRoomUpdateListener, DataHolder paramDataHolder)
  {
    a(paramRoomUpdateListener, GamesClientImpl.a(NB, paramDataHolder), paramDataHolder.getStatusCode());
  }
  
  protected abstract void a(RoomUpdateListener paramRoomUpdateListener, Room paramRoom, int paramInt);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */