package com.google.android.gms.games.event;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface Events$LoadEventsResult
  extends Releasable, Result
{
  public abstract EventBuffer getEvents();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.event.Events.LoadEventsResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */