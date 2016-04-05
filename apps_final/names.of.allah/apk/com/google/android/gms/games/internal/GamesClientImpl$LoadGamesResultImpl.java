package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;

final class GamesClientImpl$LoadGamesResultImpl
  extends b
  implements GamesMetadata.LoadGamesResult
{
  private final GameBuffer NU;
  
  GamesClientImpl$LoadGamesResultImpl(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    NU = new GameBuffer(paramDataHolder);
  }
  
  public final GameBuffer getGames()
  {
    return NU;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LoadGamesResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */