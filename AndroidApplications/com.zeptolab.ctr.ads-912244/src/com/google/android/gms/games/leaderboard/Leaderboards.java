package com.google.android.gms.games.leaderboard;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public interface Leaderboards {

    public static interface LeaderboardMetadataResult extends Releasable, Result {
        LeaderboardBuffer getLeaderboards();
    }

    public static interface LoadPlayerScoreResult extends Result {
        LeaderboardScore getScore();
    }

    public static interface LoadScoresResult extends Releasable, Result {
        Leaderboard getLeaderboard();

        LeaderboardScoreBuffer getScores();
    }

    public static interface SubmitScoreResult extends Releasable, Result {
        ScoreSubmissionData getScoreData();
    }

    Intent getAllLeaderboardsIntent(GoogleApiClient googleApiClient);

    Intent getLeaderboardIntent(GoogleApiClient googleApiClient, String str);

    PendingResult loadCurrentPlayerLeaderboardScore(GoogleApiClient googleApiClient, String str, int i, int i2);

    PendingResult loadLeaderboardMetadata(GoogleApiClient googleApiClient, String str, boolean z);

    PendingResult loadLeaderboardMetadata(GoogleApiClient googleApiClient, boolean z);

    PendingResult loadMoreScores(GoogleApiClient googleApiClient, LeaderboardScoreBuffer leaderboardScoreBuffer, int i, int i2);

    PendingResult loadPlayerCenteredScores(GoogleApiClient googleApiClient, String str, int i, int i2, int i3);

    PendingResult loadPlayerCenteredScores(GoogleApiClient googleApiClient, String str, int i, int i2, int i3, boolean z);

    PendingResult loadTopScores(GoogleApiClient googleApiClient, String str, int i, int i2, int i3);

    PendingResult loadTopScores(GoogleApiClient googleApiClient, String str, int i, int i2, int i3, boolean z);

    void submitScore(GoogleApiClient googleApiClient, String str, long j);

    void submitScore(GoogleApiClient googleApiClient, String str, long j, String str2);

    PendingResult submitScoreImmediate(GoogleApiClient googleApiClient, String str, long j);

    PendingResult submitScoreImmediate(GoogleApiClient googleApiClient, String str, long j, String str2);
}