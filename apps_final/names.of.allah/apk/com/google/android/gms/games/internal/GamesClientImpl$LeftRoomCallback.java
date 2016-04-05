package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.b;

final class GamesClientImpl$LeftRoomCallback
  extends hc<IGamesService>.b<RoomUpdateListener>
{
  private final int CQ;
  private final String NP;
  
  GamesClientImpl$LeftRoomCallback(GamesClientImpl paramGamesClientImpl, RoomUpdateListener paramRoomUpdateListener, int paramInt, String paramString)
  {
    super(paramGamesClientImpl, paramRoomUpdateListener);
    CQ = paramInt;
    NP = paramString;
  }
  
  public final void a(RoomUpdateListener paramRoomUpdateListener)
  {
    paramRoomUpdateListener.onLeftRoom(CQ, NP);
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LeftRoomCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */