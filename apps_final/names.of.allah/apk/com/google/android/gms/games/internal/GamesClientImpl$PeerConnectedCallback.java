package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import java.util.ArrayList;

final class GamesClientImpl$PeerConnectedCallback
  extends GamesClientImpl.AbstractPeerStatusCallback
{
  GamesClientImpl$PeerConnectedCallback(GamesClientImpl paramGamesClientImpl, RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder, String[] paramArrayOfString)
  {
    super(paramGamesClientImpl, paramRoomStatusUpdateListener, paramDataHolder, paramArrayOfString);
  }
  
  protected final void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom, ArrayList<String> paramArrayList)
  {
    paramRoomStatusUpdateListener.onPeersConnected(paramRoom, paramArrayList);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.PeerConnectedCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */