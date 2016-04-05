package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;

class InvitationsImpl$LoadInvitationsImpl$1
  implements Invitations.LoadInvitationsResult
{
  InvitationsImpl$LoadInvitationsImpl$1(InvitationsImpl.LoadInvitationsImpl paramLoadInvitationsImpl, Status paramStatus) {}
  
  public InvitationBuffer getInvitations()
  {
    return new InvitationBuffer(DataHolder.af(14));
  }
  
  public Status getStatus()
  {
    return yG;
  }
  
  public void release() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.InvitationsImpl.LoadInvitationsImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */