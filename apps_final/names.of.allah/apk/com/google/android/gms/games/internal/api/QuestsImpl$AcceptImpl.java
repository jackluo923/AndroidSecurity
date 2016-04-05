package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.quest.Quests.AcceptQuestResult;

abstract class QuestsImpl$AcceptImpl
  extends Games.BaseGamesApiMethodImpl<Quests.AcceptQuestResult>
{
  public Quests.AcceptQuestResult S(Status paramStatus)
  {
    return new QuestsImpl.AcceptImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.QuestsImpl.AcceptImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */