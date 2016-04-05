package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.request.Requests.LoadRequestSummariesResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$RequestSummariesLoadedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<Requests.LoadRequestSummariesResult> OA;
  
  public GamesClientImpl$RequestSummariesLoadedBinderCallbacks(a.d<Requests.LoadRequestSummariesResult> paramd)
  {
    Object localObject;
    OA = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void H(DataHolder paramDataHolder)
  {
    OA.a(new GamesClientImpl.LoadRequestSummariesResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.RequestSummariesLoadedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */