package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.games.quest.Quests;
import com.google.android.gms.games.quest.Quests.AcceptQuestResult;
import com.google.android.gms.games.quest.Quests.ClaimMilestoneResult;
import com.google.android.gms.games.quest.Quests.LoadQuestsResult;

public final class QuestsImpl
  implements Quests
{
  public final PendingResult<Quests.AcceptQuestResult> accept(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new QuestsImpl.1(this, paramString));
  }
  
  public final PendingResult<Quests.ClaimMilestoneResult> claim(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2)
  {
    return paramGoogleApiClient.b(new QuestsImpl.2(this, paramString1, paramString2));
  }
  
  public final Intent getQuestIntent(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return Games.c(paramGoogleApiClient).aU(paramString);
  }
  
  public final Intent getQuestsIntent(GoogleApiClient paramGoogleApiClient, int[] paramArrayOfInt)
  {
    return Games.c(paramGoogleApiClient).a(paramArrayOfInt);
  }
  
  public final PendingResult<Quests.LoadQuestsResult> load(GoogleApiClient paramGoogleApiClient, int[] paramArrayOfInt, int paramInt, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new QuestsImpl.3(this, paramArrayOfInt, paramInt, paramBoolean));
  }
  
  public final PendingResult<Quests.LoadQuestsResult> loadByIds(GoogleApiClient paramGoogleApiClient, boolean paramBoolean, String... paramVarArgs)
  {
    return paramGoogleApiClient.a(new QuestsImpl.4(this, paramBoolean, paramVarArgs));
  }
  
  public final void registerQuestUpdateListener(GoogleApiClient paramGoogleApiClient, QuestUpdateListener paramQuestUpdateListener)
  {
    Games.c(paramGoogleApiClient).a(paramQuestUpdateListener);
  }
  
  public final void unregisterQuestUpdateListener(GoogleApiClient paramGoogleApiClient)
  {
    Games.c(paramGoogleApiClient).he();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.QuestsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */