package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;

public final class InvitationsImpl
  implements Invitations
{
  public final Intent getInvitationInboxIntent(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).hb();
  }
  
  public final PendingResult<Invitations.LoadInvitationsResult> loadInvitations(GoogleApiClient paramGoogleApiClient)
  {
    return loadInvitations(paramGoogleApiClient, 0);
  }
  
  public final PendingResult<Invitations.LoadInvitationsResult> loadInvitations(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    return paramGoogleApiClient.a(new InvitationsImpl.1(this, paramInt));
  }
  
  public final void registerInvitationListener(GoogleApiClient paramGoogleApiClient, OnInvitationReceivedListener paramOnInvitationReceivedListener)
  {
    Games.c(paramGoogleApiClient).a(paramOnInvitationReceivedListener);
  }
  
  public final void unregisterInvitationListener(GoogleApiClient paramGoogleApiClient)
  {
    Games.c(paramGoogleApiClient).hc();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.InvitationsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */