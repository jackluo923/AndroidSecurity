package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;

final class GamesClientImpl$UpdateAchievementResultImpl
  implements Achievements.UpdateAchievementResult
{
  private final String OQ;
  private final Status yw;
  
  GamesClientImpl$UpdateAchievementResultImpl(int paramInt, String paramString)
  {
    yw = new Status(paramInt);
    OQ = paramString;
  }
  
  public final String getAchievementId()
  {
    return OQ;
  }
  
  public final Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.UpdateAchievementResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */