package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult;
import com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult;

public final class LeaderboardsImpl
  implements Leaderboards
{
  public final Intent getAllLeaderboardsIntent(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).gY();
  }
  
  public final Intent getLeaderboardIntent(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return Games.c(paramGoogleApiClient).aR(paramString);
  }
  
  public final PendingResult<Leaderboards.LoadPlayerScoreResult> loadCurrentPlayerLeaderboardScore(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt1, int paramInt2)
  {
    return paramGoogleApiClient.a(new LeaderboardsImpl.3(this, paramString, paramInt1, paramInt2));
  }
  
  public final PendingResult<Leaderboards.LeaderboardMetadataResult> loadLeaderboardMetadata(GoogleApiClient paramGoogleApiClient, String paramString, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new LeaderboardsImpl.2(this, paramString, paramBoolean));
  }
  
  public final PendingResult<Leaderboards.LeaderboardMetadataResult> loadLeaderboardMetadata(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new LeaderboardsImpl.1(this, paramBoolean));
  }
  
  public final PendingResult<Leaderboards.LoadScoresResult> loadMoreScores(GoogleApiClient paramGoogleApiClient, LeaderboardScoreBuffer paramLeaderboardScoreBuffer, int paramInt1, int paramInt2)
  {
    return paramGoogleApiClient.a(new LeaderboardsImpl.6(this, paramLeaderboardScoreBuffer, paramInt1, paramInt2));
  }
  
  public final PendingResult<Leaderboards.LoadScoresResult> loadPlayerCenteredScores(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    return loadPlayerCenteredScores(paramGoogleApiClient, paramString, paramInt1, paramInt2, paramInt3, false);
  }
  
  public final PendingResult<Leaderboards.LoadScoresResult> loadPlayerCenteredScores(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new LeaderboardsImpl.5(this, paramString, paramInt1, paramInt2, paramInt3, paramBoolean));
  }
  
  public final PendingResult<Leaderboards.LoadScoresResult> loadTopScores(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    return loadTopScores(paramGoogleApiClient, paramString, paramInt1, paramInt2, paramInt3, false);
  }
  
  public final PendingResult<Leaderboards.LoadScoresResult> loadTopScores(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new LeaderboardsImpl.4(this, paramString, paramInt1, paramInt2, paramInt3, paramBoolean));
  }
  
  public final void submitScore(GoogleApiClient paramGoogleApiClient, String paramString, long paramLong)
  {
    submitScore(paramGoogleApiClient, paramString, paramLong, null);
  }
  
  public final void submitScore(GoogleApiClient paramGoogleApiClient, String paramString1, long paramLong, String paramString2)
  {
    Games.c(paramGoogleApiClient).a(null, paramString1, paramLong, paramString2);
  }
  
  public final PendingResult<Leaderboards.SubmitScoreResult> submitScoreImmediate(GoogleApiClient paramGoogleApiClient, String paramString, long paramLong)
  {
    return submitScoreImmediate(paramGoogleApiClient, paramString, paramLong, null);
  }
  
  public final PendingResult<Leaderboards.SubmitScoreResult> submitScoreImmediate(GoogleApiClient paramGoogleApiClient, String paramString1, long paramLong, String paramString2)
  {
    return paramGoogleApiClient.b(new LeaderboardsImpl.7(this, paramString1, paramLong, paramString2));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.LeaderboardsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */