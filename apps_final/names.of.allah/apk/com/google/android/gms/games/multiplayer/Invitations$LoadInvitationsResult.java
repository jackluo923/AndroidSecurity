package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface Invitations$LoadInvitationsResult
  extends Releasable, Result
{
  public abstract InvitationBuffer getInvitations();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */