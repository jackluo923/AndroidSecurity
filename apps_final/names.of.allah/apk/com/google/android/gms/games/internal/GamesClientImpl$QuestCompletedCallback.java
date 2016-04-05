package com.google.android.gms.games.internal;

import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.b;

final class GamesClientImpl$QuestCompletedCallback
  extends hc<IGamesService>.b<QuestUpdateListener>
{
  private final Quest ND;
  
  GamesClientImpl$QuestCompletedCallback(GamesClientImpl paramGamesClientImpl, QuestUpdateListener paramQuestUpdateListener, Quest paramQuest)
  {
    super(paramGamesClientImpl, paramQuestUpdateListener);
    ND = paramQuest;
  }
  
  protected final void b(QuestUpdateListener paramQuestUpdateListener)
  {
    paramQuestUpdateListener.onQuestCompleted(ND);
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.QuestCompletedCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */