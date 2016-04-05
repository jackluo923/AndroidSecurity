package com.google.android.gms.games.multiplayer;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

public abstract interface Invitations
{
  public abstract Intent getInvitationInboxIntent(GoogleApiClient paramGoogleApiClient);
  
  public abstract PendingResult<Invitations.LoadInvitationsResult> loadInvitations(GoogleApiClient paramGoogleApiClient);
  
  public abstract PendingResult<Invitations.LoadInvitationsResult> loadInvitations(GoogleApiClient paramGoogleApiClient, int paramInt);
  
  public abstract void registerInvitationListener(GoogleApiClient paramGoogleApiClient, OnInvitationReceivedListener paramOnInvitationReceivedListener);
  
  public abstract void unregisterInvitationListener(GoogleApiClient paramGoogleApiClient);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.Invitations
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */