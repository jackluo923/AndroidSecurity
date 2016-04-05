package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$LeaderboardScoresLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Leaderboards.LoadScoresResult> yO;
  
  GamesClientImpl$LeaderboardScoresLoadedBinderCallback(a.d<Leaderboards.LoadScoresResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void a(DataHolder paramDataHolder1, DataHolder paramDataHolder2)
  {
    yO.a(new GamesClientImpl.LoadScoresResultImpl(paramDataHolder1, paramDataHolder2));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LeaderboardScoresLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */