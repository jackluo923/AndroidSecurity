package com.google.android.gms.games.quest;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface Quests$LoadQuestsResult
  extends Releasable, Result
{
  public abstract QuestBuffer getQuests();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.quest.Quests.LoadQuestsResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */