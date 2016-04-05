package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.Players.LoadPlayersResult;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class PlayersImpl
  implements Players
{
  public final Player getCurrentPlayer(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).gW();
  }
  
  public final String getCurrentPlayerId(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).gV();
  }
  
  public final Intent getPlayerSearchIntent(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).hg();
  }
  
  public final PendingResult<Players.LoadPlayersResult> loadConnectedPlayers(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new PlayersImpl.9(this, paramBoolean));
  }
  
  public final PendingResult<Players.LoadPlayersResult> loadInvitablePlayers(GoogleApiClient paramGoogleApiClient, int paramInt, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new PlayersImpl.3(this, paramInt, paramBoolean));
  }
  
  public final PendingResult<Players.LoadPlayersResult> loadMoreInvitablePlayers(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    return paramGoogleApiClient.a(new PlayersImpl.4(this, paramInt));
  }
  
  public final PendingResult<Players.LoadPlayersResult> loadMoreRecentlyPlayedWithPlayers(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    return paramGoogleApiClient.a(new PlayersImpl.6(this, paramInt));
  }
  
  public final PendingResult<Players.LoadPlayersResult> loadPlayer(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.a(new PlayersImpl.1(this, paramString));
  }
  
  public final PendingResult<Players.LoadPlayersResult> loadRecentlyPlayedWithPlayers(GoogleApiClient paramGoogleApiClient, int paramInt, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new PlayersImpl.5(this, paramInt, paramBoolean));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.PlayersImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */