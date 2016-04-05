package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.quest.Quests.AcceptQuestResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$QuestAcceptedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<Quests.AcceptQuestResult> Oo;
  
  public GamesClientImpl$QuestAcceptedBinderCallbacks(a.d<Quests.AcceptQuestResult> paramd)
  {
    Object localObject;
    Oo = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void L(DataHolder paramDataHolder)
  {
    Oo.a(new GamesClientImpl.AcceptQuestResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.QuestAcceptedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */