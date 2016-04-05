package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.request.Requests.LoadRequestsResult;

abstract class RequestsImpl$LoadRequestsImpl
  extends Games.BaseGamesApiMethodImpl<Requests.LoadRequestsResult>
{
  public Requests.LoadRequestsResult W(Status paramStatus)
  {
    return new RequestsImpl.LoadRequestsImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.RequestsImpl.LoadRequestsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */