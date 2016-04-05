package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;
import java.util.Set;

class RequestsImpl$UpdateRequestsImpl$1
  implements Requests.UpdateRequestsResult
{
  RequestsImpl$UpdateRequestsImpl$1(RequestsImpl.UpdateRequestsImpl paramUpdateRequestsImpl, Status paramStatus) {}
  
  public Set<String> getRequestIds()
  {
    return null;
  }
  
  public int getRequestOutcome(String paramString)
  {
    throw new IllegalArgumentException("Unknown request ID " + paramString);
  }
  
  public Status getStatus()
  {
    return yG;
  }
  
  public void release() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.RequestsImpl.UpdateRequestsImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */