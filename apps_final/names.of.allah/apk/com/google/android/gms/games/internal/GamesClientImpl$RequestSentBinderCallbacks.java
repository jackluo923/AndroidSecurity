package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.request.Requests.SendRequestResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$RequestSentBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<Requests.SendRequestResult> Oz;
  
  public GamesClientImpl$RequestSentBinderCallbacks(a.d<Requests.SendRequestResult> paramd)
  {
    Object localObject;
    Oz = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void G(DataHolder paramDataHolder)
  {
    Oz.a(new GamesClientImpl.SendRequestResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.RequestSentBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */