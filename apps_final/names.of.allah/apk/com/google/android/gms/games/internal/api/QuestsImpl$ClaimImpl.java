package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.quest.Quests.ClaimMilestoneResult;

abstract class QuestsImpl$ClaimImpl
  extends Games.BaseGamesApiMethodImpl<Quests.ClaimMilestoneResult>
{
  public Quests.ClaimMilestoneResult T(Status paramStatus)
  {
    return new QuestsImpl.ClaimImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.QuestsImpl.ClaimImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */