package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.quest.Quests.LoadQuestsResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$QuestsLoadedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<Quests.LoadQuestsResult> Os;
  
  public GamesClientImpl$QuestsLoadedBinderCallbacks(a.d<Quests.LoadQuestsResult> paramd)
  {
    Object localObject;
    Os = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void O(DataHolder paramDataHolder)
  {
    Os.a(new GamesClientImpl.LoadQuestsResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.QuestsLoadedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */