package com.google.android.gms.games.request;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import java.util.Set;

public abstract interface Requests$UpdateRequestsResult
  extends Releasable, Result
{
  public abstract Set<String> getRequestIds();
  
  public abstract int getRequestOutcome(String paramString);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.request.Requests.UpdateRequestsResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */