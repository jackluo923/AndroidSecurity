package com.google.android.gms.games.multiplayer.realtime;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;

public final class RoomBuffer
  extends g<Room>
{
  public RoomBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  protected final String eU()
  {
    return "external_match_id";
  }
  
  protected final Room h(int paramInt1, int paramInt2)
  {
    return new RoomRef(DD, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.RoomBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */