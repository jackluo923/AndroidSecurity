package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Leaderboards.LoadPlayerScoreResult> yO;
  
  GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback(a.d<Leaderboards.LoadPlayerScoreResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void E(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LoadPlayerScoreResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.PlayerLeaderboardScoreLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */