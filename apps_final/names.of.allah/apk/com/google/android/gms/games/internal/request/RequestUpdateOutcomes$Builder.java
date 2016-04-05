package com.google.android.gms.games.internal.request;

import com.google.android.gms.games.internal.constants.RequestUpdateResultOutcome;
import java.util.HashMap;

public final class RequestUpdateOutcomes$Builder
{
  private int CQ = 0;
  private HashMap<String, Integer> Sl = new HashMap();
  
  public final Builder cw(int paramInt)
  {
    CQ = paramInt;
    return this;
  }
  
  public final RequestUpdateOutcomes it()
  {
    return new RequestUpdateOutcomes(CQ, Sl, null);
  }
  
  public final Builder v(String paramString, int paramInt)
  {
    if (RequestUpdateResultOutcome.isValid(paramInt)) {
      Sl.put(paramString, Integer.valueOf(paramInt));
    }
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.request.RequestUpdateOutcomes.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */