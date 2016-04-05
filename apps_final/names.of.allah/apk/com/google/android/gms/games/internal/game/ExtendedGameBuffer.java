package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;

public final class ExtendedGameBuffer
  extends g<ExtendedGame>
{
  public ExtendedGameBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  protected final ExtendedGame e(int paramInt1, int paramInt2)
  {
    return new ExtendedGameRef(DD, paramInt1, paramInt2);
  }
  
  protected final String eU()
  {
    return "external_game_id";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.game.ExtendedGameBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */