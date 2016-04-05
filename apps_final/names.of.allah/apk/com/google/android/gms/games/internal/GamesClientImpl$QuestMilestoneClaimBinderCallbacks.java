package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.quest.Quests.ClaimMilestoneResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$QuestMilestoneClaimBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<Quests.ClaimMilestoneResult> Op;
  private final String Oq;
  
  public GamesClientImpl$QuestMilestoneClaimBinderCallbacks(a.d<Quests.ClaimMilestoneResult> paramd, String paramString)
  {
    Op = ((a.d)hn.b(paramString, "Holder must not be null"));
    Object localObject;
    Oq = ((String)hn.b(localObject, "MilestoneId must not be null"));
  }
  
  public final void K(DataHolder paramDataHolder)
  {
    Op.a(new GamesClientImpl.ClaimMilestoneResultImpl(paramDataHolder, Oq));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.QuestMilestoneClaimBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */