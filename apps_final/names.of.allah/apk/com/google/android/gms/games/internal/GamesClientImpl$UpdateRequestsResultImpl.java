package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.request.RequestUpdateOutcomes;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;
import java.util.Set;

final class GamesClientImpl$UpdateRequestsResultImpl
  extends b
  implements Requests.UpdateRequestsResult
{
  private final RequestUpdateOutcomes OR;
  
  GamesClientImpl$UpdateRequestsResultImpl(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    OR = RequestUpdateOutcomes.U(paramDataHolder);
  }
  
  public final Set<String> getRequestIds()
  {
    return OR.getRequestIds();
  }
  
  public final int getRequestOutcome(String paramString)
  {
    return OR.getRequestOutcome(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.UpdateRequestsResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */