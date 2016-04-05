package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$NotifyAclUpdatedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Status> yO;
  
  GamesClientImpl$NotifyAclUpdatedBinderCallback(a.d<Status> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void cd(int paramInt)
  {
    yO.a(new Status(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.NotifyAclUpdatedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */