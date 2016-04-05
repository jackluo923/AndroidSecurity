package com.google.android.gms.games.internal.request;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.hn;
import java.util.HashMap;
import java.util.Set;

public final class RequestUpdateOutcomes
{
  private static final String[] Sk = { "requestId", "outcome" };
  private final int CQ;
  private final HashMap<String, Integer> Sl;
  
  private RequestUpdateOutcomes(int paramInt, HashMap<String, Integer> paramHashMap)
  {
    CQ = paramInt;
    Sl = paramHashMap;
  }
  
  public static RequestUpdateOutcomes U(DataHolder paramDataHolder)
  {
    RequestUpdateOutcomes.Builder localBuilder = new RequestUpdateOutcomes.Builder();
    localBuilder.cw(paramDataHolder.getStatusCode());
    int j = paramDataHolder.getCount();
    int i = 0;
    while (i < j)
    {
      int k = paramDataHolder.ae(i);
      localBuilder.v(paramDataHolder.c("requestId", i, k), paramDataHolder.b("outcome", i, k));
      i += 1;
    }
    return localBuilder.it();
  }
  
  public final Set<String> getRequestIds()
  {
    return Sl.keySet();
  }
  
  public final int getRequestOutcome(String paramString)
  {
    hn.b(Sl.containsKey(paramString), "Request " + paramString + " was not part of the update operation!");
    return ((Integer)Sl.get(paramString)).intValue();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.request.RequestUpdateOutcomes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */