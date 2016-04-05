package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.GamesMetadata.LoadExtendedGamesResult;

abstract class GamesMetadataImpl$LoadExtendedGamesImpl
  extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadExtendedGamesResult>
{
  public GamesMetadata.LoadExtendedGamesResult B(Status paramStatus)
  {
    return new GamesMetadataImpl.LoadExtendedGamesImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.GamesMetadataImpl.LoadExtendedGamesImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */