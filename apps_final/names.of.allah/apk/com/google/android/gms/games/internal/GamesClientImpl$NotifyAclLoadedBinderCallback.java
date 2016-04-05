package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.game.Acls.LoadAclResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$NotifyAclLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Acls.LoadAclResult> yO;
  
  GamesClientImpl$NotifyAclLoadedBinderCallback(a.d<Acls.LoadAclResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void C(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LoadAclResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.NotifyAclLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */