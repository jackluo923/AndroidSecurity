package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;

public final class GameInstanceBuffer
  extends DataBuffer<GameInstance>
{
  public GameInstanceBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  public final GameInstance cr(int paramInt)
  {
    return new GameInstanceRef(DD, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.game.GameInstanceBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */