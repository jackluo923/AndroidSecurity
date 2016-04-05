package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.quest.QuestBuffer;
import com.google.android.gms.games.quest.Quests.LoadQuestsResult;

final class GamesClientImpl$LoadQuestsResultImpl
  extends b
  implements Quests.LoadQuestsResult
{
  private final DataHolder DD;
  
  GamesClientImpl$LoadQuestsResultImpl(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    DD = paramDataHolder;
  }
  
  public final QuestBuffer getQuests()
  {
    return new QuestBuffer(DD);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LoadQuestsResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */