package com.google.android.gms.games.request;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface Requests$LoadRequestsResult
  extends Releasable, Result
{
  public abstract GameRequestBuffer getRequests(int paramInt);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.request.Requests.LoadRequestsResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */