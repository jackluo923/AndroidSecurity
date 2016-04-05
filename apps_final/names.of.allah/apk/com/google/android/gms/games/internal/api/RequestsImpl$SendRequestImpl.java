package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.request.Requests.SendRequestResult;

abstract class RequestsImpl$SendRequestImpl
  extends Games.BaseGamesApiMethodImpl<Requests.SendRequestResult>
{
  public Requests.SendRequestResult X(Status paramStatus)
  {
    return new RequestsImpl.SendRequestImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.RequestsImpl.SendRequestImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */