package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$InvitationsLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Invitations.LoadInvitationsResult> yO;
  
  GamesClientImpl$InvitationsLoadedBinderCallback(a.d<Invitations.LoadInvitationsResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void m(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LoadInvitationsResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.InvitationsLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */