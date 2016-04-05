package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$SubmitScoreBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<Leaderboards.SubmitScoreResult> yO;
  
  public GamesClientImpl$SubmitScoreBinderCallbacks(a.d<Leaderboards.SubmitScoreResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void f(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.SubmitScoreResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.SubmitScoreBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */