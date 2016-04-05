package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$AchievementsLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Achievements.LoadAchievementsResult> yO;
  
  GamesClientImpl$AchievementsLoadedBinderCallback(a.d<Achievements.LoadAchievementsResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void c(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LoadAchievementsResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.AchievementsLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */