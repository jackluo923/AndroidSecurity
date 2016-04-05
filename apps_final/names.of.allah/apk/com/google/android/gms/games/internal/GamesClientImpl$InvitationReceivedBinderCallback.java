package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;

final class GamesClientImpl$InvitationReceivedBinderCallback
  extends AbstractGamesCallbacks
{
  private final OnInvitationReceivedListener NL;
  
  GamesClientImpl$InvitationReceivedBinderCallback(GamesClientImpl paramGamesClientImpl, OnInvitationReceivedListener paramOnInvitationReceivedListener)
  {
    NL = paramOnInvitationReceivedListener;
  }
  
  public final void n(DataHolder paramDataHolder)
  {
    InvitationBuffer localInvitationBuffer = new InvitationBuffer(paramDataHolder);
    paramDataHolder = null;
    try
    {
      if (localInvitationBuffer.getCount() > 0) {
        paramDataHolder = (Invitation)((Invitation)localInvitationBuffer.get(0)).freeze();
      }
      localInvitationBuffer.close();
      if (paramDataHolder != null) {
        NB.a(new GamesClientImpl.InvitationReceivedCallback(NB, NL, paramDataHolder));
      }
      return;
    }
    finally
    {
      localInvitationBuffer.close();
    }
  }
  
  public final void onInvitationRemoved(String paramString)
  {
    NB.a(new GamesClientImpl.InvitationRemovedCallback(NB, NL, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.InvitationReceivedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */