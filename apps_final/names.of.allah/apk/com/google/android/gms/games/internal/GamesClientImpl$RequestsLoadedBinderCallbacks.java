package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.games.request.Requests.LoadRequestsResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$RequestsLoadedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<Requests.LoadRequestsResult> OB;
  
  public GamesClientImpl$RequestsLoadedBinderCallbacks(a.d<Requests.LoadRequestsResult> paramd)
  {
    Object localObject;
    OB = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void c(int paramInt, Bundle paramBundle)
  {
    paramBundle.setClassLoader(getClass().getClassLoader());
    Status localStatus = new Status(paramInt);
    OB.a(new GamesClientImpl.LoadRequestsResultImpl(localStatus, paramBundle));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.RequestsLoadedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */