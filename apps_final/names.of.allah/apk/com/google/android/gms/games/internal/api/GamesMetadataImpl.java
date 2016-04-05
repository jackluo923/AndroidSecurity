package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class GamesMetadataImpl
  implements GamesMetadata
{
  public final Game getCurrentGame(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).gX();
  }
  
  public final PendingResult<GamesMetadata.LoadGamesResult> loadGame(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new GamesMetadataImpl.1(this));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.GamesMetadataImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */