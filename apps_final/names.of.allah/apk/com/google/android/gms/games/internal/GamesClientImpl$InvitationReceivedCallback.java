package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.b;

final class GamesClientImpl$InvitationReceivedCallback
  extends hc<IGamesService>.b<OnInvitationReceivedListener>
{
  private final Invitation NM;
  
  GamesClientImpl$InvitationReceivedCallback(GamesClientImpl paramGamesClientImpl, OnInvitationReceivedListener paramOnInvitationReceivedListener, Invitation paramInvitation)
  {
    super(paramGamesClientImpl, paramOnInvitationReceivedListener);
    NM = paramInvitation;
  }
  
  protected final void b(OnInvitationReceivedListener paramOnInvitationReceivedListener)
  {
    paramOnInvitationReceivedListener.onInvitationReceived(NM);
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.InvitationReceivedCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */