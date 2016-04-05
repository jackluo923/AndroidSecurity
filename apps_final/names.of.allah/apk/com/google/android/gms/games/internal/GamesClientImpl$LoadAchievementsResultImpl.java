package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;

final class GamesClientImpl$LoadAchievementsResultImpl
  extends b
  implements Achievements.LoadAchievementsResult
{
  private final AchievementBuffer NQ;
  
  GamesClientImpl$LoadAchievementsResultImpl(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    NQ = new AchievementBuffer(paramDataHolder);
  }
  
  public final AchievementBuffer getAchievements()
  {
    return NQ;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LoadAchievementsResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */