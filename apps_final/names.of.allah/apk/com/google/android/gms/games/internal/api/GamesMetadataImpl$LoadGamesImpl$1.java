package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;

class GamesMetadataImpl$LoadGamesImpl$1
  implements GamesMetadata.LoadGamesResult
{
  GamesMetadataImpl$LoadGamesImpl$1(GamesMetadataImpl.LoadGamesImpl paramLoadGamesImpl, Status paramStatus) {}
  
  public GameBuffer getGames()
  {
    return new GameBuffer(DataHolder.af(14));
  }
  
  public Status getStatus()
  {
    return yG;
  }
  
  public void release() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.GamesMetadataImpl.LoadGamesImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */