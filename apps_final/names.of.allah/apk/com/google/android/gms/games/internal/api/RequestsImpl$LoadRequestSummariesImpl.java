package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.request.Requests.LoadRequestSummariesResult;

abstract class RequestsImpl$LoadRequestSummariesImpl
  extends Games.BaseGamesApiMethodImpl<Requests.LoadRequestSummariesResult>
{
  public Requests.LoadRequestSummariesResult V(Status paramStatus)
  {
    return new RequestsImpl.LoadRequestSummariesImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.RequestsImpl.LoadRequestSummariesImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */