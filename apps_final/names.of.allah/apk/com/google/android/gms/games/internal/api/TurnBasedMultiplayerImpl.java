package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.InitiateMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LeaveMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult;
import java.util.List;

public final class TurnBasedMultiplayerImpl
  implements TurnBasedMultiplayer
{
  public final PendingResult<TurnBasedMultiplayer.InitiateMatchResult> acceptInvitation(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new TurnBasedMultiplayerImpl.3(this, paramString));
  }
  
  public final PendingResult<TurnBasedMultiplayer.CancelMatchResult> cancelMatch(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new TurnBasedMultiplayerImpl.8(this, paramString, paramString));
  }
  
  public final PendingResult<TurnBasedMultiplayer.InitiateMatchResult> createMatch(GoogleApiClient paramGoogleApiClient, TurnBasedMatchConfig paramTurnBasedMatchConfig)
  {
    return paramGoogleApiClient.b(new TurnBasedMultiplayerImpl.1(this, paramTurnBasedMatchConfig));
  }
  
  public final void declineInvitation(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    Games.c(paramGoogleApiClient).n(paramString, 1);
  }
  
  public final void dismissInvitation(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    Games.c(paramGoogleApiClient).m(paramString, 1);
  }
  
  public final void dismissMatch(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    Games.c(paramGoogleApiClient).aS(paramString);
  }
  
  public final PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return finishMatch(paramGoogleApiClient, paramString, null, null);
  }
  
  public final PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient paramGoogleApiClient, String paramString, byte[] paramArrayOfByte, List<ParticipantResult> paramList)
  {
    if (paramList == null) {}
    for (paramList = null;; paramList = (ParticipantResult[])paramList.toArray(new ParticipantResult[paramList.size()])) {
      return finishMatch(paramGoogleApiClient, paramString, paramArrayOfByte, paramList);
    }
  }
  
  public final PendingResult<TurnBasedMultiplayer.UpdateMatchResult> finishMatch(GoogleApiClient paramGoogleApiClient, String paramString, byte[] paramArrayOfByte, ParticipantResult... paramVarArgs)
  {
    return paramGoogleApiClient.b(new TurnBasedMultiplayerImpl.5(this, paramString, paramArrayOfByte, paramVarArgs));
  }
  
  public final Intent getInboxIntent(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).ha();
  }
  
  public final int getMaxMatchDataSize(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).hk();
  }
  
  public final Intent getSelectOpponentsIntent(GoogleApiClient paramGoogleApiClient, int paramInt1, int paramInt2)
  {
    return Games.c(paramGoogleApiClient).a(paramInt1, paramInt2, true);
  }
  
  public final Intent getSelectOpponentsIntent(GoogleApiClient paramGoogleApiClient, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return Games.c(paramGoogleApiClient).a(paramInt1, paramInt2, paramBoolean);
  }
  
  public final PendingResult<TurnBasedMultiplayer.LeaveMatchResult> leaveMatch(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new TurnBasedMultiplayerImpl.6(this, paramString));
  }
  
  public final PendingResult<TurnBasedMultiplayer.LeaveMatchResult> leaveMatchDuringTurn(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2)
  {
    return paramGoogleApiClient.b(new TurnBasedMultiplayerImpl.7(this, paramString1, paramString2));
  }
  
  public final PendingResult<TurnBasedMultiplayer.LoadMatchResult> loadMatch(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.a(new TurnBasedMultiplayerImpl.10(this, paramString));
  }
  
  public final PendingResult<TurnBasedMultiplayer.LoadMatchesResult> loadMatchesByStatus(GoogleApiClient paramGoogleApiClient, int paramInt, int[] paramArrayOfInt)
  {
    return paramGoogleApiClient.a(new TurnBasedMultiplayerImpl.9(this, paramInt, paramArrayOfInt));
  }
  
  public final PendingResult<TurnBasedMultiplayer.LoadMatchesResult> loadMatchesByStatus(GoogleApiClient paramGoogleApiClient, int[] paramArrayOfInt)
  {
    return loadMatchesByStatus(paramGoogleApiClient, 0, paramArrayOfInt);
  }
  
  public final void registerMatchUpdateListener(GoogleApiClient paramGoogleApiClient, OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener)
  {
    Games.c(paramGoogleApiClient).a(paramOnTurnBasedMatchUpdateReceivedListener);
  }
  
  public final PendingResult<TurnBasedMultiplayer.InitiateMatchResult> rematch(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new TurnBasedMultiplayerImpl.2(this, paramString));
  }
  
  public final PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient paramGoogleApiClient, String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
    return takeTurn(paramGoogleApiClient, paramString1, paramArrayOfByte, paramString2, null);
  }
  
  public final PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient paramGoogleApiClient, String paramString1, byte[] paramArrayOfByte, String paramString2, List<ParticipantResult> paramList)
  {
    if (paramList == null) {}
    for (paramList = null;; paramList = (ParticipantResult[])paramList.toArray(new ParticipantResult[paramList.size()])) {
      return takeTurn(paramGoogleApiClient, paramString1, paramArrayOfByte, paramString2, paramList);
    }
  }
  
  public final PendingResult<TurnBasedMultiplayer.UpdateMatchResult> takeTurn(GoogleApiClient paramGoogleApiClient, String paramString1, byte[] paramArrayOfByte, String paramString2, ParticipantResult... paramVarArgs)
  {
    return paramGoogleApiClient.b(new TurnBasedMultiplayerImpl.4(this, paramString1, paramArrayOfByte, paramString2, paramVarArgs));
  }
  
  public final void unregisterMatchUpdateListener(GoogleApiClient paramGoogleApiClient)
  {
    Games.c(paramGoogleApiClient).hd();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */