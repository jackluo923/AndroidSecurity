package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;

abstract class InvitationsImpl$LoadInvitationsImpl
  extends Games.BaseGamesApiMethodImpl<Invitations.LoadInvitationsResult>
{
  public Invitations.LoadInvitationsResult F(Status paramStatus)
  {
    return new InvitationsImpl.LoadInvitationsImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.InvitationsImpl.LoadInvitationsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */