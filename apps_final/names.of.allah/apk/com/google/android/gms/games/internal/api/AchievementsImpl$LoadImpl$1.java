package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;

class AchievementsImpl$LoadImpl$1
  implements Achievements.LoadAchievementsResult
{
  AchievementsImpl$LoadImpl$1(AchievementsImpl.LoadImpl paramLoadImpl, Status paramStatus) {}
  
  public AchievementBuffer getAchievements()
  {
    return new AchievementBuffer(DataHolder.af(14));
  }
  
  public Status getStatus()
  {
    return yG;
  }
  
  public void release() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.AchievementsImpl.LoadImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */