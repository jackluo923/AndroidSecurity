package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$RequestsUpdatedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<Requests.UpdateRequestsResult> OC;
  
  public GamesClientImpl$RequestsUpdatedBinderCallbacks(a.d<Requests.UpdateRequestsResult> paramd)
  {
    Object localObject;
    OC = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void F(DataHolder paramDataHolder)
  {
    OC.a(new GamesClientImpl.UpdateRequestsResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.RequestsUpdatedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */