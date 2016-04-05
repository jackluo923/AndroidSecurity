package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GamesMetadata.LoadExtendedGamesResult;
import com.google.android.gms.games.internal.game.ExtendedGameBuffer;

final class GamesClientImpl$LoadExtendedGamesResultImpl
  extends b
  implements GamesMetadata.LoadExtendedGamesResult
{
  private final ExtendedGameBuffer NS;
  
  GamesClientImpl$LoadExtendedGamesResultImpl(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    NS = new ExtendedGameBuffer(paramDataHolder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LoadExtendedGamesResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */