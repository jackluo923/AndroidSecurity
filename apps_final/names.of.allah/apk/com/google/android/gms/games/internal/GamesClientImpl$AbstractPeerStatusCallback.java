package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import java.util.ArrayList;

abstract class GamesClientImpl$AbstractPeerStatusCallback
  extends GamesClientImpl.AbstractRoomStatusCallback
{
  private final ArrayList<String> NC = new ArrayList();
  
  GamesClientImpl$AbstractPeerStatusCallback(GamesClientImpl paramGamesClientImpl, RoomStatusUpdateListener paramRoomStatusUpdateListener, DataHolder paramDataHolder, String[] paramArrayOfString)
  {
    super(paramGamesClientImpl, paramRoomStatusUpdateListener, paramDataHolder);
    int i = 0;
    int j = paramArrayOfString.length;
    while (i < j)
    {
      NC.add(paramArrayOfString[i]);
      i += 1;
    }
  }
  
  protected void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom)
  {
    a(paramRoomStatusUpdateListener, paramRoom, NC);
  }
  
  protected abstract void a(RoomStatusUpdateListener paramRoomStatusUpdateListener, Room paramRoom, ArrayList<String> paramArrayList);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */