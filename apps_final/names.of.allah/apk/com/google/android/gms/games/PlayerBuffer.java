package com.google.android.gms.games;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;

public final class PlayerBuffer
  extends DataBuffer<Player>
{
  public PlayerBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  public final Player get(int paramInt)
  {
    return new PlayerRef(DD, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.PlayerBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */