package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;

abstract class GamesMetadataImpl$LoadGamesImpl
  extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGamesResult>
{
  public GamesMetadata.LoadGamesResult E(Status paramStatus)
  {
    return new GamesMetadataImpl.LoadGamesImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.GamesMetadataImpl.LoadGamesImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */