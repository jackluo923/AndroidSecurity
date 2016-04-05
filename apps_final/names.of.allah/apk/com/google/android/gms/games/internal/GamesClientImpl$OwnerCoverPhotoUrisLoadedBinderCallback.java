package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.games.Players.LoadOwnerCoverPhotoUrisResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$OwnerCoverPhotoUrisLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Players.LoadOwnerCoverPhotoUrisResult> yO;
  
  GamesClientImpl$OwnerCoverPhotoUrisLoadedBinderCallback(a.d<Players.LoadOwnerCoverPhotoUrisResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void d(int paramInt, Bundle paramBundle)
  {
    paramBundle.setClassLoader(getClass().getClassLoader());
    yO.a(new GamesClientImpl.LoadOwnerCoverPhotoUrisResultImpl(paramInt, paramBundle));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.OwnerCoverPhotoUrisLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */