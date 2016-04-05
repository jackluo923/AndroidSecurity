package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;

abstract class AchievementsImpl$UpdateImpl
  extends Games.BaseGamesApiMethodImpl<Achievements.UpdateAchievementResult>
{
  private final String xD;
  
  public AchievementsImpl$UpdateImpl(String paramString)
  {
    xD = paramString;
  }
  
  public Achievements.UpdateAchievementResult w(Status paramStatus)
  {
    return new AchievementsImpl.UpdateImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.AchievementsImpl.UpdateImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */