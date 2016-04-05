package com.google.android.gms.games;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

public abstract interface GamesMetadata
{
  public abstract Game getCurrentGame(GoogleApiClient paramGoogleApiClient);
  
  public abstract PendingResult<GamesMetadata.LoadGamesResult> loadGame(GoogleApiClient paramGoogleApiClient);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.GamesMetadata
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */