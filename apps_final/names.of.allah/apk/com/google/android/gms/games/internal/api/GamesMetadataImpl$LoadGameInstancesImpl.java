package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.GamesMetadata.LoadGameInstancesResult;

abstract class GamesMetadataImpl$LoadGameInstancesImpl
  extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGameInstancesResult>
{
  public GamesMetadata.LoadGameInstancesResult C(Status paramStatus)
  {
    return new GamesMetadataImpl.LoadGameInstancesImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.GamesMetadataImpl.LoadGameInstancesImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */