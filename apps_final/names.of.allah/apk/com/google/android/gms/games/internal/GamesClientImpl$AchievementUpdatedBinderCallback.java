package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$AchievementUpdatedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Achievements.UpdateAchievementResult> yO;
  
  GamesClientImpl$AchievementUpdatedBinderCallback(a.d<Achievements.UpdateAchievementResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void e(int paramInt, String paramString)
  {
    yO.a(new GamesClientImpl.UpdateAchievementResultImpl(paramInt, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.AchievementUpdatedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */