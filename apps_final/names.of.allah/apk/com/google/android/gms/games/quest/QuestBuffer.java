package com.google.android.gms.games.quest;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;

public final class QuestBuffer
  extends g<Quest>
{
  public QuestBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  protected final String eU()
  {
    return "external_quest_id";
  }
  
  protected final Quest j(int paramInt1, int paramInt2)
  {
    return new QuestRef(DD, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.quest.QuestBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */