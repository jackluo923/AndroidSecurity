package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;

abstract class EventsImpl$UpdateImpl
  extends Games.BaseGamesApiMethodImpl<Result>
{
  public Result c(Status paramStatus)
  {
    return new EventsImpl.UpdateImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.EventsImpl.UpdateImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */