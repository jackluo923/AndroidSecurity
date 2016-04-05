package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.event.Events.LoadEventsResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$EventsLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Events.LoadEventsResult> yO;
  
  GamesClientImpl$EventsLoadedBinderCallback(a.d<Events.LoadEventsResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void d(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LoadEventResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.EventsLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */