package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$LeaderboardsLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Leaderboards.LeaderboardMetadataResult> yO;
  
  GamesClientImpl$LeaderboardsLoadedBinderCallback(a.d<Leaderboards.LeaderboardMetadataResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void e(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LeaderboardMetadataResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LeaderboardsLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */