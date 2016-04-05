package com.google.android.gms.games.achievement;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface Achievements$LoadAchievementsResult
  extends Releasable, Result
{
  public abstract AchievementBuffer getAchievements();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */