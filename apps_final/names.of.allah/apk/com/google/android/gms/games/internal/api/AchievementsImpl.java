package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class AchievementsImpl
  implements Achievements
{
  public final Intent getAchievementsIntent(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).gZ();
  }
  
  public final void increment(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt)
  {
    paramGoogleApiClient.b(new AchievementsImpl.6(this, paramString, paramString, paramInt));
  }
  
  public final PendingResult<Achievements.UpdateAchievementResult> incrementImmediate(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt)
  {
    return paramGoogleApiClient.b(new AchievementsImpl.7(this, paramString, paramString, paramInt));
  }
  
  public final PendingResult<Achievements.LoadAchievementsResult> load(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new AchievementsImpl.1(this, paramBoolean));
  }
  
  public final void reveal(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    paramGoogleApiClient.b(new AchievementsImpl.2(this, paramString, paramString));
  }
  
  public final PendingResult<Achievements.UpdateAchievementResult> revealImmediate(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new AchievementsImpl.3(this, paramString, paramString));
  }
  
  public final void setSteps(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt)
  {
    paramGoogleApiClient.b(new AchievementsImpl.8(this, paramString, paramString, paramInt));
  }
  
  public final PendingResult<Achievements.UpdateAchievementResult> setStepsImmediate(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt)
  {
    return paramGoogleApiClient.b(new AchievementsImpl.9(this, paramString, paramString, paramInt));
  }
  
  public final void unlock(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    paramGoogleApiClient.b(new AchievementsImpl.4(this, paramString, paramString));
  }
  
  public final PendingResult<Achievements.UpdateAchievementResult> unlockImmediate(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new AchievementsImpl.5(this, paramString, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.AchievementsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */