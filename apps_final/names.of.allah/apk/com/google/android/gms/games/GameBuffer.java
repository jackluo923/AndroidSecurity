package com.google.android.gms.games;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;

public final class GameBuffer
  extends DataBuffer<Game>
{
  public GameBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  public final Game get(int paramInt)
  {
    return new GameRef(DD, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.GameBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */