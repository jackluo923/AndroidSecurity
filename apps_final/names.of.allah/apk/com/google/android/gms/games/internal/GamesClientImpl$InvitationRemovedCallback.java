package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.b;

final class GamesClientImpl$InvitationRemovedCallback
  extends hc<IGamesService>.b<OnInvitationReceivedListener>
{
  private final String NN;
  
  GamesClientImpl$InvitationRemovedCallback(GamesClientImpl paramGamesClientImpl, OnInvitationReceivedListener paramOnInvitationReceivedListener, String paramString)
  {
    super(paramGamesClientImpl, paramOnInvitationReceivedListener);
    NN = paramString;
  }
  
  protected final void b(OnInvitationReceivedListener paramOnInvitationReceivedListener)
  {
    paramOnInvitationReceivedListener.onInvitationRemoved(NN);
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.InvitationRemovedCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */