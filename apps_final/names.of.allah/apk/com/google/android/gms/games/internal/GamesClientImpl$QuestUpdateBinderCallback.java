package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestBuffer;
import com.google.android.gms.games.quest.QuestUpdateListener;

final class GamesClientImpl$QuestUpdateBinderCallback
  extends AbstractGamesCallbacks
{
  private final QuestUpdateListener Or;
  
  GamesClientImpl$QuestUpdateBinderCallback(GamesClientImpl paramGamesClientImpl, QuestUpdateListener paramQuestUpdateListener)
  {
    Or = paramQuestUpdateListener;
  }
  
  private Quest R(DataHolder paramDataHolder)
  {
    QuestBuffer localQuestBuffer = new QuestBuffer(paramDataHolder);
    paramDataHolder = null;
    try
    {
      if (localQuestBuffer.getCount() > 0) {
        paramDataHolder = (Quest)((Quest)localQuestBuffer.get(0)).freeze();
      }
      return paramDataHolder;
    }
    finally
    {
      localQuestBuffer.close();
    }
  }
  
  public final void M(DataHolder paramDataHolder)
  {
    paramDataHolder = R(paramDataHolder);
    if (paramDataHolder != null) {
      NB.a(new GamesClientImpl.QuestCompletedCallback(NB, Or, paramDataHolder));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.QuestUpdateBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */