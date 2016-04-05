package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.DataBuffer;

public final class GameBadgeBuffer
  extends DataBuffer<GameBadge>
{
  public final GameBadge cp(int paramInt)
  {
    return new GameBadgeRef(DD, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.game.GameBadgeBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */