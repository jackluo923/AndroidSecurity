package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.games.Players.LoadXpForGameCategoriesResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Players.LoadXpForGameCategoriesResult> yO;
  
  GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback(a.d<Players.LoadXpForGameCategoriesResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void e(int paramInt, Bundle paramBundle)
  {
    paramBundle.setClassLoader(getClass().getClassLoader());
    Status localStatus = new Status(paramInt);
    yO.a(new GamesClientImpl.LoadXpForGameCategoriesResultImpl(localStatus, paramBundle));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.PlayerXpForGameCategoriesLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */