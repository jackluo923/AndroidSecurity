package com.google.android.gms.games.multiplayer.turnbased;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import java.util.List;

public interface TurnBasedMultiplayer {

    public static interface CancelMatchResult extends Result {
        String getMatchId();
    }

    public static interface InitiateMatchResult extends Result {
        TurnBasedMatch getMatch();
    }

    public static interface LeaveMatchResult extends Result {
        TurnBasedMatch getMatch();
    }

    public static interface LoadMatchResult extends Result {
        TurnBasedMatch getMatch();
    }

    public static interface LoadMatchesResult extends Releasable, Result {
        LoadMatchesResponse getMatches();
    }

    public static interface UpdateMatchResult extends Result {
        TurnBasedMatch getMatch();
    }

    PendingResult acceptInvitation(GoogleApiClient googleApiClient, String str);

    PendingResult cancelMatch(GoogleApiClient googleApiClient, String str);

    PendingResult createMatch(GoogleApiClient googleApiClient, TurnBasedMatchConfig turnBasedMatchConfig);

    void declineInvitation(GoogleApiClient googleApiClient, String str);

    void dismissInvitation(GoogleApiClient googleApiClient, String str);

    void dismissMatch(GoogleApiClient googleApiClient, String str);

    PendingResult finishMatch(GoogleApiClient googleApiClient, String str);

    PendingResult finishMatch(GoogleApiClient googleApiClient, String str, byte[] bArr, List list);

    PendingResult finishMatch(GoogleApiClient googleApiClient, String str, byte[] bArr, ParticipantResult... participantResultArr);

    Intent getInboxIntent(GoogleApiClient googleApiClient);

    int getMaxMatchDataSize(GoogleApiClient googleApiClient);

    Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int i, int i2);

    Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int i, int i2, boolean z);

    PendingResult leaveMatch(GoogleApiClient googleApiClient, String str);

    PendingResult leaveMatchDuringTurn(GoogleApiClient googleApiClient, String str, String str2);

    PendingResult loadMatch(GoogleApiClient googleApiClient, String str);

    PendingResult loadMatchesByStatus(GoogleApiClient googleApiClient, int i, int[] iArr);

    PendingResult loadMatchesByStatus(GoogleApiClient googleApiClient, int[] iArr);

    void registerMatchUpdateListener(GoogleApiClient googleApiClient, OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener);

    PendingResult rematch(GoogleApiClient googleApiClient, String str);

    PendingResult takeTurn(GoogleApiClient googleApiClient, String str, byte[] bArr, String str2);

    PendingResult takeTurn(GoogleApiClient googleApiClient, String str, byte[] bArr, String str2, List list);

    PendingResult takeTurn(GoogleApiClient googleApiClient, String str, byte[] bArr, String str2, ParticipantResult... participantResultArr);

    void unregisterMatchUpdateListener(GoogleApiClient googleApiClient);
}