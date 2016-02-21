package com.google.android.gms.games.achievement;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public interface Achievements {

    public static interface LoadAchievementsResult extends Releasable, Result {
        AchievementBuffer getAchievements();
    }

    public static interface UpdateAchievementResult extends Result {
        String getAchievementId();
    }

    Intent getAchievementsIntent(GoogleApiClient googleApiClient);

    void increment(GoogleApiClient googleApiClient, String str, int i);

    PendingResult incrementImmediate(GoogleApiClient googleApiClient, String str, int i);

    PendingResult load(GoogleApiClient googleApiClient, boolean z);

    void reveal(GoogleApiClient googleApiClient, String str);

    PendingResult revealImmediate(GoogleApiClient googleApiClient, String str);

    void setSteps(GoogleApiClient googleApiClient, String str, int i);

    PendingResult setStepsImmediate(GoogleApiClient googleApiClient, String str, int i);

    void unlock(GoogleApiClient googleApiClient, String str);

    PendingResult unlockImmediate(GoogleApiClient googleApiClient, String str);
}